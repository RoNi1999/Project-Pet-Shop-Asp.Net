using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Pet_Shoping
{
    public partial class AddBrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        

            if(!IsPostBack)
            {
                BindBrandRepeter();
            }
        }

        private void BindBrandRepeter()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblBrands", con))
                {
                    using (SqlDataAdapter sds=new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sds.Fill(dt);
                        rptrBrand.DataSource = dt;
                        rptrBrand.DataBind();
                    }
                }

            }
        }

        protected void btnAddBrand_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblBrands(Name) values('" + txtBrand.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Brand Added Successfully'); </script>");
                txtBrand.Text = string.Empty;
                con.Close();
                //lblMsg.Text = "Registration Successfully done";
                //lblMsg.ForeColor = System.Drawing.Color.Red;
                txtBrand.Focus();

            }            
        }
    }
}