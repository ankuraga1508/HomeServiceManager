using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HSM.Interface;
using System.Data.SqlClient;
using System.Data;
using HSM.Entity;
using HSM.Common;

namespace HSM.DAL
{
    public class UserRepository : IUserRepository
    {
        public List<User> GetAllUsers(int cityId)
        {
            var UserList = new List<User>();

            try
            {
                using (SqlCommand cmd = new SqlCommand("dbo.GetUsers"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@CityId", SqlDbType.Int).Value = cityId;
                    Database db = new Database();
                    using (SqlDataReader dr = db.SelectQry(cmd))
                    {
                        while (dr.Read())
                        {
                            UserList.Add(new User()
                            {
                                UserId = Int32.Parse(dr["Id"].ToString()),
                                FirstName = dr["FirstName"].ToString(),
                                Address = dr["Address"].ToString(),
                                CityId = Int32.Parse(dr["CityId"].ToString()),
                                Email = dr["Email"].ToString(),
                                Mobile = dr["Mobile"].ToString(),
                                logoUrl = dr["logoUrl"].ToString(),
                                Image = dr["Image"].ToString(),
                                WorkingHrs = dr["WorkingHrs"].ToString(),
                                WebsiteUrl = dr["WebsiteUrl"].ToString(),
                                Type = dr["Type"].ToString(),
                                IsActive = dr["IsActive"].ToString() == "True" ? 1 : 0,
                                LastName = dr["LastName"].ToString(),
                                Organisation = dr["Organisation"].ToString(),
                                SecondaryNo = dr["SecondaryNo"].ToString(),
                                ContactPerson = dr["ContactPerson"].ToString()
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

        public User GetUser(int UserId)
        {
            var UserData = new User();
            try
            {
                using (SqlCommand cmd = new SqlCommand("dbo.GetUsers"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = UserId;
                    Database db = new Database();
                    using (SqlDataReader dr = db.SelectQry(cmd))
                    {

                        while (dr.Read())
                        {
                            UserData.UserId = Int32.Parse(dr["Id"].ToString());
                            UserData.FirstName = dr["FirstName"].ToString();
                            UserData.Address = dr["Address"].ToString();
                            UserData.CityId = Int32.Parse(dr["CityId"].ToString());
                            UserData.Email = dr["Email"].ToString();
                            UserData.Mobile = dr["Mobile"].ToString();
                            UserData.logoUrl = dr["logoUrl"].ToString();
                            UserData.Image = dr["Image"].ToString();
                            UserData.WorkingHrs = dr["WorkingHrs"].ToString();
                            UserData.WebsiteUrl = dr["WebsiteUrl"].ToString();
                            UserData.Type = dr["Type"].ToString();
                            UserData.IsActive = dr["IsActive"].ToString() == "True" ? 1 : 0;
                            UserData.LastName = dr["LastName"].ToString();
                            UserData.Organisation = dr["Organisation"].ToString();
                            UserData.SecondaryNo = dr["SecondaryNo"].ToString();
                            UserData.ContactPerson = dr["ContactPerson"].ToString();
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
                using (SqlCommand cmd = new SqlCommand("dbo.SaveOrUpdateUserDetails"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = UserData.UserId;
                    cmd.Parameters.Add("@FirstName", SqlDbType.VarChar, -1).Value = UserData.FirstName;
                    cmd.Parameters.Add("@Address", SqlDbType.VarChar, -1).Value = UserData.Address;
                    cmd.Parameters.Add("@CityId", SqlDbType.Int).Value = UserData.CityId;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar, -1).Value = UserData.Email;
                    cmd.Parameters.Add("@Mobile", SqlDbType.VarChar, -1).Value = UserData.Mobile;
                    cmd.Parameters.Add("@logoUrl", SqlDbType.VarChar, -1).Value = UserData.logoUrl;
                    cmd.Parameters.Add("@Image", SqlDbType.VarChar, -1).Value = UserData.Image;
                    cmd.Parameters.Add("@WorkingHrs", SqlDbType.VarChar, -1).Value = UserData.WorkingHrs;
                    cmd.Parameters.Add("@WebsiteUrl", SqlDbType.VarChar, -1).Value = UserData.WebsiteUrl;
                    cmd.Parameters.Add("@Type", SqlDbType.VarChar, -1).Value = UserData.Type;
                    cmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = UserData.IsActive;
                    cmd.Parameters.Add("@LastName", SqlDbType.VarChar, -1).Value = UserData.LastName;
                    cmd.Parameters.Add("@Organisation", SqlDbType.VarChar, -1).Value = UserData.Organisation;
                    cmd.Parameters.Add("@SecondaryNo", SqlDbType.VarChar, -1).Value = UserData.SecondaryNo;
                    cmd.Parameters.Add("@ContactPerson", SqlDbType.VarChar, -1).Value = UserData.ContactPerson;

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
