// <copyright file="UserEntities.cs" company="Quovantis Technologies">
//    UserEntities copyright tag.
// </copyright>

namespace RepositoryLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// User Table Entities
    /// </summary>
    public class UserEntities
    {
        /// <summary>
        /// Gets or sets the user identifier.
        /// </summary>
        /// <value>
        /// The user identifier.
        /// </value>
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public long UserId { get; set; }

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        [Required(ErrorMessage = "Name Is required")]
        [DataType(DataType.Text)]
        [Display(Name = "Name")]
        public string Name { get; set; }

        /// <summary>
        /// Gets or sets the email identifier.
        /// </summary>
        /// <value>
        /// The email identifier.
        /// </value>
        [Required(ErrorMessage = "EmailId is required")]
        [DataType(DataType.EmailAddress)]
        [Display(Name = "EmailId")]
        public string EmailId { get; set; }

        /// <summary>
        /// Gets or sets the password.
        /// </summary>
        /// <value>
        /// The password.
        /// </value>
        [Required(ErrorMessage = "Password Is required")]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        /// <summary>
        /// Gets or sets the gender.
        /// </summary>
        /// <value>
        /// The gender.
        /// </value>
        [Required(ErrorMessage = "Name Is required")]
        [DataType(DataType.Text)]
        [Display(Name = "Name")]
        public string Gender { get; set; }

        /// <summary>
        /// Gets or sets the date of birth.
        /// </summary>
        /// <value>
        /// The date of birth.
        /// </value>
        [Required(ErrorMessage = "Data of Birth Is required")]
        [DataType(DataType.Text)]
        [Display(Name = "Data of Birth")]
        public string DateOfBirth { get; set; }

        /// <summary>
        /// Gets or sets the mobile number.
        /// </summary>
        /// <value>
        /// The mobile number.
        /// </value>
        [Required(ErrorMessage = "Mobile Number Is required")]
        [DataType(DataType.Text)]
        [Display(Name = "Mobile Number")]
        public string MobileNumber { get; set; }

        /// <summary>
        /// Gets or sets the interest.
        /// </summary>
        /// <value>
        /// The interest.
        /// </value>
        [Required(ErrorMessage = "Interest Is required")]
        [DataType(DataType.Text)]
        [Display(Name = "Interest")]
        public string Interest { get; set; }

        /// <summary>
        /// Gets or sets the location.
        /// </summary>
        /// <value>
        /// The location.
        /// </value>
        [Required(ErrorMessage = "Location Is required")]
        [DataType(DataType.Text)]
        [Display(Name = "Location")]
        public string Location { get; set; }

        public virtual ICollection<ContactEntities> MyDetail { get; set; }
        public virtual ICollection<ContactEntities> FriendDetail { get; set; }
    }
}
