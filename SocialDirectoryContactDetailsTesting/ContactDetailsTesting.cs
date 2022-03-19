using BusinessLayer.Interfaces;
using BusinessLayer.TestingServices;
using Microsoft.AspNetCore.Mvc;
using SocialDirectoryApplication.Controllers;
using Xunit;

namespace SocialDirectoryContactDetailsTesting
{
    public class ContactDetailsTesting
    {
        private readonly ContactDetailsController controller;
        private readonly IContactDetailsBL service;

        public ContactDetailsTesting()
        {
            service = new TestingContactDetailsBL();
            controller = new ContactDetailsController(service);
        }

        [Fact]
        public void GetAllContactsTesting()
        {
            var contacts = controller.GetAllContacts();

            Assert.IsType<OkObjectResult>(contacts);
        }

        [Fact]
        public void SearchContactsByNameTesing()
        {
            var contacts = controller.GetContactsBySearch("Akash");

            Assert.IsType<OkObjectResult>(contacts);
        }

        [Fact]
        public void SearchContactsByGenderTesing()
        {
            var contacts = controller.GetContactsBySearch("Male");

            Assert.IsType<OkObjectResult>(contacts);
        }

        [Fact]
        public void SearchContactsByDateOfBirthTesting()
        {
            var contacts = controller.GetContactsBySearch("11-08-1998");

            Assert.IsType<OkObjectResult>(contacts);
        }

        [Fact]
        public void SearchContactsByMobileNumberTesing()
        {
            var contacts = controller.GetContactsBySearch("7845821546");

            Assert.IsType<OkObjectResult>(contacts);
        }

        [Fact]
        public void SearchContactsByemailIdTesing()
        {
            var contacts = controller.GetContactsBySearch("akash@gmail.com");

            Assert.IsType<OkObjectResult>(contacts);
        }

        [Fact]
        public void SearchContactsByInterestTesing()
        {
            var contacts = controller.GetContactsBySearch("Frontend Development");

            Assert.IsType<OkObjectResult>(contacts);
        }

        [Fact]
        public void SearchContactsByLocation()
        {
            var contacts = controller.GetContactsBySearch("Dindigul");

            Assert.IsType<OkObjectResult>(contacts);
        }
    }
}