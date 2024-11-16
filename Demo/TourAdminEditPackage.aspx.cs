using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourAdminEditPackage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSourceID = null;
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            msglabel.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            Label package_id = GridView1.Rows[e.RowIndex].FindControl("Label10") as Label;
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
            string updatedata = "delete from Package where  packageid = " + package_id.Text;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            msglabel.Text = "Row data has been deleted successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            con.Close();

        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            Label package_id = GridView1.Rows[e.RowIndex].FindControl("Label2") as Label;
            TextBox place = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox description = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            Label perperson = GridView1.Rows[e.RowIndex].FindControl("label1") as Label;
            TextBox stayamount = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox foodamount = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox noofdays = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            TextBox noofnights = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
            TextBox busamount = GridView1.Rows[e.RowIndex].FindControl("TextBox7") as TextBox;
            TextBox caramount = GridView1.Rows[e.RowIndex].FindControl("TextBox8") as TextBox;
            con.Open();
            FileUpload imageUpload = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("imageUpload");
            string path = "~/images/";
            if (imageUpload.HasFile)
            {
                path += imageUpload.FileName;
                imageUpload.SaveAs(MapPath(path));
            }
            else
            {
                Image image = (Image)GridView1.Rows[e.RowIndex].FindControl("image");
                path = image.ImageUrl;
            }

            SqlCommand cmd = new SqlCommand("update Package set place='" + place.Text + "',description='" + description.Text + "',perperson='" + perperson.Text + "',stayamount='" + stayamount.Text + "',foodamount='" + foodamount.Text + "',busamount='" + busamount.Text + "',caramount='" + caramount.Text + "',noofdays='" + noofdays.Text + "',noofnights='" + noofnights.Text + "',image='" + path + "' where packageid='" + Convert.ToInt32(package_id.Text) + "'", con);
            cmd.ExecuteNonQuery();
            msglabel.Text = "Row data has been updated successfully";
            con.Close();
            GridView1.EditIndex = -1;
            GridView1.DataSourceID = null;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            msglabel.Text = "";

        }
    }
}