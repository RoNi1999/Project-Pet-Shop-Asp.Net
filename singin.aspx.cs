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
    public partial class singin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if(!IsPostBack)
            {
                if(Request.Cookies["UNAME"] !=null && Request.Cookies["UPWD"]!=null)
                {
                    txtUsername.Text= Request.Cookies["UNAME"].Value;
                    TxtPass.Text= Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;
                }
            }

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@pwd", TxtPass.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUsername.Text;
                        Response.Cookies["UPWD"].Value = txtUsername.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype == "User")
                    {
                        Session["Username"] = txtUsername.Text;
                        Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();
                        Session["getFullName"] = dt.Rows[0]["name"].ToString();
                        //Session["Mobile"] = dt.Rows[0]["Mobile"].ToString();
                        Session["LoginType"] = "User";
                        if (Request.QueryString["rurl"] != null)
                        {
                            if (Request.QueryString["rurl"] == "cart")
                            {
                                Response.Redirect("Cart.aspx");
                            }

                            if (Request.QueryString["rurl"] == "PID")
                            {
                                string myPID = Session["ReturnPID"].ToString();
                                Response.Redirect("PetView.aspx?PID=" + myPID + "");
                            }
                        }

                        else
                        {
                            Response.Redirect("UserHome.aspx?UserLogin=YES");
                        }
                    }
                    else
                    {
                        //lblError.Text = "invalid UserName & Password";
                    }

                    if (Utype == "Admin")
                    {
                        Session["Username"] = txtUsername.Text;
                        Response.Redirect("~/adminhome.aspx");
                    }


                    //Response.Write("<script> alert('Login Successfully done'); </script>");
                    clr();
                    con.Close();
                    // lblMsg.Text = "Registration Successfully done";
                    //lblMsg.ForeColor = System.Drawing.Color.Red;

                }
            }
        }

        private void clr()
        {
            TxtPass.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtUsername.Focus();
        }
    }
}