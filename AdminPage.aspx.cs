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
using System.IO;

public partial class AdminPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager .AppSettings ["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //multiview1.ActiveViewIndex = 0;
            //SqlCommand cmd = new SqlCommand("select * from tbStudInfo ",con);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //DataTable dt = new DataTable();
            ////DataRow dr;
            //da.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
        }
    }
    protected void lnkInquiry_Click(object sender, EventArgs e)
    {
        Response.Redirect("InquiryDetail.aspx");
    }
    protected void lnkCourses_Click(object sender, EventArgs e)
    {
        Response.Redirect("CoursesDetail.aspx");
    }
    protected void lnkFaculty_Click(object sender, EventArgs e)
    {

    }
    protected void lnkStudent_Click(object sender, EventArgs e)
    {

    }
    protected void lnkRegistration_Click(object sender, EventArgs e)
    {

    }
    protected void lnkExam_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    //protected void btnUpload_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    if (FileUpload1 .PostedFile != null)
    //    {
    //        HttpPostedFile file = FileUpload1.PostedFile;
    //        if (file.FileName != "")
    //        {
    //            string filename =FileUpload1 .FileName ;
    //            FileUpload1.PostedFile.SaveAs("D:\\13-3\\IMS1\\Upload\\" + filename);
    //         //   int idx;
    //            string bookname = filename.Substring(0, filename.Length - 4);
    //            SqlCommand cmdins = new SqlCommand("insert into tbBook (bookID,course,path ,name) values ('" + 1 + "','" + cmbCourse .Text + "','"+FileUpload1.FileName  +"','"+cmbCourse .Text +"') ", con );
    //            cmdins.ExecuteNonQuery();
                
    //        }
    //        con.Close();
    //    }
    //}
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select path from tbBook", con);
        //SqlDataReader dr = 
       // dr.Read();
        string path = cmd.ExecuteScalar().ToString ();
        Response.AppendHeader("content-disposition", "attachment; filename=" + path);
        Response.ContentType = "Application/doc";
        string FilePath = Page.MapPath("Upload/" + path);
        Response.WriteFile(FilePath);
        Response.End();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "D")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbStudInfo where stdID='"+e.CommandArgument .ToString ()+"' ",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DetailsView2.DataSource = ds;
            DetailsView2.DataBind();
            con.Close();
        }
    }
    protected void DetailsView2_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
 
        }
    }

    protected void DetailsView2_ModeChanged(object sender, EventArgs e)
    {

    }
    protected void DetailsView2_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void BtnReply_Click(object sender, EventArgs e)
    {
        
        TextBox tx1 = (TextBox)DetailsView2.FindControl ("txtMail");
        
        Session["Inq"] = tx1.Text;
        Response.Redirect("MsgSend.aspx");
    }
    protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}
