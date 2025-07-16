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

public partial class ExamDetail : System.Web.UI.Page
{
     
    SqlConnection con = new SqlConnection(ConfigurationManager .AppSettings ["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
//            SELECT        stdID, Date, QuizID, CA, IA, UA, Per, Res
//FROM            tbresult
//WHERE        (DATEDIFF(d, Date, ' 9/24/2009') < 7)
            multiview1.ActiveViewIndex = 1;
            
            SqlCommand cmd = new SqlCommand("select * from tbresult where datediff(d,Date,'"+DateTime.Now.ToString()+"') <= 7 ",con);
           SqlCommand cmd1 = new SqlCommand("select s.stdID, s.fname,s.lname,s.qua, r.stdID,r.Per,r.Res from tbStudInfo s,tbresult r where s.stdID=r.stdID", con);
           SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            //da.Fill(ds);
            da1.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            SqlCommand cmd2 = new SqlCommand("select * from tbCrsDetail",con);
            SqlDataReader dr = cmd2.ExecuteReader();
            

            while (dr.Read())
            {
                cmbCourse.Items.Add(dr[2].ToString());
                cmbCid.Items.Add(dr[0].ToString ());
            }
            con.Close();

        }

    }
    protected void lnkAdd_Click(object sender, EventArgs e)
    {
        multiview1.ActiveViewIndex = 0;
    }
    protected void lnkEditQ_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "4")
        {
            Label4.Visible = true;
            txtOpt4.Visible = true;
        }
        if (DropDownList1.Text == "5")
        {
            Label8.Visible = true;
            txtOpt5.Visible = true;
        }
    }


   
    protected void cmdAdd_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmdCr = new SqlCommand("Select crID from tbCrsDetail where subCrs='" + cmbCourse.SelectedValue.ToString() + "'",con);
        SqlDataReader Cr = cmdCr.ExecuteReader();
        Cr.Read();
        string crID = Cr[0].ToString();
        Cr.Close();
        //SqlCommand cmd1 = new SqlCommand("select * from tbQuestions",con);
        //SqlDataAdapter da = new SqlDataAdapter(cmd1);
        //DataSet ds = new DataSet();
        //DataTable dt = new DataTable();
        //da.Fill(ds);
        //dt = ds.Tables[0];
        //int id = dt.Rows.Count;
        //id++;
        //int i=cmbCourse .SelectedIndex ;
        //string cid=cmbCid .Items [i].Text ;
        //con.Close();
       
        SqlCommand cmd = new SqlCommand("insert into tbQuestions(QuizId,Quetitle,Opt1,Opt2,Opt3,Opt4,Answer) values('" + crID.ToString() + "','" + txtQue.Text + "','" + txtOpt1.Text + "','" + txtOpt2.Text + "','" + txtOpt3.Text + "','" + txtOpt4.Text + "','" + Convert.ToInt32(cmbAns.Text) + "')", con);
        cmd.ExecuteNonQuery();
        cmbCourse.Text = cmbCourse.Text;
        txtQue.Text = "";
        txtOpt1.Text = "";
        txtOpt2.Text = "";
        txtOpt3.Text = "";
        txtOpt4.Text = "";
        //txtOpt5.Text = "";


     con.Close ();
    }
    protected void cmbCid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void lblStdID_DataBinding(object sender, EventArgs e)
    {

    }
}
