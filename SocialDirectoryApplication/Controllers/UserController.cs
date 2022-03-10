// <copyright file="UserController.cs" company="Quovantis Technologies">
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
        [HttpPost("signup")]
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
    }
}
