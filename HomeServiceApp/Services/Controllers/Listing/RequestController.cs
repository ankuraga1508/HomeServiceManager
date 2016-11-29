using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using System;
using System.Web.Http;
using HSM.Common;
using HSM.BL;
using System.Net.Http;

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

        [System.Web.Http.HttpGet]
        [System.Web.Http.ActionName("getallrequests")]
        public IHttpActionResult getAllRequests()
        {
            string response = null;
            
            IUnityContainer container = new UnityContainer();
            RequestBL requestBL = new RequestBL(container);

            try
            {
                response = JsonConvert.SerializeObject(requestBL.getAllRequests());
            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "");
                objErr.LogException();
            }
            return Ok(response);
        }

        [System.Web.Http.HttpGet]
        [System.Web.Http.ActionName("getrequest")]
        public IHttpActionResult getRequest()
        {
            string response = null;
            var QueryString = Request.RequestUri.ParseQueryString();
            int requesterid = (QueryString["requesterid"] != null && !String.IsNullOrEmpty(QueryString["requesterid"].ToString())) ? Convert.ToInt32(QueryString["requesterid"]) : -1;
            int caregiverid = (QueryString["caregiverid"] != null && !String.IsNullOrEmpty(QueryString["caregiverid"].ToString())) ? Convert.ToInt32(QueryString["caregiverid"]) : -1;

            IUnityContainer container = new UnityContainer();
            RequestBL requestBL = new RequestBL(container);

            try
            {
                if(requesterid != -1)
                    response = JsonConvert.SerializeObject(requestBL.getRequestByRequesterId(requesterid));
                else if(caregiverid != -1)
                    response = JsonConvert.SerializeObject(requestBL.getRequestByCaregiverId(caregiverid));
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