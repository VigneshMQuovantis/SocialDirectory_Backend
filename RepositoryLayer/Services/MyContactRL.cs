// <copyright file="MyContactRL.cs" company="Quovantis Technologies">
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
    }
}
