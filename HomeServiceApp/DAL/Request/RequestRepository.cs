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
                int id = requestDetails.id;
                int RequesterId = requestDetails.RequesterId;
                int RoleId = requestDetails.RoleId;
                int CaregiverId = requestDetails.CaregiverId;
                int ServiceId = requestDetails.ServiceId;
                string Status = requestDetails.Status;
                string ScheduleDate = requestDetails.ScheduleDate;
                string StartTime = requestDetails.StartTime;
                string EndTime = requestDetails.EndTime;
                string Comments = requestDetails.Comments;
                int ModifiedBy = requestDetails.ModifiedBy;

                using (MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["connectionString"]))
                {
                    using (MySqlCommand cmd = new MySqlCommand("insert_update_request"))
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("_id", id);
                        cmd.Parameters.AddWithValue("RoleId", RoleId);
                        cmd.Parameters.AddWithValue("RequesterId", RequesterId);
                        cmd.Parameters.AddWithValue("CaregiverId", CaregiverId);
                        cmd.Parameters.AddWithValue("ServiceId", ServiceId);
                        cmd.Parameters.AddWithValue("Status", Status);
                        cmd.Parameters.AddWithValue("ScheduleDate", ScheduleDate);
                        cmd.Parameters.AddWithValue("StartTime", StartTime);
                        cmd.Parameters.AddWithValue("EndTime", EndTime);
                        cmd.Parameters.AddWithValue("Comments", Comments);
                        cmd.Parameters.AddWithValue("ModifiedBy", ModifiedBy);
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


        public List<Request> getRequestsByFilters(int caregiverId, int requesterId, string status)
        {
            var requestList = new List<Request>();

            try
            {
                using (MySqlCommand cmd = new MySqlCommand("getrequestbyfilters"))
                {
                    string[] statusArr = status.Split(',');
                    for (int i = 0; i < statusArr.Length; i++) {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("_CaregiverId", caregiverId);
                        cmd.Parameters.AddWithValue("_requesterId", requesterId);
                        cmd.Parameters.AddWithValue("_status", statusArr[i]);
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
                                    Status = dr["Status"].ToString(),
                                    ScheduleDate = dr["ScheduleDate"].ToString(),
                                    StartTime = dr["StartTime"].ToString(),
                                    EndTime = dr["EndTime"].ToString(),
                                    Comments = dr["Comments"].ToString(),
                                    ModifiedBy = Int32.Parse(dr["ModifiedBy"].ToString()),
                                    ModifiedOn = Convert.ToDateTime(dr["ModifiedOn"].ToString()),
                                    Address = dr["Address"].ToString(),
                                    serviceName = dr["serviceName"].ToString(),
                                    FirstName = dr["FirstName"].ToString(),
                                    LastName = dr["LastName"].ToString()

                                });
                            }
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
