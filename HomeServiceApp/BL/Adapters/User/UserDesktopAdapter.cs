using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HSM.Interface;
using HSM.Entity;
using HSM.Common;
using HSM.DAL;
using Microsoft.Practices.Unity;



namespace HSM.BL
{
    public class UserDesktopAdapter : IListingAdapter
    {

        private readonly IUserRepository _UserLising;

        public UserDesktopAdapter(IUnityContainer container)
        {
            container.RegisterType<IUserRepository, UserRepository>()
                .RegisterType<IImageRepository, ImageRepository>();
            _UserLising = container.Resolve<IUserRepository>();
            _UserImage = container.Resolve<IImageRepository>();
        }


        public HomePageData GetHomePageData(int cityId, int categoryId, int startIndex, int endIndex)
        {
            HomePageData homeLising = new HomePageData();
            List<UserMin> allUsers = new List<UserMin>();


            allUsers = _UserLising.GetUserListing(cityId, categoryId, startIndex, endIndex);

            homeLising.UserListing = allUsers.Where(p => p.IsFeatured == 0).ToList<UserMin>();
            homeLising.FeaturedUserListing = allUsers.Where(p => p.IsFeatured == 1).ToList<UserMin>();

            return homeLising;

        }
    }// class
}
