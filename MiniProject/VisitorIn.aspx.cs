using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        AssignmentDBEntities db = new AssignmentDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbResult.Visible = false;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string fname = tbfname.Text;
            string lname = tblname.Text;
            string company = tbcompany.Text;
            string visiting = tbvisit.Text;
            string idtype = ddlidtype.SelectedItem.ToString();
            string idnum = tbidnum.Text;
            string vnum = "";
            if (!(tbvnum.Text == null))
                vnum = tbvnum.Text;
            string contact = tbcno.Text;
            string purpose = tbpurpose.Text;
            VisitorDetail vd = new VisitorDetail();
            vd.Fname = fname;
            vd.Lname = lname;
            vd.Company = company;
            vd.Visiting = visiting;
            vd.Idtype = idtype;
            vd.Idnum = idnum;
            vd.Vnumber = vnum;
            vd.Contactno = contact;
            vd.Purpose = purpose;
            vd.Status = "Signed In";
            vd.ctime = DateTime.Now;
            db.VisitorDetails.Add(vd);
            lbResult.Visible = true;
            var res = db.SaveChanges();
            int id = vd.VisitorId;
            if (res > 0)
                lbResult.Text = "The Visitor's Details Has Been Saved Successfully with the Visitors ID :" + id;
            else
                lbResult.Text = "Fail";
            tbfname.Text = "";
            tblname.Text = "";
            tbcompany.Text = "";
            tbvisit.Text = "";
            ddlidtype.SelectedItem.Value = "Select";
            tbidnum.Text = "";
            tbvnum.Text = "";
            tbcno.Text = "";
            tbpurpose.Text = "";
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}