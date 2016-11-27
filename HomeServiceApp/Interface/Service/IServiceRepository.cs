using HSM.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace HSM.Interface
{
    public interface IServiceRepository
    {
        /// <summary>
        /// Add service
        /// </summary>
        bool AddService(Service serviceDetails);

        /// <summary>
        /// Update service
        /// </summary>
        bool updateService(Service serviceDetails);

        /// <summary>
        /// Get all services
        /// </summary>
        List<Service> GetAllServices();

    }
}
