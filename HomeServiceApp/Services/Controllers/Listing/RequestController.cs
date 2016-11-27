using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using System;
using System.Web.Http;
using HSM.Common;
using HSM.BL;

namespace HSM.Services
{
    public class RequestController : ApiController
    {
        [System.Web.Http.HttpPost]
        [System.Web.Http.ActionName("addrequest")]
        public IHttpActionResult addRequest([FromBody] Entity.Request requestDetails)
        {
            string response = null;
            IUnityContainer container = new UnityContainer();
            RequestBL requestBL = new RequestBL(container);

            try
            {
                response = JsonConvert.SerializeObject(requestBL.addRequest(requestDetails));
            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "");
                objErr.LogException();
            }
            return Ok(response);
        }

        [System.Web.Http.HttpPost]
        [System.Web.Http.ActionName("updaterequest")]
        public IHttpActionResult updateRequest([FromBody] Entity.Request requestDetails)
        {
            string response = null;
            IUnityContainer container = new UnityContainer();
            RequestBL requestBL = new RequestBL(container);

            try
            {
                response = JsonConvert.SerializeObject(requestBL.updateRequest(requestDetails));
            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "");
                objErr.LogException();
            }
            return Ok(response);
        }
    }
}