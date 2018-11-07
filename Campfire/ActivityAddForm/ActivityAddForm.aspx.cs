using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Campfire
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitForm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (ddlCat.SelectedIndex != 0)
                {
                    // Create a new object
                    Activity objActivity = new Activity();

                    objActivity.activityName = activityName.Text;
                    objActivity.activityDescription = briefDescription.Text;
                    //objActivity.category = .Text;
                    objActivity.activityExplanation = txtExplanation.Text;
                    objActivity.link = txtLinks.Text;
                    objActivity.activityPhoto = "defaultpicture.jpg";

                    int id = objActivity.activityAdd();

                    string strValues = "";
                    strValues += "name=" + activityName.Text;
                    strValues += "&description=" + id.ToString();
                    //strValues += "&category=" + ;
                    strValues += "&explain=" + txtExplanation.Text;
                    strValues += "&link=" + txtLinks.Text;
                    strValues += "&photo=defaultpicture.jpg";
                    //Response.Redirect("ConfirmAddActivity.aspx?" + strValues);
                }
            }
        }

        protected void returnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomePage.aspx");
        }
    }
}