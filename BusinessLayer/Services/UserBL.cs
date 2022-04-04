// <copyright file="UserBL.cs" company="Quovantis Technologies">
//     UserBL copyright tag.
// </copyright>

namespace BusinessLayer.Services
{
    using BusinessLayer.Interfaces;
    using CommonLayer.UserModels;
    using RepositoryLayer.Entities;
    using RepositoryLayer.Intefaces;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// User class for Business Layer
    /// </summary>
    public class UserBL : IUserBL
    {
        /// <summary>
        /// The user rl
        /// </summary>
        private readonly IUserRL userRL;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserBL"/> class.
        /// </summary>
        /// <param name="userRl">The user rl.</param>
        public UserBL(IUserRL userRl)
        {
            this.userRL = userRl;
        }

        /// <summary>
        /// Registrations the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns>Registration response from respository layer</returns>
        public RegistrationResponseModel Registration(RegistrationModel model)
        {
            try
            {
                return this.userRL.Registration(model);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// Logins the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns>Login response from repository layer</returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public LoginResponseModel Login(LoginModel model)
        {
            try
            {
                return this.userRL.Login(model);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// Mies the profile.
        /// </summary>
        /// <param name="jwtUserId">The JWT user identifier.</param>
        /// <returns></returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public IEnumerable<MyProfileModel> MyProfile(long jwtUserId)
        {
            try
            {
                return this.userRL.MyProfile(jwtUserId);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// Updates the profile.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns></returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public UpdateResponseModel UpdateProfile(UpdateModel model, long jwtUserId)
        {
            try
            {
                return this.userRL.UpdateProfile(model, jwtUserId);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
