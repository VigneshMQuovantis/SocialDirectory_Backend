// <copyright file="GetContactWithContactIdModel.cs" company="Quovantis Technologies">
//     GetContactWithContactIdModel copyright tag.
// </copyright>

namespace CommonLayer.MyContactsModel
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Get contact with contact id model class
    /// </summary>
    public class GetContactWithContactIdModel
    {
        /// <summary>
        /// Gets or sets the user identifier.
        /// </summary>
        /// <value>
        /// The user identifier.
        /// </value>
        public long UserId { get; set; }

        /// <summary>
        /// Gets or sets the contact identifier.
        /// </summary>
        /// <value>
        /// The contact identifier.
        /// </value>
        public long ContactId { get; set; }
    }
}
