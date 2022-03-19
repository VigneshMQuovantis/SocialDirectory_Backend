using BusinessLayer.Interfaces;
using CommonLayer.MyContactsModel;
using CommonLayer.UserModels;
using RepositoryLayer.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.TestingServices
{
    public class TestingMyContactsBL : IMyContactBL
    {
        private readonly List<ContactEntities> _contactEntities;

        private readonly List<RegistrationModel> _entities;
        public TestingMyContactsBL()
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
                new RegistrationModel() { UserId = 5, Name = "Vivek", Gender = "Male", DateOfBirth = "11-04-1997",
                            EmailId = "vivek@gmail.com", Password = "vivek11", MobileNumber = "9674521548",
                            Interest = "Logistics", Location = "Chennai"}
            };

            _contactEntities = new List<ContactEntities>()
            {
                new ContactEntities() { UserId = 2, ContactId = 4},
                new ContactEntities() { UserId = 2, ContactId = 5}
            };
        }

        public GetMyContactsModel AddContact(long contactId, long jwtUserId)
        {
            var addContact = _entities.Where(e => e.UserId == jwtUserId && e.UserId == contactId);
            if (addContact != null)
            {
                if (jwtUserId != contactId)
                {
                    ContactEntities entity = new()
                    {
                        UserId = jwtUserId,
                        ContactId = contactId
                    };
                    _contactEntities.Add(entity);
                    var myContact = _entities.FirstOrDefault(e => e.UserId == contactId);
                    if (myContact != null)
                    {
                        GetMyContactsModel myContactModel = new()
                        {
                            UserId = jwtUserId,
                            ContactPersonId = myContact.UserId,
                            Name = myContact.Name,
                            EmailId = myContact.EmailId,
                            Gender = myContact.Gender,
                            DateOfBirth = myContact.DateOfBirth,
                            MobileNumber = myContact.MobileNumber,
                            Interest = myContact.Interest,
                            Location = myContact.Location
                        };
                        return myContactModel;
                    }
                }
            }
            return null;
        }

        public void DeleteContactWithContactId(ContactEntities contact, long jwtUserId)
        {
            var validUserId = _entities.Where(e => e.UserId == jwtUserId);
            if (validUserId != null)
            {
                _contactEntities.Remove(contact);
            }
        }

        public IEnumerable<GetMyContactsModel> GetContactsOfUser(long jwtUserId)
        {
            var validateUser = _entities.Where(e => e.UserId == jwtUserId);
            if (validateUser != null)
            {
                var result = (from user in _entities
                              join contact in _contactEntities on user.UserId equals contact.ContactId
                              where contact.UserId == jwtUserId
                              select new
                              {
                                  contact.ContactId,
                                  user.UserId,
                                  user.EmailId,
                                  user.Name,
                                  user.Gender,
                                  user.DateOfBirth,
                                  user.MobileNumber,
                                  user.Interest,
                                  user.Location

                              }).ToList();
                IList<GetMyContactsModel> userList = new List<GetMyContactsModel>();
                foreach (var contact in result)
                {
                    userList.Add(new GetMyContactsModel()
                    {
                        UserId = jwtUserId,
                        ContactPersonId = contact.UserId,
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

        public ContactEntities GetContactWithContactId(long contactId, long jwtUserId)
        {
            var contact = _entities.Where(e => e.UserId == jwtUserId);
            if (contact != null)
            {
                return _contactEntities.FirstOrDefault(e => e.UserId == jwtUserId && e.ContactId == contactId);
            }
            return null;
        }

        public IEnumerable<GetMyContactsModel> GetWithContactId(long contactId, long jwtUserId)
        {
            var validateUser = _entities.Where(e => e.UserId == jwtUserId);
            if (validateUser != null)
            {
                var result = (from user in _entities
                              join contact in _contactEntities on user.UserId equals contact.ContactId
                              where contact.UserId == jwtUserId && contact.ContactId == contactId
                              select new
                              {
                                  contact.ContactId,
                                  user.UserId,
                                  user.EmailId,
                                  user.Name,
                                  user.Gender,
                                  user.DateOfBirth,
                                  user.MobileNumber,
                                  user.Interest,
                                  user.Location

                              }).ToList();
                IList<GetMyContactsModel> userList = new List<GetMyContactsModel>();
                foreach (var contact in result)
                {
                    userList.Add(new GetMyContactsModel()
                    {
                        UserId = jwtUserId,
                        ContactPersonId = contact.UserId,
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
