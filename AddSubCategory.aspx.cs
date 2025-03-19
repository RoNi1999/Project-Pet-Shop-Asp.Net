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
    public partial class AddSubCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       

            if(!IsPostBack)
            {
                BindMainCat();
                BindSubCategoryRepeter();
            }
        }

        private void BindSubCategoryRepeter()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select A.*,B.* from tblSubCategory A inner join tblCategory B on B.CatID=A.MainCatID", con))
                {
                    using (SqlDataAdapter sds = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sds.Fill(dt);
                        rptrSubCategory.DataSource = dt;
                        rptrSubCategory.DataBind();
                    }
                }

            }
        }

        protected void btnAddSubCategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblSubCategory(SubCatName,MainCatID) values('" + txtSubCategory.Text + "','"+ ddlMainCatID.SelectedItem.Value + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('SubCategory Added Successfully'); </script>");
                txtSubCategory.Text = string.Empty;
                con.Close();
                ddlMainCatID.ClearSelection();
                ddlMainCatID.Items.FindByValue("0").Selected = true;
                

            }
            BindSubCategoryRepeter();
        }

        private void BindMainCat()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count !=0)
                {
                    ddlMainCatID.DataSource = dt;
                    ddlMainCatID.DataTextField = "CatName";
                    ddlMainCatID.DataValueField = "CatID";
                    ddlMainCatID.DataBind();
                    ddlMainCatID.Items.Insert(0, new ListItem("-Select-", "0"));
                }

            }
        }
    }
}