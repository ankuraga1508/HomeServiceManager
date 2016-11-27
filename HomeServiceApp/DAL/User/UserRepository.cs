using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HSM.Interface;
using System.Data;
using HSM.Entity;
using HSM.Common;
using MySql.Data.MySqlClient;
using Newtonsoft.Json.Linq;

namespace HSM.DAL
{
    public class UserRepository : IUserRepository
    {
        public List<User> GetAllUsers(int roleId)
        {
            var UserList = new List<User>();

            try
            {
                using (MySqlCommand cmd = new MySqlCommand("getalluser"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("_UserRoleId", MySqlDbType.Int32).Value = roleId;
                    Database db = new Database();
                    using (MySqlDataReader dr = db.SelectQry(cmd))
                    {
                        while (dr.Read())
                        {
                            UserList.Add(new User()
                            {
                                idUser = Int32.Parse(dr["idUser"].ToString()),
                                UserName = dr["UserName"].ToString(),
                                UserEmail = dr["UserEmail"].ToString(),
                                UserMobile = dr["UserMobile"].ToString(),
                                UserSSN = dr["UserSSN"].ToString(),
                                LoginId = dr["LoginId"].ToString(),
                                LoginPassword = dr["LoginPassword"].ToString(),
                                CreatedOn = Convert.ToDateTime(dr["CreatedOn"].ToString()),
                                CreatedBy = Int32.Parse(dr["CreatedBy"].ToString()),
                                ModifiedOn = Convert.ToDateTime(dr["ModifiedOn"].ToString()),
                                ModifiedBy = Int32.Parse(dr["ModifiedBy"].ToString()),
                            });
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "NewCarUsersRepository.BindNewCarUsers()");
                objErr.LogException();
            }
            return UserList;
        }

        public User userLogin(Credential usercr)
        {
            try
            {
                User user;

                string LoginId = usercr.LoginId;
                string LoginPassword = usercr.LoginPassword;
                using (MySqlCommand cmd = new MySqlCommand("userlogin"))
                {                    
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("_username", LoginId);
                    cmd.Parameters.AddWithValue("_password", LoginPassword);
                    Database db = new Database();
                    using (MySqlDataReader dr = db.SelectQry(cmd))
                    {
                        if (dr.Read())
                        {
                            user = new User(){ UserRoleId = Int32.Parse(dr["UserRoleId"].ToString())};
                            return user;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
                var objErr = new ErrorClass(ex, "");
                objErr.LogException();
            }
            return null;
        }

        public User GetUserById(int UserId)
        {
            var UserData = new User();
            try
            {
                using (MySqlCommand cmd = new MySqlCommand("dbo.GetUsers"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@UserId", MySqlDbType.Int32).Value = UserId;
                    Database db = new Database();
                    using (MySqlDataReader dr = db.SelectQry(cmd))
                    {

                        while (dr.Read())
                        {
                                UserData.idUser = Int32.Parse(dr["idUser"].ToString());
                                UserData.UserName = dr["UserName"].ToString();
                                UserData.UserEmail = dr["UserEmail"].ToString();
                                UserData.UserMobile = dr["UserMobile"].ToString();
                                UserData.UserSSN = dr["UserSSN"].ToString();
                                UserData.LoginId = dr["LoginId"].ToString();
                                UserData.LoginPassword = dr["LoginPassword"].ToString();
                                UserData.CreatedOn = Convert.ToDateTime(dr["CreatedOn"].ToString());
                                UserData.CreatedBy = Int32.Parse(dr["CreatedBy"].ToString());
                                UserData.ModifiedOn = Convert.ToDateTime(dr["ModifiedOn"].ToString());
                                UserData.ModifiedBy = Int32.Parse(dr["ModifiedBy"].ToString());
                        }

                    }

                }
            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "NewCarUsersRepository.BindNewCarUsers()");
                objErr.LogException();
            }
            return UserData;
        }

        public int SaveUserDetails(User UserData)
        {
            try
            {
                using (MySqlCommand cmd = new MySqlCommand("insertorupdate_user"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("_id", MySqlDbType.Int32).Value = UserData.idUser;
                    cmd.Parameters.Add("UserName", MySqlDbType.VarChar).Value = UserData.UserName;
                    cmd.Parameters.Add("UserEmail", MySqlDbType.VarChar).Value = UserData.UserEmail;
                    cmd.Parameters.Add("UserMobile", MySqlDbType.VarChar).Value = UserData.UserMobile;
                    cmd.Parameters.Add("UserRoleId", MySqlDbType.Int32).Value = UserData.UserRoleId;
                    cmd.Parameters.Add("UserSSN", MySqlDbType.VarChar).Value = UserData.UserSSN;
                    cmd.Parameters.Add("ModifiedBy", MySqlDbType.Int32).Value = UserData.ModifiedBy;
                    cmd.Parameters.Add("LoginId", MySqlDbType.VarChar).Value = UserData.LoginId;
                    cmd.Parameters.Add("LoginPassword", MySqlDbType.VarChar).Value = UserData.LoginPassword;
                    cmd.Parameters.Add("IsActive", MySqlDbType.Bit).Value = UserData.IsActive;

                    Database db = new Database();
                    db.ExecuteScalar(cmd);

                    return 1;
                }
            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "NewCarUsersRepository.BindNewCarUsers()");
                objErr.LogException();
                return 0;
            }

        }
    }
}
