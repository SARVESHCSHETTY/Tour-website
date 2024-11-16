using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourAdminAddPackage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
        string id = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GeneratedAutoID();
            }

        }
        private void GeneratedAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(packageid) from Package", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtid.Text = id + i.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
            if (imageUpload.HasFile)
            {
                string filename = imageUpload.PostedFile.FileName;
                string filepath = "images/" + imageUpload.FileName;
                imageUpload.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);

                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Package values('" + txtid.Text + "','" + txtplace.Text + "','" + txtdescription.Text + "','" + txtperperson.Text + "','" + txtstayamount.Text + "','" + txtfoodamount.Text + "','" + txtnoofdays.Text + "','" + txtnoofnights.Text + "','" + txtbusamount.Text + "','" + txtcaramount.Text + "','" + filepath + "')", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('package added sucessfully')</script>");
                string redirectScript = "setTimeout(function() { window.location.href = 'TourAdminHome.aspx'; }, 1000);"; // Delay of 3000 milliseconds (3 seconds)
                ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);
                //Response.Redirect("ViewPackage.aspx");
                txtplace.Text = "";
                txtdescription.Text = "";
                txtstayamount.Text = "";
                txtfoodamount.Text = "";
                txtnoofdays.Text = "";
                txtnoofnights.Text = "";
                txtbusamount.Text = "";
                txtcaramount.Text = "";

            }
        }
    }
}