// <copyright file="ContactDetailsRL.cs" company="Quovantis Technologies">
//    ContactDetailsRL copyright tag.
// </copyright>

namespace RepositoryLayer.Services
{
    using CommonLayer.ContactDetailsModels;
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
    /// Contact Details Class for Repository Layer
    /// </summary>
    public class ContactDetailsRL : IContactDetailsRL
    {
        /// <summary>
        /// The context
        /// </summary>
        public SocialDirectoryContext context;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserRL"/> class.
        /// </summary>
        /// <param name="config">The configuration.</param>
        public ContactDetailsRL(SocialDirectoryContext context)
        {
            this.context = context;
        }

        /// <summary>
        /// Gets all contacts.
        /// </summary>
        /// <returns>Get all response </returns>
        /// <exception cref="RepositoryLayer.ExceptionHandling.CustomException">Cannot get users due to some error</exception>
        public IEnumerable<GetAllContacts> GetAllContacts(long jwtUserId)
        {
            try
            {
                var allUsers = this.context.UserTable.Where(e=> e.UserId != jwtUserId);
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
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Cannot get users due to some error");
            }
        }

        /// <summary>
        /// Gets the contacts by search.
        /// </summary>
        /// <param name="searchParameters">The search parameters.</param>
        /// <returns></returns>
        public IEnumerable<GetAllContacts> GetContactsBySearch(string searchParameters, long jwtUserId)
        {
            try
            {
                var allUsers = this.context.UserTable.Where(e=> e.EmailId == searchParameters && e.UserId != jwtUserId || e.Name == searchParameters && e.UserId != jwtUserId || e.Gender == searchParameters && e.UserId != jwtUserId ||
                               e.DateOfBirth == searchParameters && e.UserId != jwtUserId || e.MobileNumber == searchParameters && e.UserId != jwtUserId || e.Interest == searchParameters && e.UserId != jwtUserId || e.Location == searchParameters && e.UserId != jwtUserId).ToList();
                if(allUsers.Count > 0)
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
            catch (Exception ex)
            {
                throw new CustomException(HttpStatusCode.BadRequest, "Cannot get users due to some error");
            }
        }
    }
}
