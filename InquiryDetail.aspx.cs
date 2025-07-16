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
using System.Net.Mail;

public partial class InquiryDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        //MultiView1.ActiveViewIndex = 0;
      // First Name:AnkitaLast Name:GajjarAddress:23,Ambika Appt.Navrangpura.City:AhmedabadPincode:344678Phone No:26758765Cell No:987634344Gender:femaleBirth Date:5/6/1989EmailID:ankita111@yahoo.comQualification:B.E.I.T.Course:Asp.Net
         
        if (!IsPostBack)
         {
            MultiView1.ActiveViewIndex = 0;
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbInquiry", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
       }

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "D")
        {
            con.Open();
            MultiView1.ActiveViewIndex = 1;
            SqlCommand cmd = new SqlCommand("select * from tbInquiry where inqID='"+e.CommandArgument +"'",con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lblFname14.Text = dr[1].ToString();
            lblLname.Text = dr[2].ToString();
            //lblCourse.Text = dr[3].ToString();
            lblAdd.Text = dr[3].ToString();
            lblCity.Text = dr[4].ToString();
            lblPcode.Text = dr[5].ToString();
            lblPhno.Text = dr[6].ToString();
            lblCell.Text = dr[7].ToString();
            lblgen.Text = dr[8].ToString();
            lblBdate.Text = dr[10].ToString();
            lblMail.Text = dr[9].ToString();
            lblComment.Text = dr[11].ToString();
            dr.Close();
            con.Close();
            

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void Btnreply_Click(object sender, EventArgs e)
    {
        Session["Inq"] = lblMail.Text.ToString();
       // Response.Redirect("MsgSend.aspx");
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tbInquiry where fname='" + lblFname14.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.DataBind();
        MultiView1.ActiveViewIndex = 0;
        con.Close();
      
    }
}

