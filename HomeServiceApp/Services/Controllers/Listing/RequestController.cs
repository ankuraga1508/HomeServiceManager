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
        [System.Web.Http.ActionName("getrequest")]
        public IHttpActionResult getRequest()
        {
            string response = null;
            var QueryString = Request.RequestUri.ParseQueryString();
            int userid = (QueryString["userid"] != null && !String.IsNullOrEmpty(QueryString["userid"].ToString())) ? Convert.ToInt32(QueryString["userid"]) : -1;
            int roleid = (QueryString["roleid"] != null && !String.IsNullOrEmpty(QueryString["roleid"].ToString())) ? Convert.ToInt32(QueryString["roleid"]) : -1;

            IUnityContainer container = new UnityContainer();
            RequestBL requestBL = new RequestBL(container);

            try
            {
                if(userid != -1)
                    response = JsonConvert.SerializeObject(requestBL.getRequestByUserId(userid));
                else if(roleid != -1)
                    response = JsonConvert.SerializeObject(requestBL.getRequestByRoleId(roleid));
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