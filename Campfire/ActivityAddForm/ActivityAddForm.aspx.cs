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
                if (cblCat.SelectedIndex != 0)
                {
                    // Create a new object
                    StudentC objStudent = new StudentC();

                    objStudent.name = txtName.Text;
                    objStudent.course = txtCourse.Text;
                    objStudent.Email = txtEmail.Text;
                    objStudent.mentorID = Convert.ToInt32(ddlMentor.SelectedValue.ToString());
                    objStudent.photo = "defaultpicture.jpg";

                    int id = objStudent.add();

                    string strValues = "";
                    strValues += "name=" + txtName.Text;
                    strValues += "&studentID=" + id.ToString();
                    strValues += "&course=" + txtCourse.Text;
                    strValues += "&eMail=" + txtEmail.Text;
                    //strValues += "&mentorID=" + txtMentor.Text;
                    strValues += "&mentorID=" + ddlMentor.SelectedValue.ToString();
                    strValues += "&photo=defaultpicture.jpg";
                    Response.Redirect("ConfirmAddStudent.aspx?" + strValues);
                }
            }
        }
    }
}