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

        public List<Request> getRequestByUserId(int userid)
        {
            return _requestRepo.getRequestByUserId(userid);
        }

        public List<Request> getRequestByRoleId(int roleid)
        {
            return _requestRepo.getRequestByRoleId(roleid);
        }
    }
}
