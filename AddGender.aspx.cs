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
    public partial class Genser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        

            if (!IsPostBack)
            {
                BindGenderRepeter();
            }
        }

        private void BindGenderRepeter()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblGender", con))
                {
                    using (SqlDataAdapter sds = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sds.Fill(dt);
                        rptrGender.DataSource = dt;
                        rptrGender.DataBind();
                    }
                }

            }
        }

        protected void btnAddGender_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblGender(GenderName) values('" + txtGender.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Gender Added Successfully'); </script>");
                txtGender.Text = string.Empty;
                con.Close();
                txtGender.Focus();

            }
            BindGenderRepeter();
        }
    }
}