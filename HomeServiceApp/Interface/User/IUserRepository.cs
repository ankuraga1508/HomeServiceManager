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
        /// Check user is valid or not
        /// </summary>
        User userLogin(Credential usercr);

        /// <summary>
        /// get delaer based on Userid
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        User GetUserById(int UserId);

        /// <summary>
        /// get user based on UserName
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        User GetUserByUserName(string UserName);

        /// <summary>
        /// Save/Update User info
        /// </summary>
        /// <param name="UserData"></param>
        /// <returns></returns>
        User SaveUserDetails(User UserData);


    }
}
