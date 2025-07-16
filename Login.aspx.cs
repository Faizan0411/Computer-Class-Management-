using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"].ToString());
    int flag=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Response.Expires = -1;
        {
            txtUname.Focus();
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetAllowResponseInBrowserHistory(false);
        }

 
    }

   
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from tbAdmin",con);
        SqlDataReader dr1=cmd1 .ExecuteReader ();
        while (dr1.Read())
        {
            if (txtUname.Text == dr1[0].ToString() && txtPwd.Text == dr1[1].ToString())
            {
                flag = 1;
                Session["ID"] = dr1[0].ToString();
                Response.Redirect("AdminPage.aspx");

            }
        }
        dr1.Close();
        SqlCommand cmd = new SqlCommand("select * from tbStudentLogin", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (txtUname.Text == dr[0].ToString () && txtPwd.Text == dr[1].ToString ())
            {
                flag = 1;
                Session["ID"] = dr[0].ToString();
                //SqlCommand cmd1 = new SqlCommand("update tb");
                Response.Redirect("StdntPage.aspx");
                
            }
        }
        if (flag == 0)
        {
            Label3.Visible = true ;
        }
        dr.Close();
    }
    protected void txtUname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtPwd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void lnkRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        
    }
    protected void txtUname_TextChanged1(object sender, EventArgs e)
    {
    }
   
    protected void lnkbtnFP_Click(object sender, EventArgs e)
    {
        Response.Redirect("passwordrecovery.aspx");
    }
}
