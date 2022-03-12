// <copyright file="IMyContactRl.cs" company="Quovantis Technologies">
//     IMyContactRL copyright tag.
// </copyright>

namespace RepositoryLayer.Intefaces
{
    using CommonLayer.MyContactsModel;
    using RepositoryLayer.Entities;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// My contact interface for repository layer
    /// </summary>
    public interface IMyContactRL
    {
        /// <summary>
        /// Adds the contact.
        /// </summary>
        /// <param name="contactId">The contact identifier.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        GetMyContactsModel AddContact(long contactId, long jwtUserId);

        /// <summary>
        /// Gets the contact with contact identifier.
        /// </summary>
        /// <param name="contactId">The contact identifier.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        ContactEntities GetContactWithContactId(long contactId, long jwtUserId);

        /// <summary>
        /// Deletes the contact with contact identifier.
        /// </summary>
        /// <param name="contact">The contact.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        void DeleteContactWithContactId(ContactEntities contact, long jwtUserId);

        /// <summary>
        /// Gets the contacts of user.
        /// </summary>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        IEnumerable<GetMyContactsModel> GetContactsOfUser(long jwtUserId);
    }
}
