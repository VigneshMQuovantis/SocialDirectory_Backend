using BusinessLayer.Interfaces;
using CommonLayer.ContactDetailsModels;
using CommonLayer.UserModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.TestingServices
{
    public class TestingContactDetailsBL : IContactDetailsBL
    {
        private readonly List<RegistrationModel> _entities;
        public TestingContactDetailsBL()
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

        public IEnumerable<GetAllContacts> GetAllContacts(long jwtUserId)
        {
            var allUsers = _entities.Where(e => e.UserId != jwtUserId);
            IList<GetAllContacts> userList = new List<GetAllContacts>();
            foreach (var contact in allUsers)
            {
                userList.Add(new GetAllContacts()
                {
                    UserId = contact.UserId,
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

        public IEnumerable<GetAllContacts> GetContactsBySearch(string searchParameters, long jwtUserId)
        {
            var allUsers = _entities.Where(e => e.EmailId == searchParameters || e.Name == searchParameters || e.Gender == searchParameters ||
                               e.DateOfBirth == searchParameters || e.MobileNumber == searchParameters || e.Interest == searchParameters || e.Location == searchParameters).ToList();
            if (allUsers.Count > 0)
            {
                IList<GetAllContacts> userList = new List<GetAllContacts>();
                foreach (var contact in allUsers)
                {
                    userList.Add(new GetAllContacts()
                    {
                        UserId = contact.UserId,
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
    }
}
