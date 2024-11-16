using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourAdminForgot : System.Web.UI.Page
    {
        string randomcode;
       
        public static string to;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnotp_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select count(*) from Admin where emailid='" + txtemailid.Text + "'", con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (temp == 1)
            {
                string from, pass, messagebody;
                Random rand = new Random();
                randomcode = (rand.Next(999999)).ToString();
                MailMessage message = new MailMessage();
                to = (txtemailid.Text).ToString();
                from = "sarveshbkr@gmail.com";
                pass = "edijsazubcxvjlfh";
                messagebody = " Your Reset code is " + randomcode;
                message.To.Add(to);
                message.From = new MailAddress(from);
                message.Body = messagebody;
                message.Subject = "Password Reset Code";
                SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                smtp.EnableSsl = true;
                smtp.Port = 587;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(from, pass);
                try
                {
                    smtp.Send(message);
                    Response.Write("<script>alert('Code Send Sucessfully')</script>");
                   TextBox1.Text= randomcode;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Write("<script>alert('You are not Admin')</script>");
            }
        }

        protected void btnverify_Click(object sender, EventArgs e)
        {
            
            if (TextBox1.Text== (txtotp.Text).ToString())
            {
                //to = txtemailid.Text;
                Session["emailid"] = txtemailid.Text;
                Response.Redirect("TourAdminReset.aspx");

            }
            else
            {
                Response.Write("<script>alert('Wrong otp')</script>");

            }
        
        }
    }
}