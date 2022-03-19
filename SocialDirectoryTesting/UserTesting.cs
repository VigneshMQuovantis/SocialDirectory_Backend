using BusinessLayer.Interfaces;
using BusinessLayer.TestingServices;
using CommonLayer.UserModels;
using Microsoft.AspNetCore.Mvc;
using SocialDirectoryApplication.Controllers;
using Xunit;

namespace SocialDirectoryTesting
{
    public class UserTesting
    {
        private readonly UserController controller;
        private readonly IUserBL service;

        public UserTesting()
        {
            service = new TestingUserBL();
            controller = new UserController(service);
        }

        [Fact]
        public void RegistrationTesting()
        {
            RegistrationModel model = new RegistrationModel();
            model.UserId = 1;
            model.Name = "Vignesh M";
            model.Gender = "Male";
            model.DateOfBirth = "05-12-1996";
            model.EmailId = "vignesh.m@quovnatis.com";
            model.Password = "vicky5";
            model.MobileNumber = "8974521358";
            model.Interest = "Software Engineering";
            model.Location = "Trichy";

            var created = controller.Registration(model);

            Assert.IsType<OkObjectResult>(created);
        }

        [Fact]
        public void LoginTesting()
        {
            LoginModel model = new LoginModel();
            model.EmailId = "praveen@gmail.com";
            model.Password = "praveen31";

            var logged = controller.Login(model);

            Assert.IsType<OkObjectResult>(logged);
        }
    }
}