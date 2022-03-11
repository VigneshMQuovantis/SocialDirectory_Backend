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

        /// <summary>
        /// Gets or sets the contact table.
        /// </summary>
        /// <value>
        /// The contact table.
        /// </value>
        public DbSet<ContactEntities> ContactTable { get; set; }

        /// <summary>
        /// Override this method to further configure the model that was discovered by convention from the entity types
        /// exposed in <see cref="T:Microsoft.EntityFrameworkCore.DbSet`1" /> properties on your derived context. The resulting model may be cached
        /// and re-used for subsequent instances of your derived context.
        /// </summary>
        /// <param name="modelBuilder">The builder being used to construct the model for this context. Databases (and other extensions) typically
        /// define extension methods on this object that allow you to configure aspects of the model that are specific
        /// to a given database.</param>
        /// <remarks>
        /// <para>
        /// If a model is explicitly set on the options for this context (via <see cref="M:Microsoft.EntityFrameworkCore.DbContextOptionsBuilder.UseModel(Microsoft.EntityFrameworkCore.Metadata.IModel)" />)
        /// then this method will not be run.
        /// </para>
        /// <para>
        /// See <see href="https://aka.ms/efcore-docs-modeling">Modeling entity types and relationships</see> for more information.
        /// </para>
        /// </remarks>
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ContactEntities>()
                .HasKey(e => new { e.UserId,e.ContactId });
            modelBuilder.Entity<ContactEntities>()
                .HasOne(e => e.User)
                .WithMany(e => e.MyDetail)
                .HasForeignKey(e => e.UserId);
            modelBuilder.Entity<ContactEntities>()
                .HasOne(e => e.UserFriend)
                .WithMany(e => e.FriendDetail)
                .HasForeignKey(e => e.ContactId);
        }
    }
}
