// <copyright file="CustomException.cs" company="Quovantis Technologies">
//     CustomException copyright tag.
// </copyright>

namespace RepositoryLayer.ExceptionHandling
{
    using System;
    using System.Collections.Generic;
    using System.Globalization;
    using System.Linq;
    using System.Net;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Custom Exception Class
    /// </summary>
    /// <seealso cref="System.Exception" />
    public class CustomException : Exception
    {
        /// <summary>
        /// <summary>
        /// Gets the status.
        /// </summary>
        /// <value>
        /// The status.
        /// </value>
        public HttpStatusCode Status { get; private set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="CustomException"/> class.
        /// </summary>
        /// <param name="status">The status.</param>
        /// <param name="msg">The MSG.</param>
        public CustomException(HttpStatusCode status, string msg) : base(msg)
        {
            Status = status;
        }
    }
}
