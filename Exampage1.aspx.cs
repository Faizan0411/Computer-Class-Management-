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

public partial class ExamPage : System.Web.UI.Page
{

    public static int[] ans = new int[20];
    SqlConnection con = new SqlConnection(ConfigurationManager .AppSettings ["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            MultiView1.ActiveViewIndex = 1;
        }
    }
    protected void lnKStart_Click(object sender, EventArgs e)
    {
    con.Open();
   
    SqlCommand cmdQid = new SqlCommand("Select cID from tbStudInfo where stdID='" + Session["ID"] + "'", con);
    SqlDataReader drQid = cmdQid.ExecuteReader();
    drQid.Read();
         string Qid = drQid[0].ToString();
         Session["QID"] = Qid;
    drQid.Close();
    SqlCommand cmdQname = new SqlCommand("Select subCrs from tbCrsDetail where crID='" + Qid.ToString() + "'", con);
    SqlDataReader drQname = cmdQname.ExecuteReader();
    drQname.Read();
    string Qname = drQname[0].ToString();
    drQname.Close();
    
   
    SqlCommand cmd=new SqlCommand("Insert into tbQuiz values('"+Qid.ToString()+"','"+Qname.ToString()+"','"+Session["ID"]+"')",con);
    cmd.ExecuteNonQuery();
    Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Submitted......')</script>");
    con.Close();


    Response.Redirect("Exam_questions.aspx");


    }

  
    protected void lnkNext_Click(object sender, EventArgs e)
    {
       
        

    }
    
    protected void lnkPrev_Click(object sender, EventArgs e)
    {
        //for (int i = 0; i <= 2; i++)
        //{
        //    lblQue.Text = lblQue.Text + ans[i].ToString();
        //}
    }
    protected void Button16_Click(object sender, EventArgs e)
    {

    }
protected void  RadioButton1_CheckedChanged(object sender, EventArgs e)
{

}
}
