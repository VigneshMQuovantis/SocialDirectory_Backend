// <copyright file="IMyContactBL.cs" company="Quovantis Technologies">
//     IMyContactBL copyright tag.
// </copyright>

using CommonLayer.MyContactsModel;
using RepositoryLayer.Entities;

namespace BusinessLayer.Interfaces
{
    /// <summary>
    /// My Contact interface of business layer
    /// </summary>
    public interface IMyContactBL
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
