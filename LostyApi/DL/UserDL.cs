using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LostyApi.DL
{
    public class UserDL
    {

        public static string cs = ConfigurationManager.ConnectionStrings["losty"].ConnectionString;
        public static SqlConnection connection = new SqlConnection(cs);
        public DataTable count()
        {
            connection.Open();
            string query = "select * from tblUsers";

            SqlCommand sc = new SqlCommand(query, connection);
            SqlDataAdapter da = new SqlDataAdapter(sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;




        }



    }


}