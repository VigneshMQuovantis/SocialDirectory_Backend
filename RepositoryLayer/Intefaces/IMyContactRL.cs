// <copyright file="IMyContactRl.cs" company="Quovantis Technologies">
//     IMyContactRL copyright tag.
// </copyright>

namespace RepositoryLayer.Intefaces
{
    using CommonLayer.MyContactsModel;
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
    }
}
