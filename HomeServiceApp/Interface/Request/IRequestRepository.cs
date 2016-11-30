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
        /// 
        /// </summary>
        /// <param name="caregiverId"></param>
        /// <param name="requesterId"></param>
        /// <param name="status"></param>
        /// <returns></returns>
        List<Request> getRequestsByFilters(int caregiverId, int requesterId, int status);
    }
}
