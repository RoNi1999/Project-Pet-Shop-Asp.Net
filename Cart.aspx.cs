using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;

namespace Pet_Shoping
{
    public partial class Cart : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void btnCart2_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}
