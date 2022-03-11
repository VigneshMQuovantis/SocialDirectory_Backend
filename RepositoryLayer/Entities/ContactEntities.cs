// <copyright file="ContactEntities.cs" company="Quovantis Technologies">
//    ContactEntities copyright tag.
// </copyright>

namespace RepositoryLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Contact table entities
    /// </summary>
    public class ContactEntities
    {
        /// <summary>
        /// Gets or sets the user identifier.
        /// </summary>
        /// <value>
        /// The user identifier.
        /// </value>
        public long UserId { get; set; }

        /// <summary>
        /// Gets or sets the user.
        /// </summary>
        /// <value>
        /// The user.
        /// </value>
        public UserEntities User { get; set; }

        /// <summary>
        /// Gets or sets the contact identifier.
        /// </summary>
        /// <value>
        /// The contact identifier.
        /// </value>
        public long ContactId { get; set; }

        /// <summary>
        /// Gets or sets the user friend.
        /// </summary>
        /// <value>
        /// The user friend.
        /// </value>
        public UserEntities UserFriend { get; set; }

    }
}
