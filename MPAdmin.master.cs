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

public partial class MPAdmin : System.Web.UI.MasterPage
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
            cmd.CommandText = "select * from tbAdmin";
            cmd.Connection = con;
            dr = cmd.ExecuteReader();
            if(Session["ID"]==null)
           //if (Session["ID"].ToString()=="")
            {
                Response.Redirect("Login.aspx");
            }
            while (dr.Read())
            {

              if (Session["ID"].ToString() == dr[1].ToString())
                {
                    //lblName.Text = dr[0].ToString();
                }
            }
            dr.Close();
            con.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       // Session["ID"] = "";
        Response.Redirect("Login.aspx");
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        //if (Menu1.SelectedValue == "0")
        //{
        //    Response.Redirect("InquiryDetail.aspx");
        //}
        //else if (Menu1.SelectedValue == "1")
        //{
        //    Session["Mode"] = "1";
        //    Response.Redirect("CoursesDetail.aspx");
        //}
        //else if (Menu1.SelectedValue == "2")
        //{
        //    Session["Mode"] = "2";
        //    Response.Redirect("CoursesDetail.aspx");
        //}
        //else if (Menu1.SelectedValue == "3")
        //{
        //    Session["Mode"] = "3";
        //    Response.Redirect("CoursesDetail.aspx");
        //}
        //else if (Menu1.SelectedValue == "4")
        //{
        //    Session["Mode"] = "1";
        //    Response.Redirect("FacultyDetail.aspx");
        //}
        //else if (Menu1.SelectedValue == "6")
        //{
        //    Session["Mode"] = "3";
        //    Response.Redirect("FacultyDetail.aspx");
        //}
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("InquiryDetail.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("CoursesDetail.aspx");

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("FacultyDetail.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentDetail.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("BatchesDetail.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExamDetail.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewsEvantUpdate.aspx");
    }
}
