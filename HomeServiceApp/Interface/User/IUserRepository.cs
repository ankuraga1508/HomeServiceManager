using HSM.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HSM.Interface
{
    public interface IUserRepository
    {
        /// <summary>
        /// get all Users list
        /// </summary>
        /// <param name="cityId"></param>
        /// <param name="categoryId"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        List<User> GetAllUsers(int roleId);
        
        /// <summary>
        /// get delaer based on Userid
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        User GetUserById(int UserId);

        /// <summary>
        /// Save/Update User info
        /// </summary>
        /// <param name="UserData"></param>
        /// <returns></returns>
        int SaveUserDetails(User UserData);


    }
}
