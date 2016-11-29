using HSM.Interface;
using HSM.DAL;
using Microsoft.Practices.Unity;
using HSM.Entity;
using System.Collections.Generic;

namespace HSM.BL
{
    public class RequestBL
    {

        private readonly IRequestRepository _requestRepo;

        public RequestBL(IUnityContainer container)
        {
            container.RegisterType<IRequestRepository, RequestRepository>();
            _requestRepo = container.Resolve<IRequestRepository>();
        }

        public bool addRequest(Request requestDetails)
        {
            return _requestRepo.addRequest(requestDetails);
        }

        public bool updateRequest(Request requestDetails)
        {
            return _requestRepo.updateRequest(requestDetails);
        }

        public List<Request> getRequestByRequesterId(int RequesterId)
        {
            return _requestRepo.getRequestByRequesterId(RequesterId);
        }

        public List<Request> getRequestByCaregiverId(int CaregiverId)
        {
            return _requestRepo.getRequestByCaregiverId(CaregiverId);
        }

        public List<Request> getAllRequests()
        {
            return _requestRepo.getAllRequests();
        }
    }
}
