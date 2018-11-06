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
                Session["session_type"] = "all";
                Session["session_page"] = 0;
                lbl_pagenumber.Text = Session["session_page"].ToString();

                fillGrid(Session["session_type"], Session["session_page"]);
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

        public void fillGrid(object _type, object _page)
        {
            ActivityPage ap = new ActivityPage(_type, _page);
            DataTable table = ap.getData();

            string nameControlString;
            Label control;
            Label control2;
            int j = Convert.ToInt32(_page)*8;
            for (int i = 1; i<=16; i+=2)
            {
                nameControlString = "Label" + i.ToString();
                control = (Label)FindControlRecursive(Page, nameControlString);
                if (control != null)
                {
                    if (j < table.Rows.Count - 1)
                    {
                        control.Text = table.Rows[j]["Name"].ToString();
                    }
                }
                nameControlString = "Label" + (i+1).ToString();
                control2 = (Label)FindControlRecursive(Page, nameControlString);
                if (control2 != null)
                {
                    if (j < table.Rows.Count-1)
                    {
                        control2.Text = table.Rows[j]["Description"].ToString();
                        j++;
                    }   
                }
            }
        }

        protected void btn_previous_Click(object sender, EventArgs e)
        {
            int _page_number = Convert.ToInt32(Session["session_page"]);
            if (_page_number > 0)
            {
                _page_number--;
                Session["session_page"] = _page_number;
                lbl_pagenumber.Text = Session["session_page"].ToString();
                fillGrid(Session["session_type"], Session["session_page"]);
            }
        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            int _page_number = Convert.ToInt32(Session["session_page"]);
            _page_number++;
            Session["session_page"] = _page_number;
            lbl_pagenumber.Text = Session["session_page"].ToString();
            fillGrid(Session["session_type"], Session["session_page"]);
        }
    }
}