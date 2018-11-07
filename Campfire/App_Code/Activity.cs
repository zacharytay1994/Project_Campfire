using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Campfire
{
    public class Activity
    {
        public int activityID { get; set; }
        public string activityDescription { get; set; }
        public string activityCategory { get; set; }
        public string activityExplanation { get; set; }
        public string activityList { get; set; }
        public string activityPhoto { get; set; }

        public int activityAdd()
        {
            //Read connection string "ePortfolioConnectionString" from web.config file.
            string strConn = ConfigurationManager.ConnectionStrings["eventplanner"].ToString();

            //Instantiate a SqlConnection object with the Connection String read.
            SqlConnection conn = new SqlConnection(strConn);

            //Instantiate a SqlCommand object, supply it with an INSERT SQL statement
            //which will return the auto-generated staffID after insertation,
            //and the connection object for connecting to the database.
            SqlCommand cmd = new SqlCommand
                             ("INSERT INTO Student (Name, Course, EmailAddr, MentorID, Photo)" +
                             "OUTPUT INSERTED.StudentID " +
                             "VALUES (@name, @course, @email, @mentor, @photo)", conn);

            //Define the parameters used in SQL statement, value for each parameter
            //is retrieved from respective class's property.
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@course", course);
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@mentor", mentorID);
            cmd.Parameters.AddWithValue("@photo", photo);

            //A connection to database must be opened before any operations made.
            conn.Open();

            //ExectureScalar is used to retrieve the auto-generated
            //StudentID after exectuing the INSERT SQL statement
            int id = (int)cmd.ExecuteScalar();

            //A connection should be closed after operations.
            conn.Close();

            //Return id when no error occurs.
            return id;
        }
    }
}