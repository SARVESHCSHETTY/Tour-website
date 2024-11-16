using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourUserEditProfile : System.Web.UI.Page
    {
         
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Registration where emailid='" + Session["Email"] + "'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    txtname.Text = rd["username"].ToString();
                    txtemailid.Text = rd["emailid"].ToString();
                    txtcontact.Text = rd["contact"].ToString();
                    //string pp = rd["ProfilePicture"].ToString();
                    // ProfilePicture.ImageUrl = pp;
                    txtnpass.Text = rd["cpass"].ToString();
                }
                rd.Close();
                con.Close();
            }

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            //if (ProfilePictureUpload.HasFile)
            //{
            //    string fileName = Path.GetFileName(ProfilePictureUpload.FileName);
            //    string filePath = Server.MapPath("~/images/" + fileName);
            //    ProfilePictureUpload.SaveAs(filePath);
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand("update employer set ProfilePicture=@pp where email='" + emailid + "'", con);
            //    cmd.Parameters.AddWithValue("@pp", "~/images/" + fileName);
            //    cmd.ExecuteNonQuery();
            //    ProfilePicture.ImageUrl = "~/images/" + fileName;
            //    Session["pp"] = ProfilePicture.ImageUrl;  //for dashboard
            //    con.Close();

            //}

            //update password section
            if (txtnpass.Text == "")
            {

            }
            else
            {
                con.Open();
                SqlCommand cmd3 = new SqlCommand("update Registration set cpass=@pass where emailid='" + Session["Email"] + "'", con);
                cmd3.Parameters.AddWithValue("@pass", txtnpass.Text);
                cmd3.ExecuteNonQuery();
                con.Close();
                
            }

            //update other details section
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from Registration where emailid='" + Session["Email"] + "'", con);
            SqlDataReader rd1 = cmd1.ExecuteReader();
            if (rd1.HasRows)
            {
                rd1.Close();
                SqlCommand cmd2 = new SqlCommand("update Registration set username=@username,emailid=@emailid,contact=@contact  where emailid='" + Session["Email"] + "'", con);
                cmd2.Parameters.AddWithValue("@username", txtname.Text);
                cmd2.Parameters.AddWithValue("@emailid", txtemailid.Text);
                cmd2.Parameters.AddWithValue("@contact", txtcontact.Text);


                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('updated successfully');</script>");
                Session["username"] = txtname.Text; //for dashboard


            }
        }
    }

}
  