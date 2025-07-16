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

public partial class StudentDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager .AppSettings ["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from tbStudInfo where bid='"+cmbBacthID .Text +"'",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds) ;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            SqlCommand cmd = new SqlCommand("select * from tbBatch",con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cmbBacthID.Items.Add(dr[0].ToString ());
                cmbBatch1.Items.Add(dr[0].ToString ());
                cmbBatch.Items.Add(dr[0].ToString());
            }
            multiview1.ActiveViewIndex = 0;
            con.Close();
            
        }
        
    }
 

        
    protected void cmbBacthID_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from tbStudInfo where bid='" + cmbBacthID.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void lnkEditStud_Click(object sender, EventArgs e)
    {
        multiview1.ActiveViewIndex = 2;
        con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from tbStudInfo where bid='"+cmbBacthID .Text +"'",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds) ;
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();
    }

    protected void lnkAddStud_Click(object sender, EventArgs e)
    {
        multiview1.ActiveViewIndex = 1;
    }
   
    protected void cmdAdd_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from tbBatch where bid='"+cmbBatch .Text +"'",con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();
        //string course = dr["cid"].ToString();
        //string fac=dr["fcid"].ToString ();
        dr.Close();

        //lblBatch.Text = "B1";
        //lblCourse .Text ="C";
        //lblFc.Text = "Kruti Bhatt";

        /*1	stdID	varchar	50	1
0	pwd	varchar	50	1
0	fname	varchar	50	1
0	lname	varchar	50	1
0	address	varchar	50	1
0	city	varchar	50	1
0	pcode	int	4	1
0	phno	int	4	1
0	cellno	numeric	9	1 
0	gender	varchar	50	1
0	emailID	varchar	50	1
0	bdate	varchar	50	1
0	qua	varchar	50	1
0	cID	varchar	50	1
0	fcID	varchar	50	1
0	bID	varchar	50	1
0	query	varchar	100	1
        con.Open ();*/
        SqlCommand cf = new SqlCommand("Select cid,fcid from tbBatch where bid='" + cmbBatch.SelectedValue.ToString() + "'",con);
        SqlDataReader drcf = cf.ExecuteReader();
        drcf.Read();

        string tecourse = drcf[0].ToString();
        string teFaculty = drcf[1].ToString();
        drcf.Close();
        string str = ddlDate.SelectedValue.ToString() + "/" + ddlMonth.SelectedValue.ToString() + "/" + ddlYear.SelectedValue.ToString();
        SqlCommand  cmd = new SqlCommand ("insert into tbStudInfo values ('"+txtStID .Text +"','"+txtFname.Text  +"','"+txtLname .Text +"','"+txtAdd.Text +"','"+txtCity.Text +"','"+Convert.ToInt64(txtPcode.Text ) +"','"+Convert.ToInt64(txtPhno.Text) +"','"+Convert.ToInt64(txtCell.Text) +"','"+RadioButtonList1 .SelectedItem .Text +"','"+txtMailID .Text +"','"+str+"','"+txtQua .Text +"','"+tecourse +"','"+teFaculty+"','"+cmbBacthID.SelectedItem.ToString() +"')",con);
        cmd.ExecuteNonQuery ();

        SqlCommand cmdStuInfo = new SqlCommand("insert into tbStudentLogin values ('" + txtStID.Text + "','" + txtpwd.Text + "',null,null,'" + txtMailID.Text + "')", con);
        cmdStuInfo.ExecuteNonQuery();
        

        con.Close ();
        Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Student information is inserted Succesfully!!!')</script> ");
        multiview1.ActiveViewIndex = 0;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tbBatch");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "D")
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from tbStudInfo where stdID='"+e.CommandArgument .ToString ()+"'",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
            con.Close();
        }
    }
    protected void cmbBatch1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from tbStudInfo where bid='" + cmbBacthID.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        con.Close();

    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "E")
        {
           
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from tbStudInfo where stdID='" + e.CommandArgument.ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            Response.Write(ds.DataSetName.ToString());
      
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

            //SqlCommand cmd = new SqlCommand("select b.bid,c.subCrs,f.fname,f.lname,b.sttime,b.endtime,b.days,b.stDate,b.endDate from tbBatch b,tbfaculty f,tbCrsDetail c where c.crID=b.cid And b.fcid=f.fcID And  b.bid ='" + e.CommandArgument.ToString() + "' ", con);
            //SqlDataReader dr;
            //dr = cmd.ExecuteReader();
            //dr.Read();

            
            TextBox tx1 = (TextBox)DetailsView2.FindControl ("txtFame");
                            
             TextBox tx2 = (TextBox)DetailsView2.FindControl("txtLname");
             TextBox tx3 = (TextBox)DetailsView2.FindControl("txtAdd");
             TextBox tx4 = (TextBox)DetailsView2.FindControl("txtCity");
             TextBox tx5 = (TextBox)DetailsView2.FindControl("txtpcode");
             TextBox tx6 = (TextBox)DetailsView2.FindControl("txtPhno");
             TextBox tx7 = (TextBox)DetailsView2.FindControl("txtCell");
             TextBox tx8 = (TextBox)DetailsView2.FindControl("txtMail");
             TextBox tx9 = (TextBox)DetailsView2.FindControl("txtQua");
             con.Open();
             SqlCommand cmd1 = new SqlCommand("update tbStudInfo set fname='"+tx1.Text+"',lname='"+tx2.Text+"',address='" + tx3.Text + "',city='" + tx4.Text + "',pcode='" + tx5.Text + "',phno='" + tx6.Text + "',cellno='" + tx7.Text + "',emailID='" + tx8.Text + "',qua='" + tx9.Text + "' where stdID='"+e.CommandArgument.ToString()+"'" , con);
             cmd1.ExecuteNonQuery();
             con.Close();
             //SqlCommand cmd2 = new SqlCommand("select * from tbStudInfo ", con);
             //SqlDataAdapter da = new SqlDataAdapter(cmd2);
             //DataSet ds = new DataSet();
             //da.Fill(ds);
             //DetailsView2.DataSource = ds;
             //DetailsView2.DataBind();
             Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Student information is updated Succesfully!!!')</script> ");
             multiview1.ActiveViewIndex = 0;
            }
        }


    protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {

    }

    protected void DetailsView2_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {

    }
    protected void txtStID_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        //con.Open();
        //SqlCommand cmdcourse = new SqlCommand("select * from tbCrsDetail");
        //SqlDataReader dr = cmdcourse.ExecuteReader();
        //while (dr.Read())
        //{
        //    string crsname = dr[2].ToString();
        //    ddlcourse.Items.Add(crsname);

        //}
        //con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}

