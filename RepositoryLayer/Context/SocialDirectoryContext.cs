// <copyright file="SocialDirectoryContext.cs" company="Quovantis Technologies">
//    SocialDirectoryContext copyright tag.
// </copyright>

namespace RepositoryLayer.Context
{
    using Microsoft.EntityFrameworkCore;
    using RepositoryLayer.Entities;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Social directory Db context
    /// </summary>
    /// <seealso cref="Microsoft.EntityFrameworkCore.DbContext" />
    public class SocialDirectoryContext : DbContext
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SocialDirectoryContext"/> class.
        /// </summary>
        /// <param name="options">The options for this context.</param>
        /// <remarks>
        /// See <see href="https://aka.ms/efcore-docs-dbcontext">DbContext lifetime, configuration, and initialization</see> and
        /// <see href="https://aka.ms/efcore-docs-dbcontext-options">Using DbContextOptions</see> for more information.
        /// </remarks>
        public SocialDirectoryContext(DbContextOptions options) : base(options)
        {
        }

        /// <summary>
        /// Gets or sets the user table.
        /// </summary>
        /// <value>
        /// The user table.
        /// </value>
        public DbSet<UserEntities> UserTable { get; set; }

    }
}
