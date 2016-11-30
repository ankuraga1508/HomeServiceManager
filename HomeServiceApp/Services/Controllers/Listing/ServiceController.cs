using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using System;
using System.Web.Http;
using HSM.Common;
using HSM.BL;

namespace HSM.Services
{
    public class ServiceController : ApiController
    {
        [System.Web.Http.HttpPost]
        [System.Web.Http.ActionName("addservice")]
        public IHttpActionResult addService([FromBody] Entity.Service serviceDetails)
        {
            string response = null;
            IUnityContainer container = new UnityContainer();
            ServiceBL serviceBl = new ServiceBL(container);

            try
            {
                response = JsonConvert.SerializeObject(serviceBl.AddService(serviceDetails));
            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "");
                objErr.LogException();
            }
            return Ok(response);
        }

        [System.Web.Http.HttpGet]
        [System.Web.Http.ActionName("services")]
        public IHttpActionResult GetAllServices()
        {
            string response = null;
            IUnityContainer container = new UnityContainer();
            ServiceBL serviceBl = new ServiceBL(container);
            try
            {
                response = JsonConvert.SerializeObject(serviceBl.GetAllServices());
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