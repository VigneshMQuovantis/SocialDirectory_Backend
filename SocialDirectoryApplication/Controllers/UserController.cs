﻿// <copyright file="UserController.cs" company="Quovantis Technologies">
//     UserController copyright tag.
// </copyright>

namespace SocialDirectoryApplication.Controllers
{
    using BusinessLayer.Interfaces;
    using CommonLayer.UserModels;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc;
    using RepositoryLayer.Entities;

    /// <summary>
    /// User Controller Class for Social Directory
    /// </summary>
    /// <seealso cref="Microsoft.AspNetCore.Mvc.ControllerBase" />
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        /// <summary>
        /// The user bl
        /// </summary>
        private readonly IUserBL userBL;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserController"/> class.
        /// </summary>
        /// <param name="userBL">The user bl.</param>
        public UserController(IUserBL userBL)
        {
            this.userBL = userBL;
        }

        /// <summary>
        /// Registrations the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        [HttpPost("register")]
        public IActionResult Registration(UserEntities model)
        {
            try
            {
                RegistrationResponseModel user = userBL.Registration(model);
                if (user == null)
                {
                    return NotFound(new { Success = false, message = "Details Already Present In Database. Try with different EmailId and Mobile Number" });
                }
                return Ok(new { Success = true, message = "Registration Successfull ", user });
            }
            catch (Exception ex)
            {
                return BadRequest(new { ex.Message }); 
            }
        }

        /// <summary>
        /// Logins the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns></returns>
        [HttpPost("login")]
        public IActionResult Login(LoginModel model)
        {
            try
            {
                LoginResponseModel credentials = userBL.Login(model);
                if (credentials == null)
                {
                    return NotFound(new { Success = false, message = "Email or Password Not Found" });
                }
                return Ok(new { Success = true, message = "Login Successful", credentials });
            }
            catch (Exception ex)
            {
                return BadRequest(new { ex.Message });
            }
        }
    }
}
