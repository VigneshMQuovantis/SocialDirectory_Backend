using BusinessLayer.Interfaces;
using CommonLayer.UserModels;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.TestingServices
{
    public class TestingUserBL : IUserBL
    {
        private readonly List<RegistrationModel> _entities;
        public TestingUserBL()
        {
            _entities = new List<RegistrationModel>()
            {
                new RegistrationModel() { UserId = 2, Name = "Praveen M", Gender = "Male", DateOfBirth = "31-12-1999",
                            EmailId = "praveen@gmail.com", Password = "praveen31", MobileNumber = "6897452158", 
                            Interest = "Information Technology", Location = "Trichy"},
                new RegistrationModel() { UserId = 3, Name = "Akash", Gender = "Male", DateOfBirth = "11-08-1998",
                            EmailId = "akash@gmail.com", Password = "akash11", MobileNumber = "7845821546",
                            Interest = "Frontend Development", Location = "Dindigul"},
                new RegistrationModel() { UserId = 4, Name = "Azhar", Gender = "Male", DateOfBirth = "16-12-1997",
                            EmailId = "azhar@gmail.com", Password = "azhar16", MobileNumber = "8897452158",
                            Interest = "Automation Testing", Location = "Chennai"},
            };
        }

        public string JwtTokenGenerate(string email, long userId)
        {
            var loginTokenHandler = new JwtSecurityTokenHandler();
            var loginTokenKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes("MySecreteKey:Vignesh0512"));
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

        public RegistrationResponseModel Registration(RegistrationModel model)
        {
            _entities.Add(model);
            RegistrationResponseModel response = new()
            {
                Name = model.Name,
                Gender = model.Gender,
                DateOfBirth = model.DateOfBirth,
                EmailId = model.EmailId,
                MobileNumber = model.MobileNumber,
                Interest = model.Interest,
                Location = model.Location
            };
            return response;
        }

        public LoginResponseModel Login(LoginModel model)
        {
            var loginValidation = _entities.FirstOrDefault(e => e.EmailId == model.EmailId && e.Password == model.Password);
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

        public IEnumerable<MyProfileModel> MyProfile(long jwtUserId)
        {
            throw new NotImplementedException();
        }
    }
}
