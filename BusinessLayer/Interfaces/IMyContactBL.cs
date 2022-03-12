// <copyright file="IMyContactBL.cs" company="Quovantis Technologies">
//     IMyContactBL copyright tag.
// </copyright>

using CommonLayer.MyContactsModel;

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
    }
}
