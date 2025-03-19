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
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        

            if (!IsPostBack)
            {
                BindCategoryRepeter();
            }
        }

        private void BindCategoryRepeter()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblCategory", con))
                {
                    using (SqlDataAdapter sds = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sds.Fill(dt);
                        rptrCategory.DataSource = dt;
                        rptrCategory.DataBind();
                    }
                }

            }
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblCategory(CatName) values('" + txtCategory.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Category Added Successfully'); </script>");
                txtCategory.Text = string.Empty;
                con.Close();
                //lblMsg.Text = "Registration Successfully done";
                //lblMsg.ForeColor = System.Drawing.Color.Red;
                txtCategory.Focus();

            }
        }
    }
}