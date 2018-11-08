﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Campfire.App_Code;

namespace Campfire.App_Code
{
    public class Activity
    {
        public int activityID { get; set; }
        public string activityName { get; set; }
        public string activityDescription { get; set; }
        public string category { get; set; }
        public string activityExplanation { get; set; }
        public string link { get; set; }
        public string activityPhoto { get; set; }

        public int activityAdd()
        {
            //Read connection string "ePortfolioConnectionString" from web.config file.
            string strConn = ConfigurationManager.ConnectionStrings["EventPlannerConnectionString"].ToString();

            //Instantiate a SqlConnection object with the Connection String read.
            SqlConnection conn = new SqlConnection(strConn);

            //Instantiate a SqlCommand object, supply it with an INSERT SQL statement
            //which will return the auto-generated staffID after insertation,
            //and the connection object for connecting to the database.
            SqlCommand cmd = new SqlCommand
                             ("INSERT INTO Activities (ActivityName, ActivityDesc, Category, ActivityExp, Link)" +
                             "OUTPUT INSERTED.ActivityID " +
                             "VALUES (@name, @desc, @cat, @expla, @link)", conn);

            //Define the parameters used in SQL statement, value for each parameter
            //is retrieved from respective class's property.
            cmd.Parameters.AddWithValue("@name", activityName);
            cmd.Parameters.AddWithValue("@desc", activityDescription);
            cmd.Parameters.AddWithValue("@cat", category);
            cmd.Parameters.AddWithValue("@expla", activityExplanation);
            cmd.Parameters.AddWithValue("@link", link);

            //A connection to database must be opened before any operations made.
            conn.Open();

            //ExectureScalar is used to retrieve the auto-generated
            //ID after exectuing the INSERT SQL statement
            int id = (int)cmd.ExecuteScalar();

            //A connection should be closed after operations.
            conn.Close();

            //Return id when no error occurs.
            return id;
        }
    }
}