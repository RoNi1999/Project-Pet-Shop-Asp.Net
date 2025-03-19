using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Shoping
{
    public partial class adminmasterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"]!=null)
            {
               // lblSuccess.Text = "Login Success, Welcome<b>" + Session["Username"].ToString() + "<b>";
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }

        protected void btnAdminlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/singin.aspx");
            Session["Username"] = null;
            
        }
    }
}