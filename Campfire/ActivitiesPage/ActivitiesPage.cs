using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Campfire.ActivitiesPage
{
    public class ActivityPage
    {
        private string type { get; set; }
        private int page { get; set; }
        public ActivityPage (string _type, int _page)
        {
            type = _type;
            page = _page;
        }
        public DataTable getData()
        {
            // Get Data from SQL and store Data in DataTable table
            string strConn = ConfigurationManager.ConnectionStrings
                ["CampfireConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand
                ("SELECT * FROM Activities", conn);

            DataSet result = new DataSet();

            SqlDataAdapter daActivity = new SqlDataAdapter(cmd);

            conn.Open();

            daActivity.Fill(result, "ActivityTable");

            conn.Close();

            DataTable table = result.Tables["ActivityTable"];

            return table;
  
        }
    }
}