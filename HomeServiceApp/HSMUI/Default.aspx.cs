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
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
        

    }
}