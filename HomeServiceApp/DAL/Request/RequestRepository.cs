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
    }
}
