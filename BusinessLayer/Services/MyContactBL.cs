// <copyright file="MyContactBL.cs" company="Quovantis Technologies">
//     MyContactBL copyright tag.
// </copyright>

namespace BusinessLayer.Services
{
    using BusinessLayer.Interfaces;
    using CommonLayer.MyContactsModel;
    using RepositoryLayer.Entities;
    using RepositoryLayer.Intefaces;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// My Contact Class for Business layer
    /// </summary>
    public class MyContactBL : IMyContactBL
    {
        /// <summary>
        /// The user rl
        /// </summary>
        private readonly IMyContactRL myContactRL;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserBL"/> class.
        /// </summary>
        /// <param name="userRl">The user rl.</param>
        public MyContactBL(IMyContactRL myContactRL)
        {
            this.myContactRL = myContactRL;
        }

        /// <summary>
        /// Adds the contact.
        /// </summary>
        /// <param name="contactId">The contact identifier.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        public GetMyContactsModel AddContact(long contactId, long jwtUserId)
        {
            try
            {
                return this.myContactRL.AddContact(contactId, jwtUserId);
            }
            catch (Exception ex)
            {
                throw;
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
                this.myContactRL.DeleteContactWithContactId(contact, jwtUserId);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// Gets the contact with contact identifier.
        /// </summary>
        /// <param name="contactId">The contact identifier.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        public ContactEntities GetContactWithContactId(long contactId, long jwtUserId)
        {
            try
            {
                return this.myContactRL.GetContactWithContactId(contactId, jwtUserId);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
