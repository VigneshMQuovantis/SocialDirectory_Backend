﻿// <copyright file="IUserRL.cs" company="Quovantis Technologies">
//     IUserRL copyright tag.
// </copyright>

namespace RepositoryLayer.Intefaces
{
    using CommonLayer.UserModels;
    using RepositoryLayer.Entities;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// User interface for Repository Layer
    /// </summary>
    public interface IUserRL
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

        /// <summary>
        /// Updates the profile.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        UpdateResponseModel UpdateProfile(UpdateModel model, long jwtUserId);
    }
}
