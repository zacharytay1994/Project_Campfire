using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Campfire.Classes
{
    public class SQLFunctions : System.Web.UI.Page
    {
        public void AddRegisterData(string _name, string _username, string _email,
            string _password)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                    ["CampfireConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("INSERT INTO CampfireUsers " +
                "(Name, Username, Email, Password) VALUES (@name, @username," +
                "@email, @password)", conn);

            cmd.Parameters.AddWithValue("@name", _name);
            cmd.Parameters.AddWithValue("@username", _username);
            cmd.Parameters.AddWithValue("@email", _email);
            cmd.Parameters.AddWithValue("@password", _password);

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}