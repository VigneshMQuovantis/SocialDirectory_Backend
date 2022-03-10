// <copyright file="IContactDetailsBL.cs" company="Quovantis Technologies">
//     IContactDetailsBL copyright tag.
// </copyright>

namespace BusinessLayer.Interfaces
{
    using CommonLayer.ContactDetailsModels;
    using RepositoryLayer.Entities;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Contact Details Interface for Business layer
    /// </summary>
    public interface IContactDetailsBL
    {
        /// <summary>
        /// Gets all contacts.
        /// </summary>
        /// <returns></returns>
        IEnumerable<GetAllContacts> GetAllContacts();
    }
}
