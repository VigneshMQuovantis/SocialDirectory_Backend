// <copyright file="LoginModel.cs" company="Quovantis Technologies">
//     LoginModel copyright tag.
// </copyright>

namespace CommonLayer.UserModels
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Login model class
    /// </summary>
    public class LoginModel
    {
        /// <summary>
        /// Gets or sets the email identifier.
        /// </summary>
        /// <value>
        /// The email identifier.
        /// </value>
        public string EmailId { get; set; }

        /// <summary>
        /// Gets or sets the password.
        /// </summary>
        /// <value>
        /// The password.
        /// </value>
        public string Password { get; set; }
    }
}
