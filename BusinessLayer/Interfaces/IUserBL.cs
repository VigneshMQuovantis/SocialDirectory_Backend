// <copyright file="IUserBL.cs" company="Quovantis Technologies">
//     IUserBL copyright tag.
// </copyright>

namespace BusinessLayer.Interfaces
{
    using CommonLayer.UserModels;
    using RepositoryLayer.Entities;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// User interface for Business Layer
    /// </summary>
    public interface IUserBL
    {
        /// <summary>
        /// Registrations the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns></returns>
        RegistrationResponseModel Registration(RegistrationModel model);

        /// <summary>
        /// Logins the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns></returns>
        LoginResponseModel Login(LoginModel model);

        /// <summary>
        /// Mies the profile.
        /// </summary>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        IEnumerable<MyProfileModel> MyProfile(long jwtUserId);
    }
}
