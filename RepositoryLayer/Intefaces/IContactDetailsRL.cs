// <copyright file="IContactDetailsRL.cs" company="Quovantis Technologies">
//     IContactDetailsRL copyright tag.
// </copyright>

namespace RepositoryLayer.Intefaces
{
    using CommonLayer.ContactDetailsModels;
    using RepositoryLayer.Entities;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Contact Details Interface for Repository Layer
    /// </summary>
    public interface IContactDetailsRL
    {
        /// <summary>
        /// Gets all contacts.
        /// </summary>
        /// <returns></returns>
        IEnumerable<GetAllContacts> GetAllContacts(long jwtUserId);

        /// <summary>
        /// Gets the contacts by search.
        /// </summary>
        /// <param name="searchParameters">The search parameters.</param>
        /// <returns></returns>
        IEnumerable<GetAllContacts> GetContactsBySearch(string searchParameters, long jwtUserId);
    }
}
