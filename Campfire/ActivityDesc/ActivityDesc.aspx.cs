using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Campfire.ActivityDesc
{
    public partial class ActivityDesc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
<<<<<<< HEAD
            //string s = Request.QueryString["field1"];
            lbl_activityid.Text = Session["ActivityID"].ToString();
=======
            int actID = Convert.ToInt32(Request.QueryString["id"]);

            //Display Fields
            string strConn = ConfigurationManager.ConnectionStrings["CampfireConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Activities WHERE ActivityID = @actid", conn);
            cmd.Parameters.AddWithValue("@actid", actID);
            SqlDataAdapter daActivity = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daActivity.Fill(result, "Activities");
            conn.Close();
            
            lblTitle.Text = result.Tables[0].Rows[0]["ActivityName"].ToString();
            lblDesc.Text = result.Tables[0].Rows[0]["ActivityDesc"].ToString();
            lblExp.Text = result.Tables[0].Rows[0]["ActivityDesc"].ToString();
            lblLinks.Text = result.Tables[0].Rows[0]["Link"].ToString();

            //Display Categories
            cmd = new SqlCommand("SELECT * FROM Category INNER JOIN Activities ON Category.ActivityID = Activities.ActivityID WHERE Activities.ActivityID = @actid", conn);
            cmd.Parameters.AddWithValue("@actid", actID);
            SqlDataAdapter daCategory = new SqlDataAdapter(cmd);
            result = new DataSet();
            conn.Open();
            daCategory.Fill(result, "Category");
            conn.Close();

            //To be continued
>>>>>>> 04ca60caf83428628d8596f6f636cac840fecae7
        }
    }
}