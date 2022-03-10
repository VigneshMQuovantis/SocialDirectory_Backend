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

        public UserBL(IUserRL userRl)
        {
            this.userRL = userRl;
        }

        /// <summary>
        /// Registrations the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns>Registration response from respository layer</returns>
        public RegistrationResponseModel Registration(UserEntities model)
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
    }
}
