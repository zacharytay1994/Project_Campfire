using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Campfire.ActivityDesc
{
    public partial class ActivityDesc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string s = Request.QueryString["field1"];
            lbl_activityid.Text = Session["ActivityID"].ToString();
        }
    }
}