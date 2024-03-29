﻿// <copyright file="UserRL.cs" company="Quovantis Technologies">
//    UserRL copyright tag.
// </copyright>

namespace RepositoryLayer.Services
{
    using CommonLayer.UserModels;
    using Microsoft.Extensions.Configuration;
    using Microsoft.IdentityModel.Tokens;
    using RepositoryLayer.Context;
    using RepositoryLayer.Entities;
    using RepositoryLayer.ExceptionHandling;
    using RepositoryLayer.Intefaces;
    using System;
    using System.Collections.Generic;
    using System.IdentityModel.Tokens.Jwt;
    using System.Linq;
    using System.Net;
    using System.Security.Claims;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// User class for Repository Layer
    /// </summary>
    /// <seealso cref="RepositoryLayer.Intefaces.IUserRL" />
    public class UserRL : IUserRL
    {
        /// <summary>
        /// The context
        /// </summary>
        public SocialDirectoryContext context;

        /// <summary>
        /// The configuration
        /// </summary>
        private readonly IConfiguration config;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserRL"/> class.
        /// </summary>
        /// <param name="config">The configuration.</param>
        public UserRL(IConfiguration config, SocialDirectoryContext context)
        {
            this.config = config;
            this.context = context;
        }

        /// <summary>
        /// Password encryption class
        /// </summary>
        /// <param name="password"></param>
        /// <returns>Returns encrypted password</returns>
        /// <exception cref="CustomException"></exception>
        public static string EncryptedPassword(string password)
        {
            try
            {
                byte[] encptPass = new byte[password.Length];
                encptPass = Encoding.UTF8.GetBytes(password);
                string encrypted = Convert.ToBase64String(encptPass);
                return encrypted;
            }
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Password missing for encryption");
            }
        }

        /// <summary>
        /// JWTs the token generate.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <param name="userId">The user identifier.</param>
        /// <returns>Json Web Token</returns>
        public string JwtTokenGenerate(string email, long userId)
        {
            try
            {
                var loginTokenHandler = new JwtSecurityTokenHandler();
                var loginTokenKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(this.config[("Jwt:key")]));
                var loginTokenDescriptor = new SecurityTokenDescriptor
                {
                    Subject = new ClaimsIdentity(new Claim[]
                    {
                        new Claim(ClaimTypes.Email, email),
                        new Claim("UserId", userId.ToString())
                    }),
                    Expires = DateTime.UtcNow.AddMinutes(15),
                    SigningCredentials = new SigningCredentials(loginTokenKey, SecurityAlgorithms.HmacSha256Signature)
                };
                var token = loginTokenHandler.CreateToken(loginTokenDescriptor);
                return loginTokenHandler.WriteToken(token);
            }
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Cannot generate json web token since claims not added");
            }
        }

        /// <summary>
        /// User Registration of repository layer
        /// </summary>
        /// <param name="model"></param>
        /// <returns>Registration response</returns>
        /// <exception cref="CustomException"></exception>
        public RegistrationResponseModel Registration(RegistrationModel  model)
        {
            try
            {
                var RegistrationValidation = this.context.UserTable.FirstOrDefault(e => e.EmailId == model.EmailId && e.MobileNumber == model.MobileNumber) ;
                if (RegistrationValidation != null)
                {
                    return null;
                }
                UserEntities user = new()
                {
                    Name = model.Name,
                    EmailId = model.EmailId,
                    Gender = model.Gender,
                    DateOfBirth = model.DateOfBirth,
                    MobileNumber = model.MobileNumber,
                    Password = EncryptedPassword(model.Password),
                    Interest = model.Interest,
                    Location = model.Location,
                };
                this.context.Add(user);
                this.context.SaveChanges();
                RegistrationResponseModel response = new()
                {
                    Name = model.Name,
                    EmailId = model.EmailId,
                    Gender = model.Gender,
                    DateOfBirth = model.DateOfBirth,  
                    MobileNumber = model.MobileNumber,
                    Interest = model.Interest,
                    Location = model.Location
                };
                return response;
            }
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Details Missing");
            }
        }

        /// <summary>
        /// Logins the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns></returns>
        /// <exception cref="RepositoryLayer.ExceptionHandling.CustomException">User Credentiatials wrong</exception>
        public LoginResponseModel Login(LoginModel model)
        {
            try
            {
                var loginValidation = this.context.UserTable.FirstOrDefault(e => e.EmailId == model.EmailId && e.Password == EncryptedPassword(model.Password));
                if (loginValidation != null)
                {
                    var token = this.JwtTokenGenerate(model.EmailId, loginValidation.UserId);
                    LoginResponseModel response = new()
                    {
                        UserId = loginValidation.UserId,
                        Name = loginValidation.Name,
                        EmailId = loginValidation.EmailId,
                        DateOfBirth = loginValidation.DateOfBirth,
                        Gender = loginValidation.Gender,
                        MobileNumber = loginValidation.MobileNumber,    
                        Interest = loginValidation.Interest,
                        Location = loginValidation.Location,
                        JwtToken = token
                    };
                    return response;
                }
                return null;
            }
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.Unauthorized, "User Credentiatials wrong");
            }
        }

        /// <summary>
        /// Mies the profile.
        /// </summary>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public IEnumerable<MyProfileModel> MyProfile(long jwtUserId)
        {
            try
            {
                var profile = this.context.UserTable.Where(e => e.UserId == jwtUserId);
                if (profile != null)
                {
                    IList<MyProfileModel> userList = new List<MyProfileModel>();
                    foreach (var contact in profile)
                    {
                        userList.Add(new MyProfileModel()
                        {
                            Name = contact.Name,
                            EmailId = contact.EmailId,
                            Gender = contact.Gender,
                            DateOfBirth = contact.DateOfBirth,
                            MobileNumber = contact.MobileNumber,
                            Interest = contact.Interest,
                            Location = contact.Location
                        });
                    }
                    return userList;
                }
                return null;
            }
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Cannot get users due to some error");
            }
        }

        /// <summary>
        /// Updates the profile.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public UpdateResponseModel UpdateProfile(UpdateModel model, long jwtUserId)
        {
            try
            {
                var UpdateValidation = this.context.UserTable.FirstOrDefault(e => e.UserId == jwtUserId);
                if (UpdateValidation != null)
                {
                    UpdateValidation.Name = model.Name;
                    UpdateValidation.EmailId = model.EmailId;   
                    UpdateValidation.Gender = model.Gender;
                    UpdateValidation.DateOfBirth = model.DateOfBirth;
                    UpdateValidation.MobileNumber = model.MobileNumber;
                    UpdateValidation.Interest = model.Interest;
                    UpdateValidation.Location = model.Location;

                    this.context.SaveChanges();
                }
                
                UpdateResponseModel response = new()
                {
                    Name = model.Name,
                    EmailId = model.EmailId,
                    Gender = model.Gender,
                    DateOfBirth = model.DateOfBirth,
                    MobileNumber = model.MobileNumber,
                    Interest = model.Interest,
                    Location = model.Location
                };
                return response;
            }
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Details Missing");
            }
        }
    }
}
