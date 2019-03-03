using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Books : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(Session["New"]!= null){
            Label_Welcome.Text = "Welcome " + Session["New"].ToString();
        }else{
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button_Logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }


    protected void Button_Search_Click(object sender, EventArgs e)
    {

    }
}