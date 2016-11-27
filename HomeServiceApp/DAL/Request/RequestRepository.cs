using System;
using HSM.Interface;
using System.Data;
using HSM.Entity;
using HSM.Common;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Collections.Generic;

namespace HSM.DAL
{
    public class RequestRepository : IRequestRepository
    {
        public Boolean addRequest(Request requestDetails)
        {
            try
            {
                int RequesterId = requestDetails.RequesterId;
                int RoleId = requestDetails.RoleId;
                int CaregiverId = requestDetails.CaregiverId;
                int ServiceId = requestDetails.ServiceId;
                int Status = requestDetails.Status;
                DateTime TimeOfServiceStart = requestDetails.TimeOfServiceStart;
                DateTime TimeOfServiceEnds = requestDetails.TimeOfServiceEnds;
                string Comments = requestDetails.Comments;
                DateTime ModifiedBy = requestDetails.ModifiedBy;
                DateTime ModifiedOn = requestDetails.ModifiedOn;

                using (MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["connectionString"]))
                {
                    using (MySqlCommand cmd = new MySqlCommand("insert_update_request"))
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("_id", null);
                        cmd.Parameters.AddWithValue("RoleId", RoleId);
                        cmd.Parameters.AddWithValue("RequesterId", RequesterId);
                        cmd.Parameters.AddWithValue("CaregiverId", CaregiverId);
                        cmd.Parameters.AddWithValue("ServiceId", ServiceId);
                        cmd.Parameters.AddWithValue("Status", Status);
                        cmd.Parameters.AddWithValue("TimeOfServiceStart", TimeOfServiceStart);
                        cmd.Parameters.AddWithValue("TimeOfServiceEnds", TimeOfServiceEnds);
                        cmd.Parameters.AddWithValue("Comments", Comments);
                        cmd.Parameters.AddWithValue("ModifiedBy", ModifiedBy);
                        cmd.Parameters.AddWithValue("ModifiedOn", ModifiedOn);
                        cmd.ExecuteReader();
                        con.Close();
                        return true;
                    }
                }

            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "");
                objErr.LogException();
            }
            return false;
        }

        public Boolean updateRequest(Request requestDetails)
        {
            try
            {
                int id = requestDetails.id;
                int RequesterId = requestDetails.RequesterId;
                int RoleId = requestDetails.RoleId;
                int CaregiverId = requestDetails.CaregiverId;
                int ServiceId = requestDetails.ServiceId;
                int Status = requestDetails.Status;
                DateTime TimeOfServiceStart = requestDetails.TimeOfServiceStart;
                DateTime TimeOfServiceEnds = requestDetails.TimeOfServiceEnds;
                string Comments = requestDetails.Comments;
                DateTime ModifiedBy = requestDetails.ModifiedBy;
                DateTime ModifiedOn = requestDetails.ModifiedOn;

                using (MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["connectionString"]))
                {
                    using (MySqlCommand cmd = new MySqlCommand("insert_update_request"))
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("_id", id);
                        cmd.Parameters.AddWithValue("RequesterId", RequesterId);
                        cmd.Parameters.AddWithValue("RoleId", RoleId);
                        cmd.Parameters.AddWithValue("CaregiverId", CaregiverId);
                        cmd.Parameters.AddWithValue("ServiceId", ServiceId);
                        cmd.Parameters.AddWithValue("Status", Status);
                        cmd.Parameters.AddWithValue("TimeOfServiceStart", TimeOfServiceStart);
                        cmd.Parameters.AddWithValue("TimeOfServiceEnds", TimeOfServiceEnds);
                        cmd.Parameters.AddWithValue("Comments", Comments);
                        cmd.Parameters.AddWithValue("ModifiedBy", ModifiedBy);
                        cmd.Parameters.AddWithValue("ModifiedOn", ModifiedOn);
                        cmd.ExecuteReader();
                        con.Close();
                        return true;
                    }
                }

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex);
                var objErr = new ErrorClass(ex, "");
                objErr.LogException();
            }
            return false;
        }

        public List<Request> getRequestByUserId(int userid)
        {
            var requestList = new List<Request>();

            try
            {
                using (MySqlCommand cmd = new MySqlCommand("getrequestbyuserid"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("userid", userid);
                    Database db = new Database();
                    using (MySqlDataReader dr = db.SelectQry(cmd))
                    {
                        while (dr.Read())
                        {
                            requestList.Add(new Request()
                            {
                                id = Int32.Parse(dr["id"].ToString()),
                                RequesterId = Int32.Parse(dr["RequesterId"].ToString()),
                                RoleId = Int32.Parse(dr["RoleId"].ToString()),
                                CaregiverId = Int32.Parse(dr["CaregiverId"].ToString()),
                                ServiceId = Int32.Parse(dr["ServiceId"].ToString()),
                                Status = Int32.Parse(dr["Status"].ToString()),
                                TimeOfServiceStart = Convert.ToDateTime(dr["TimeOfServiceStart"].ToString()),
                                TimeOfServiceEnds = Convert.ToDateTime(dr["TimeOfServiceEnds"].ToString()),
                                Comments = dr["Comments"].ToString(),
                                ModifiedBy = Convert.ToDateTime(dr["ModifiedBy"].ToString()),
                                ModifiedOn = Convert.ToDateTime(dr["ModifiedOn"].ToString())
                                
                            });
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
            return requestList;
        }

        public List<Request> getRequestByRoleId(int roleid)
        {
            var requestList = new List<Request>();

            try
            {
                using (MySqlCommand cmd = new MySqlCommand("getrequestbyroleid"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("_roleid", roleid);
                    Database db = new Database();
                    using (MySqlDataReader dr = db.SelectQry(cmd))
                    {
                        while (dr.Read())
                        {
                            requestList.Add(new Request()
                            {
                                id = Int32.Parse(dr["id"].ToString()),
                                RequesterId = Int32.Parse(dr["RequesterId"].ToString()),
                                RoleId = Int32.Parse(dr["RoleId"].ToString()),
                                CaregiverId = Int32.Parse(dr["CaregiverId"].ToString()),
                                ServiceId = Int32.Parse(dr["ServiceId"].ToString()),
                                Status = Int32.Parse(dr["Status"].ToString()),
                                TimeOfServiceStart = Convert.ToDateTime(dr["TimeOfServiceStart"].ToString()),
                                TimeOfServiceEnds = Convert.ToDateTime(dr["TimeOfServiceEnds"].ToString()),
                                Comments = dr["Comments"].ToString(),
                                ModifiedBy = Convert.ToDateTime(dr["ModifiedBy"].ToString()),
                                ModifiedOn = Convert.ToDateTime(dr["ModifiedOn"].ToString())

                            });
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
            return requestList;
        }
    }
}
