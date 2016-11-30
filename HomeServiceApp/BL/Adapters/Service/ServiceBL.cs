using HSM.Interface;
using HSM.DAL;
using Microsoft.Practices.Unity;
using HSM.Entity;
using System.Collections.Generic;

namespace HSM.BL
{
    public class ServiceBL
    {

        private readonly IServiceRepository _serviceRepo;

        public ServiceBL(IUnityContainer container)
        {
            container.RegisterType<IServiceRepository, ServiceRepository>();
            _serviceRepo = container.Resolve<IServiceRepository>();
        }

        public bool AddService(Service serviceDetails)
        {
            return _serviceRepo.AddService(serviceDetails);
        }

        public List<Service> GetAllServices()
        {
            return _serviceRepo.GetAllServices();
        }
    }
}
