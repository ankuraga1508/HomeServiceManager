using HSM.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace HSM.Interface
{
    public interface IRequestRepository
    {
        /// <summary>
        /// Send Request
        /// </summary>
        bool addRequest(Request requestDetails);

        /// <summary>
        /// Send Request
        /// </summary>
        bool updateRequest(Request requestDetails);

        /// <summary>
        /// Get Request by RequesterId
        /// </summary>
        List<Request> getRequestByRequesterId(int RequesterId);

        /// <summary>
        /// Get Request by roleid
        /// </summary>
        List<Request> getRequestByCaregiverId(int CaregiverId);

        /// <summary>
        /// Get All Requests
        /// </summary>
        List<Request> getAllRequests();
    }
}
