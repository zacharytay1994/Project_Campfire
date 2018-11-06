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
                List<string> typesList = new List<string> { "CategoryOne", "CategoryTwo" };
                Session["session_type"] = typesList;
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

            List<string> _typeList = Session["session_type"] as List<string>;
            string nameControlString;
            Label control;
            //Label control2;
            int j = Convert.ToInt32(_page)*8;
            for (int i = 1; i<=24; i+=3)
            {
                int k = 0;
                foreach (string _typestring in _typeList)
                {
                    if (_typestring == table.Rows[j]["Category"].ToString())
                    {
                        nameControlString = "Label" + i.ToString();
                        control = (Label)FindControlRecursive(Page, nameControlString);
                        if (control != null)
                        {
                            if (j < table.Rows.Count)
                            {
                                control.Text = table.Rows[j]["Name"].ToString();
                            }
                        }
                        nameControlString = "Label" + (i + 1).ToString();
                        control = (Label)FindControlRecursive(Page, nameControlString);
                        if (control != null)
                        {
                            if (j < table.Rows.Count)
                            {
                                control.Text = table.Rows[j]["Description"].ToString();
                            }
                        }
                        nameControlString = "Label" + (i + 2).ToString();
                        control = (Label)FindControlRecursive(Page, nameControlString);
                        if (control != null)
                        {
                            if (j < table.Rows.Count)
                            {
                                control.Text = table.Rows[j]["Category"].ToString();
                                j++;
                                break;
                            }
                        }
                    }
                    k++;
                    if (k==_typeList.Count)
                    {
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

        protected void cbl_categories_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> _typesList = cbl_categories.Items.Cast<ListItem>()
                .Where(i => i.Selected) as List<string>;

            Session["session_type"] = _typesList;
            //string[] _typesArray = Session["session_type"] as string[];
        }
    }
}