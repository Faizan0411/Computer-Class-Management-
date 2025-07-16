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
//    protected void Page_Load(object sender, EventArgs e)
//    {
//        if (!IsPostBack)
//        {
           
//            MultiView1.ActiveViewIndex = 2;
//        }
//    }
 protected void lnKStart_Click(object sender, EventArgs e)
  {
     Session["no"] = "1";
         lblNo.Text = "1";
         lblNo1.Text = "1";
         con.Open();
         MultiView1.ActiveViewIndex = 1;
         SqlCommand cmd = new SqlCommand("select cid from studifo where stdid='" + Session["ID"] + "'", con);
         SqlDataAdapter da = new SqlDataAdapter(cmd);         DataSet ds = new DataSet();
         DataTable dt = new DataTable();
         DataRow dr;
         da.Fill(ds);
         dt = ds.Tables[0];
          dr = dt.Rows[Convert .ToInt32 (Session ["no"])];
            
          lblQue.Text = dr[2].ToString();
          RadioButton1.Text = dr[3].ToString();
          RadioButton2.Text = dr[4].ToString();
           RadioButton3.Text = dr[5].ToString();
           RadioButton4.Text = dr[6].ToString();
        

        con.Close();
     }  

  
    protected void lnkNext_Click(object sender, EventArgs e)
    {
        int i=Convert .ToInt32 (Session ["no"]);
        lblNo.Text = i.ToString ();
        lblNo1.Text = i.ToString ();
        if (RadioButton1.Checked == true)
        {
            ans[i] =1;
        }
        if (RadioButton2.Checked == true)
        {
            ans[i] = 2;
        }
        if (RadioButton3.Checked == true)
        {
            ans[i] = 3;
            //} if (RadioButton4.Checked == true)
            //{
            //    ans[i] = 4;
         }

           RadioButton1.Checked = false;
            RadioButton2.Checked = false;

            RadioButton3.Checked = false;
            //  RadioButton4.Checked = false;

            i = i + 1;
            Session["no"] = i.ToString();
            con.Open();
            MultiView1.ActiveViewIndex = 1;
            SqlCommand cmd = new SqlCommand("select * from tbQpaper", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            DataRow dr;
            da.Fill(ds);
            dt = ds.Tables[0];

            dr = dt.Rows[i];

            lblQue.Text = dr[2].ToString();
           // Net, C#.Text = dr[3].ToString();
            RadioButton2.Text = dr[4].ToString();
            RadioButton3.Text = dr[5].ToString();
            //RadioButton4.Text = dr[6].ToString();


            con.Close();
        
        

    }

    protected void lnkPrev_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= 2; i++)
        {
            lblQue.Text = lblQue.Text + ans[i].ToString();
        }
    }
//    protected void Button16_Click(object sender, EventArgs e)
//    {

//    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
