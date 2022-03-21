// <copyright file="ContactDetailsController.cs" company="Quovantis Technologies">
//     ContactDetailsController copyright tag.
// </copyright>

namespace SocialDirectoryApplication.Controllers
{
    using BusinessLayer.Interfaces;
    using CommonLayer.ContactDetailsModels;
    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc;
    using RepositoryLayer.Entities;

    /// <summary>
    /// Contact Details Controller
    /// </summary>
    /// <seealso cref="Microsoft.AspNetCore.Mvc.ControllerBase" />
    [Route("api/[controller]")]
    [ApiController]
    public class ContactDetailsController : ControllerBase
    {
        /// <summary>
        /// The contact details bl
        /// </summary>
        private readonly IContactDetailsBL contactDetailsBL;

        public readonly ILogger<UserController> logger;

        /// <summary>
        /// Initializes a new instance of the <see cref="ContactDetailsController"/> class.
        /// </summary>
        /// <param name="contactDetailsBL">The contact details bl.</param>
        public ContactDetailsController(IContactDetailsBL contactDetailsBL, ILogger<UserController> logger)
        {
            this.contactDetailsBL = contactDetailsBL;
            this.logger = logger;
        }

        /// <summary>
        /// Gets all contacts.
        /// </summary>
        /// <returns></returns>
        [Authorize]
        [HttpGet("allContacts")]
        public IActionResult GetAllContacts()
        {
            try
            {
                long jwtUserId = Convert.ToInt32(User.Claims.FirstOrDefault(e => e.Type == "UserId").Value);
                IEnumerable<GetAllContacts> contacts = contactDetailsBL.GetAllContacts(jwtUserId);
                if (contacts == null)
                {
                    return BadRequest(new { Success = false, message = "There are no user in database " });
                }
                return Ok(new { Success = true, message = "Retrived All Users In DataBase ", contacts });
            }
            catch (Exception ex)
            {
                return BadRequest(new { ex.Message });
                this.logger.Log(LogLevel.Error, ex.Message, ex, ex.Message, null);
            }
        }

        /// <summary>
        /// Gets the contacts by search.
        /// </summary>
        /// <param name="searchParameters">The search parameters.</param>
        /// <returns></returns>
        [Authorize]
        [HttpGet("{searchParameters}")]
        public IActionResult GetContactsBySearch(string searchParameters)
        {
            try
            {
                long jwtUserId = Convert.ToInt32(User.Claims.FirstOrDefault(e => e.Type == "UserId").Value);
                IEnumerable<GetAllContacts> contacts = contactDetailsBL.GetContactsBySearch(searchParameters, jwtUserId);
                if (contacts == null)
                {
                    return NotFound(new { Success = false, message = "No contacts with search parameters" });
                }
                return Ok(new { Success = true, message = "Retrived contacts with search parameters ", contacts });
            }
            catch (Exception ex)
            {
                return BadRequest(new { ex.Message });
                this.logger.Log(LogLevel.Error, ex.Message, ex, ex.Message, null);
            }
        }
    }
}
