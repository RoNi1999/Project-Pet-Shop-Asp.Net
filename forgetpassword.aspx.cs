using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace Pet_Shoping
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtemailid.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);


                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass (ID,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();

                    //send Reset link via Email 

                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Hi , " +Username+ ",<br/><br/>Click the Link to Reset your Password<br/> <br/> https://localhost:44327/RecoverPassword.aspx?id="+myGUID;                                


                    MailMessage PassRecMail = new MailMessage("thagsangathan@gmail.com", ToEmailAddress);
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";



                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("thagsangathan@gmail.com", "tridev@108");
                        client.Host = "smtp.gmail.com";
                        client.Port =587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;
                        client.Send(PassRecMail);
                    }



                    //---------------------




                    lblResetPassMsg.Text = "Reset Link Send ! Check Your Email For Reset Password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtemailid.Text = string.Empty;

                }
                else
                {
                    lblResetPassMsg.Text = "Oops! This Email Does Not Exits";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtemailid.Text = string.Empty;
                    txtemailid.Focus();
                }

            }

        }
    }
}