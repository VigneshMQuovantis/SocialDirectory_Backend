// <copyright file="MyContactBL.cs" company="Quovantis Technologies">
//     MyContactBL copyright tag.
// </copyright>

namespace BusinessLayer.Services
{
    using BusinessLayer.Interfaces;
    using CommonLayer.MyContactsModel;
    using RepositoryLayer.Intefaces;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// My Contact Class for Business layer
    /// </summary>
    public class MyContactBL : IMyContactBL
    {
        /// <summary>
        /// The user rl
        /// </summary>
        private readonly IMyContactRL myContactRL;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserBL"/> class.
        /// </summary>
        /// <param name="userRl">The user rl.</param>
        public MyContactBL(IMyContactRL myContactRL)
        {
            this.myContactRL = myContactRL;
        }

        /// <summary>
        /// Adds the contact.
        /// </summary>
        /// <param name="contactId">The contact identifier.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        public GetMyContactsModel AddContact(long contactId, long jwtUserId)
        {
            try
            {
                return this.myContactRL.AddContact(contactId, jwtUserId);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
