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
    public partial class RecoverPassword : System.Web.UI.Page
    {
        String GUIDvalue;
        DataTable dt = new DataTable();
        int Uid;
        protected void Page_Load(object sender, EventArgs e)
        {
        
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                con.Open();
                GUIDvalue = Request.QueryString["id"];
                if(GUIDvalue !=null)
                {
                    SqlCommand cmd = new SqlCommand("select * from ForgotPass where Id=@Id",con);
                    cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    
                    sda.Fill(dt);
                    if(dt.Rows.Count!=0)
                    {
                        Uid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                    else
                    {
                        lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                    }
                   
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
            if(!IsPostBack)
            {
                if(dt.Rows.Count!=0)
                {
                    txtConfirmPass.Visible = true;
                    txtNewPass.Visible = true;
                    lblNewPassword.Visible = true;
                    lblConfirmPass.Visible = true;
                    btnResetPass.Visible = true;
                    
                }
                else
                {
                    lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void txtNewPass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtConfirmPass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            if(txtNewPass.Text!="" && txtConfirmPass.Text!="" && txtNewPass.Text==txtConfirmPass.Text)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update tblUsers set Password=@p where Uid=@Uid", con);
                    cmd.Parameters.AddWithValue("@p", txtNewPass.Text);
                    cmd.Parameters.AddWithValue("@Uid", Uid);
                    cmd.ExecuteNonQuery();



                    SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where Uid='" + Uid + "'");
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script> alret('Password Reset Successfully Done'); </script>");
                    Response.Redirect("~/singin.aspx");

                }
            }
        }
    }
}