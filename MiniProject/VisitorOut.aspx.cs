using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{

    public partial class VisitorOut : System.Web.UI.Page
    {
        AssignmentDBEntities db = new AssignmentDBEntities();
        VisitorDetail vd = new VisitorDetail();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
            if (!Page.IsPostBack)
            {
                var data = (from t in db.VisitorDetails
                            where t.Status == "Signed In"
                            select new { t.VisitorId, t.Fname, t.Lname, t.Idtype, t.Idnum }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;
            int id = int.Parse(r.Cells[1].Text);
            var data = (from t in db.VisitorDetails
                       where (t.VisitorId == id && t.Status=="Signed In")
                       select t).SingleOrDefault();
            data.Status = "Signed Out";
            var res = db.SaveChanges();
            if (res > 0)
            {
                Label3.Visible = true;
                Label3.Text = "Successfully Checked Out";
                var data2 = (from t in db.VisitorDetails
                            where t.Status == "Signed In"
                            select new { t.VisitorId, t.Fname, t.Lname, t.Idtype, t.Idnum }).ToList();
                GridView1.DataSource = data2;
                GridView1.DataBind();
                TextBox1.Text = "";
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Error: Couldnt Signout";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (!(string.IsNullOrEmpty(TextBox1.Text)))
            {
                //use tryparse
                int id = int.Parse(TextBox1.Text);
                var data = (from t in db.VisitorDetails
                            where (t.VisitorId == id && t.Status=="Signed In")
                            select new { t.VisitorId,t.Fname, t.Lname, t.Idtype, t.Idnum }).ToList();
                if (data.Count == 0)
                {
                    Label3.Visible = true;
                    Label3.Text = "No Records Found With ID :" + id;
                }
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Please Enter ID or Name to search";
                
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            VisitorDetail vd = new VisitorDetail();
            if (!(string.IsNullOrEmpty(TextBox1.Text)))
            {
                string name = TextBox1.Text;
                var data = (from t in db.VisitorDetails
                           where (t.Fname == name && t.Status=="Signed In")
                           select new { t.VisitorId, t.Fname, t.Lname, t.Idtype, t.Idnum }).ToList();
                if (data.Count == 0)
                {
                    Label3.Visible = true;
                    Label3.Text = "No Records Found With Name :" + name;
                }
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Please Enter ID or Name to search";
                
            }
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}