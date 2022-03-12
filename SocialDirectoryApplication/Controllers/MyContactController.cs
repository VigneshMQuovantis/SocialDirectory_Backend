// <copyright file="MyContactController.cs" company="Quovantis Technologies">
//     MyContactController copyright tag.
// </copyright>

namespace SocialDirectoryApplication.Controllers
{
    using BusinessLayer.Interfaces;
    using CommonLayer.MyContactsModel;
    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc;

    /// <summary>
    /// My Contact Controller Class
    /// </summary>
    /// <seealso cref="Microsoft.AspNetCore.Mvc.ControllerBase" />
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class MyContactController : ControllerBase
    {
        /// <summary>
        /// My contact bl
        /// </summary>
        private readonly IMyContactBL myContactBL;

        /// <summary>
        /// Initializes a new instance of the <see cref="MyContactController"/> class.
        /// </summary>
        /// <param name="myContactBL">My contact bl.</param>
        public MyContactController(IMyContactBL myContactBL)
        {
            this.myContactBL = myContactBL;
        }

        /// <summary>
        /// Adds the contact.
        /// </summary>
        /// <param name="contactId">The contact identifier.</param>
        /// <returns></returns>
        [HttpPost("{contactId}")]
        public IActionResult AddContact(long contactId)
        {
            try
            {
                long jwtUserId = Convert.ToInt32(User.Claims.FirstOrDefault(e => e.Type == "UserId").Value);
                GetMyContactsModel myContacts = myContactBL.AddContact(contactId, jwtUserId);
                if (myContacts != null)
                {
                    return Ok(new { Success = true, message = "Contact added to my list", myContacts });
                }
                return NotFound(new { Success = false, message = "Invalid contact Id" });
            }
            catch (Exception ex)
            {
                return BadRequest(new {success = false,  message = ex.Message });
            }
        }
    }
}
