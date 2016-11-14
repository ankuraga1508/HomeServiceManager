using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HSM.Entity;
using System.Net.Http;
using System.Net.Http.Headers;
using HSM.Interface;
using HSM.DAL;
using Microsoft.Practices.Unity;
using HSM.BL;

namespace HSMMVC
{
    public partial class AddDeal : System.Web.UI.Page
    {
        protected Repeater rptListings, rptFeaturedListing;
        int categoryId=1, cityId=1;
        HomePageData hpData = new HomePageData();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            ProcessQueryString();
            GetHomePageListing(categoryId, cityId);
            
            //repeater binding
            rptListings.DataSource = hpData.DealListing;
            rptListings.DataBind();

            rptFeaturedListing.DataSource = hpData.FeaturedDealListing;
            rptFeaturedListing.DataBind();
            
        }
        protected void GetHomePageListing(int categoryId, int cityId)
        {
            DealDesktopAdapter da = new DealDesktopAdapter(new UnityContainer());            
            hpData = da.GetHomePageData(cityId, categoryId, 0, int.MaxValue);

        }
        protected void ProcessQueryString()
        {
            var QueryString = HttpContext.Current.Request.QueryString;
            cityId = (QueryString["cityid"] != null && !String.IsNullOrEmpty(QueryString["cityid"].ToString())) ? Convert.ToInt32(QueryString["cityid"]) : -1;
            categoryId = (QueryString["categoryid"] != null && !String.IsNullOrEmpty(QueryString["categoryid"].ToString())) ? Convert.ToInt32(QueryString["categoryid"]) : -1;

        }
        public string CheckImage(object imgUrl)
        {
            if (imgUrl == null)
            {
                return "images\noimage.jpg";
            }

            return imgUrl.ToString();
        }

    }
}