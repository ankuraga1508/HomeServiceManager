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
    public class UserBL 
    {

        private readonly IUserRepository _userRepo;

        public UserBL(IUnityContainer container)
        {
            container.RegisterType<IUserRepository, UserRepository>();
            _userRepo = container.Resolve<IUserRepository>();
        }


        public List<User> GetAllUser(int roleId)
        {
            return _userRepo.GetAllUsers(roleId);

        }

        public Boolean userLogin(string loginDetails)
        {
            return _userRepo.userLogin(loginDetails);

        }

        public User GetUserById(int userId)
        {
            return _userRepo.GetUserById(userId);

        }

        public void SaveUser(User userData)
        {
            _userRepo.SaveUserDetails(userData);

        }
    }// class
}
