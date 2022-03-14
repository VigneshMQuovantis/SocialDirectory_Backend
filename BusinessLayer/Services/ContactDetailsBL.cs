// <copyright file="ContactDetailsBL.cs" company="Quovantis Technologies">
//     ContactDetailsBL copyright tag.
// </copyright>

namespace BusinessLayer.Services
{
    using BusinessLayer.Interfaces;
    using CommonLayer.ContactDetailsModels;
    using RepositoryLayer.Entities;
    using RepositoryLayer.Intefaces;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Contact Details class for Bsuiness layer
    /// </summary>
    public class ContactDetailsBL : IContactDetailsBL
    {
        /// <summary>
        /// The user rl
        /// </summary>
        private readonly IContactDetailsRL contactDetailsRL;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserBL"/> class.
        /// </summary>
        /// <param name="userRl">The user rl.</param>
        public ContactDetailsBL(IContactDetailsRL contactDetailsRL)
        {
            this.contactDetailsRL = contactDetailsRL;
        }

        /// <summary>
        /// Gets all contacts.
        /// </summary>
        /// <returns>Get All Response from Repsitory layer</returns>
        /// <exception cref="NotImplementedException"></exception>
        public IEnumerable<GetAllContacts> GetAllContacts(long jwtUserId)
        {
            try
            {
                return this.contactDetailsRL.GetAllContacts(jwtUserId);
            }
            catch (Exception ex)
            {
                throw;
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
                return this.contactDetailsRL.GetContactsBySearch(searchParameters, jwtUserId);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
