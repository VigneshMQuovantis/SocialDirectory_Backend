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
        public IEnumerable<GetAllContacts> GetAllContacts()
        {
            try
            {
                var allUsers = this.context.UserTable.ToList();
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
    }
}
