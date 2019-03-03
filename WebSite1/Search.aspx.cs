using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            LabelWelcome.Text = "Welcome " + Session["New"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand com = new SqlCommand();
        string searchquery = "select * from Books where BookName like '%' + @BookName+ '%' or Author '%' + @Author + '%'";
        com.CommandText = searchquery;
        com.Connection = conn;
        com.Parameters.AddWithValue("BookName", TextSearch.Text);
        com.Parameters.AddWithValue("Author", TextSearch.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(com);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        conn.Close();
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
}