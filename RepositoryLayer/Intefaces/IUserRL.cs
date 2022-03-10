// <copyright file="IUserRL.cs" company="Quovantis Technologies">
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
        RegistrationResponseModel Registration(UserEntities model);
    }
}
