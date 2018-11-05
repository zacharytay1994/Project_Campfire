using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Campfire.ActivitiesPage
{
    public partial class ActivitiesPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string type = "all";
                int page = 0;

                fillGrid(type, page);
            }
        }

        public Control FindControlRecursive(Control _control, string _id)
        {
            if (_control.ID == _id) return _control;

            foreach (Control controlToSearch in _control.Controls)
            {
                Control controlToReturn = FindControlRecursive(controlToSearch, _id);
                if (controlToReturn != null) return controlToReturn;
            }
            return null;
        }

        public void fillGrid(string _type, int _page)
        {
            ActivityPage ap = new ActivityPage(_type, _page);
            DataTable table = ap.getData();

            string nameControlString;
            Label control;
            Label control2;
            int j = 0;
            for (int i = 1; i<=16; i+=2)
            {
                nameControlString = "Label" + i.ToString();
                control = (Label)FindControlRecursive(Page, nameControlString);
                if (control != null)
                {
                    control.Text = table.Rows[j]["Name"].ToString();
                }
                nameControlString = "Label" + (i+1).ToString();
                control2 = (Label)FindControlRecursive(Page, nameControlString);
                if (control2 != null)
                {
                    control2.Text = table.Rows[j]["Description"].ToString();
                    j++;
                }
            }
        }
    }
}