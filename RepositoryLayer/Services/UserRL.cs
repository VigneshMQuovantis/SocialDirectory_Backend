// <copyright file="UserRL.cs" company="Quovantis Technologies">
//    UserRL copyright tag.
// </copyright>

namespace RepositoryLayer.Services
{
    using CommonLayer.UserModels;
    using Microsoft.Extensions.Configuration;
    using RepositoryLayer.Context;
    using RepositoryLayer.Entities;
    using RepositoryLayer.ExceptionHandling;
    using RepositoryLayer.Intefaces;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// User class for Repository Layer
    /// </summary>
    /// <seealso cref="RepositoryLayer.Intefaces.IUserRL" />
    public class UserRL : IUserRL
    {
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
        /// <returns></returns>
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
        /// User Registration of repository layer
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        /// <exception cref="CustomException"></exception>
        public RegistrationResponseModel Registration(UserEntities model)
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
    }
}
