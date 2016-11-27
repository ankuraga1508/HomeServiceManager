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
    public class ServiceRepository : IServiceRepository
    {
        public Boolean AddService(Service serviceDetails)
        {
            try
            {
                string serviceName = serviceDetails.serviceName;
                string serviceDesc = serviceDetails.serviceDesc;
                int serviceStatus = serviceDetails.serviceStatus;

                using (MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["connectionString"]))
                {
                   using (MySqlCommand cmd = new MySqlCommand("addservice"))
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("id", null);
                        cmd.Parameters.AddWithValue("serviceName", serviceName);
                        cmd.Parameters.AddWithValue("servicesDesc", serviceDesc);
                        cmd.Parameters.AddWithValue("IsActive", serviceStatus);
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

        public Boolean updateService(Service serviceDetails)
        {
            try
            {
                int id = serviceDetails.id;
                string serviceName = serviceDetails.serviceName;
                string serviceDesc = serviceDetails.serviceDesc;
                int serviceStatus = serviceDetails.serviceStatus;

                using (MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["connectionString"]))
                {
                    using (MySqlCommand cmd = new MySqlCommand("addservice"))
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("id", id);
                        cmd.Parameters.AddWithValue("serviceName", serviceName);
                        cmd.Parameters.AddWithValue("servicesDesc", serviceDesc);
                        cmd.Parameters.AddWithValue("IsActive", serviceStatus);
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

        public List<Service> GetAllServices()
        {
            var serviceList = new List<Service>();

            try
            {
                using (MySqlCommand cmd = new MySqlCommand("getallservices"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    Database db = new Database();
                    using (MySqlDataReader dr = db.SelectQry(cmd))
                    {
                        while (dr.Read())
                        {
                            serviceList.Add(new Service()
                            {
                                serviceName = dr["serviceName"].ToString(),
                                serviceDesc = dr["servicesDesc"].ToString(),
                                serviceStatus = Int32.Parse(dr["IsActive"].ToString()),
                                id = Int32.Parse(dr["id"].ToString()),
                            });
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                var objErr = new ErrorClass(ex, "");
                objErr.LogException();
            }
            return serviceList;
        }
    }
}
