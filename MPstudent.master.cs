using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class MPstudent : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"].ToString());
    SqlDataReader dr;
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            con.Open();
            cmd.CommandText = "select * from tbStudInfo";
            cmd.Connection = con;
            dr = cmd.ExecuteReader();
            if (Session["ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            while (dr.Read())
            {

                if (Session["ID"].ToString() == dr[0].ToString())
                {
                    lblName.Text = dr["fname"].ToString();
                }
            }
            dr.Close();
            con.Close();
        }
    }
        protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["ID"] = "";
        Response.Redirect("Login.aspx");
    }
    protected void lnkHome_Click(object sender, EventArgs e)
    {
        Session["Page"] = "Home";
        Response.Redirect("StdntPage.aspx");

    }
    protected void lnkmodify_Click(object sender, EventArgs e)
    {
        Session["Page"] = "Modify";
        Response.Redirect("ChngStudInfo.aspx"); 
    }
    protected void lnkBatch_Click(object sender, EventArgs e)
    {
        Session["Page"] = "Batch";
        Response.Redirect("StdntPage.aspx");
    
    }
    protected void lnkExam_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExamPage1.aspx");
    }
    protected void lnkResult_Click(object sender, EventArgs e)
    {
        Response.Redirect("Showresult.aspx");
    }
    protected void lnkchange_pass_Click(object sender, EventArgs e)
    {
        Response.Redirect("change_pass_student.aspx");
    }
}
