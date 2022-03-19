using BusinessLayer.Interfaces;
using BusinessLayer.TestingServices;
using Microsoft.AspNetCore.Mvc;
using SocialDirectoryApplication.Controllers;
using Xunit;

namespace SocialDirectoryMyContactTesting
{
    public class MyContactsTesting
    {
        private readonly MyContactController controller;
        private readonly IMyContactBL service;

        public MyContactsTesting()
        {
            service = new TestingMyContactsBL();
            controller = new MyContactController(service);
        }

        [Fact]
        public void AddContactTesting()
        {

            var contactAdded = controller.AddContact(3);

            Assert.IsType<OkObjectResult>(contactAdded);
        }

        [Fact]
        public void GetContactTesting()
        {

            var getContacts = controller.GetContactsOfUsers();

            Assert.IsType<OkObjectResult>(getContacts);
        }

        [Fact]
        public void DeleteContactTesting()
        {

            var deleteContact = controller.DeleteContactWithContactId(4);

            Assert.IsType<OkObjectResult>(deleteContact);
        }

        [Fact]
        public void GetContactWithContactIdTesting()
        {

            var getContacts = controller.GetWithContactId(4);

            Assert.IsType<OkObjectResult>(getContacts);
        }
    }
}