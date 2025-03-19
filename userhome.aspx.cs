using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shoping
{
    public partial class userhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            BindCartNumber();
            if (Session["Username"]!= null)
            {
                btnlogout.Visible = true;
                btnlogin.Visible = false;
                lblsucess.Text = "Login Success, Welcome " + Session["Username"].ToString();
            }
            else
            {
                btnlogout.Visible = false;
                btnlogin.Visible = true;
                //Response.Redirect("~/singin.aspx");
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["Username"] = null;
            Response.Redirect("~/Default.aspx");
           
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signin.aspx");
            
        }

        public void BindCartNumber()
        {
           
        }
    }
}