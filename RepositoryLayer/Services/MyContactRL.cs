﻿// <copyright file="MyContactRL.cs" company="Quovantis Technologies">
//    MyContactRL copyright tag.
// </copyright>

namespace RepositoryLayer.Services
{
    using CommonLayer.MyContactsModel;
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
    /// My contact class for repository layer
    /// </summary>
    public class MyContactRL : IMyContactRL
    {
        /// <summary>
        /// The context
        /// </summary>
        public SocialDirectoryContext context;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserRL"/> class.
        /// </summary>
        /// <param name="config">The configuration.</param>
        public MyContactRL(SocialDirectoryContext context)
        {
            this.context = context;
        }

        /// <summary>
        /// Adds the contact.
        /// </summary>
        /// <param name="contactId">The contact identifier.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        /// <exception cref="RepositoryLayer.ExceptionHandling.CustomException">Contact already added to your list</exception>
        public GetMyContactsModel AddContact(long contactId, long jwtUserId)
        {
            try
            {
                var addContact = this.context.UserTable.Where(e => e.UserId == jwtUserId && e.UserId == contactId);
                if (addContact != null)
                {
                    ContactEntities entities = new()
                    {
                        UserId = jwtUserId,
                        ContactId = contactId
                    };
                    this.context.Add(entities);
                    int result = this.context.SaveChanges();
                    if (result > 0)
                    {
                        var myContact = this.context.UserTable.FirstOrDefault(e => e.UserId == contactId);
                        if (myContact != null)
                        {
                            GetMyContactsModel myContactModel = new()
                            {
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
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Contact already added to your list");
            }
        }

        /// <summary>
        /// Gets the contact with contact identifier.
        /// </summary>
        /// <param name="contactId">The contact identifier.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public ContactEntities GetContactWithContactId(long contactId, long jwtUserId)
        {
            try
            {
                var contact = this.context.UserTable.Where(e => e.UserId == jwtUserId);
                if (contact != null)
                {
                    return this.context.ContactTable.FirstOrDefault(e => e.UserId == jwtUserId && e.ContactId == contactId);
                }
                return null;
            }
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Cannot get users due to some error");
            }
        }

        /// <summary>
        /// Deletes the contact with contact identifier.
        /// </summary>
        /// <param name="contact">The contact.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        public void DeleteContactWithContactId(ContactEntities contact, long jwtUserId)
        {
            try
            {
                var validUserId = this.context.UserTable.Where(e => e.UserId == jwtUserId);
                if (validUserId != null)
                {
                    this.context.ContactTable.Remove(contact);
                    this.context.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.NotFound, "No lable found to delete");
            }
        }
    }
}
