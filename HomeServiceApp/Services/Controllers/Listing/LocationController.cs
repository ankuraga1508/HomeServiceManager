using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Http;
using System.Net.Configuration;
using System.Net.Http;
using HSM.Entity;
using HSM.DAL;
using HSM.Interface;
using HSM.Common;
using HSM.BL;


namespace HSM.Services
{
    public class LocationController : ApiController
    {
        /// <summary>
        /// Controller for Getting All Listing
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public IHttpActionResult GetAreaForCity()
        {
            string response = null;
            var QueryString = Request.RequestUri.ParseQueryString();
            int cityId = (QueryString["cityid"] != null && !String.IsNullOrEmpty(QueryString["cityid"].ToString())) ? Convert.ToInt32(QueryString["cityid"]) : -1;
            int categoryId = (QueryString["categoryid"] != null && !String.IsNullOrEmpty(QueryString["categoryid"].ToString())) ? Convert.ToInt32(QueryString["categoryid"]) : -1;

            try
            {

                IUnityContainer container = new UnityContainer();
                container.RegisterType<ILoationRepository, LocationRepository>();
                response = JsonConvert.SerializeObject(container.Resolve<ILoationRepository>().GetAreaForCity(cityId));

            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "LocationController.GetAreaForCity()");
                objErr.LogException();
            }
            return Ok(response);

        }
    }
}
