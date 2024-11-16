using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress(txtemailid.Text);
                    mailMessage.To.Add("sarveshshettybkr@gmail.com");
                    mailMessage.Subject = txtsub.Text;

                    mailMessage.Body = "<b>Sender name:</b>" + txtname.Text + "<br/>"
                        + "" + "<b>Sender Email:</b>" + txtemailid.Text + "<br/"
                         + "" + "<b>Sender PhoneNumber:</b>" + txtmobile.Text+ "<br/"
                        + "<b> Comments: </b>" + txtmsg.Text + "<br/>";
                    mailMessage.IsBodyHtml = true;

                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new System.Net.NetworkCredential("sarveshbkr@gmail.com", "edijsazubcxvjlfh");
                    smtpClient.Send(mailMessage);
                    Label1.Text = "Thank You For Contacting Us";
                    txtname.Enabled = false;
                    txtemailid.Enabled = false;
                    txtmobile.Enabled = false;
                    txtmsg.Enabled = false;
                    btn1.Enabled = false;
                }
            }
            catch(Exception ex)
            {
                Label1.ForeColor = System.Drawing.Color.White;
                Label1.ForeColor= System.Drawing.Color.Red;
                Label1.Text = "Some Thing Went Wrong !.Please Try again Later";
            }
        }
    }
}