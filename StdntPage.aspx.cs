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

public partial class StdntPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"].ToString());
    SqlDataReader dr;
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Page"] == "Home")
        {
            multiview1.ActiveViewIndex = 0;
        }
        if (Session["Page"] == "Modify")
        {
            multiview1.ActiveViewIndex = 1;
        }
        //multiview1.ActiveViewIndex = 2;
        if (!IsPostBack)
        {
            multiview1.ActiveViewIndex = 0;

        }
        if (Session["Page"] == "Batch")
        {
            lnkBatch_Click(sender, e);
            UpdatePanel1.Update();
        }
       

        //{
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);

        //    con.Open();
        //    cmd.CommandText = "select * from tbRegister";
        //    cmd.Connection = con;
        //    dr = cmd.ExecuteReader();
        //    if (Session["ID"].ToString () == "")
        //    {
        //        Response.Redirect("Login.aspx");
        //    }
        //    while (dr.Read())
        //    {

        //        if (Session["ID"].ToString() == dr[1].ToString())
        //        {
        //            lblName.Text = dr["fname"].ToString();
        //        }
        //    }
        //    con.Close();
        //}


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select path from tbBook", con);
        //SqlDataReader dr = 
        // dr.Read();
        // string path = cmd.ExecuteScalar().ToString();
        Response.ContentType = "doc";
        Response.AddHeader("content-disposition", "attachment;filename=New Microsoft Word Document.doc");
        Response.TransmitFile(@"H:\New folder\instituet mgmt\Upload\New Microsoft Word Document.doc");
        //string FilePath = Page.MapPath("Upload/" + path);
        // Response.WriteFile(FilePath);
        Response.End();

    }


    protected void lnkCourse_Click(object sender, EventArgs e)
    {
        multiview1.ActiveViewIndex = 1;  
        //multiview1.ActiveViewIndex = 2;
        
    }
    protected void lnkBatch_Click(object sender, EventArgs e)
    {
        multiview1.ActiveViewIndex = 0;
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select b.bid,b.stDate,b.endDate,b.days,b.sttime,b.endtime,f.fname from tbBatch b,tbfaculty f,tbStudInfo s where b.bid=s.bID AND b.fcid=f.fcID AND s.stdID='" + Session["ID"].ToString() + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        try
        {
            #region To Bind Data in Details View3
            da.Fill(ds);
            DetailsView3.DataSource = ds;
            DetailsView3.DataBind();
            TextBox tx1 = (TextBox)DetailsView3.Rows[0].Cells[0].FindControl("TxtBID");
            TextBox tx2 = (TextBox)DetailsView3.Rows[1].Cells[0].FindControl("TxtBStD");
            TextBox tx3 = (TextBox)DetailsView3.Rows[2].Cells[0].FindControl("TxtBEnddt");
            TextBox tx4 = (TextBox)DetailsView3.Rows[3].Cells[0].FindControl("TxtDays");
            TextBox tx5 = (TextBox)DetailsView3.Rows[4].Cells[0].FindControl("TxtBStime");
            TextBox tx6 = (TextBox)DetailsView3.Rows[5].Cells[0].FindControl("TxtBEtime");
            TextBox tx7 = (TextBox)DetailsView3.Rows[6].Cells[0].FindControl("TxtFname");

            dr = cmd2.ExecuteReader();
            while (dr.Read())
            {
                tx1.Text = dr[0].ToString();

                tx2.Text = dr[1].ToString();
                tx3.Text = dr[2].ToString();
                tx4.Text = dr[3].ToString();
                tx5.Text = dr[4].ToString();
                tx6.Text = dr[5].ToString();
                tx7.Text = dr[6].ToString();


            }
            dr.Close();
            con.Close();
            #endregion
        }
        catch (Exception ex)
        {
          //  Response.Write(ex.Message);
        }

    }


    
    protected void lnkStartE_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmdDate = new SqlCommand("select b.endDate from tbBatch b , tbStudInfo s where s.stdID='" + Session["ID"] + "' And s.bid=b.bid", con);
        SqlDataReader drDate = cmdDate.ExecuteReader();
        drDate.Read();
        DateTime dtEDate = Convert.ToDateTime(drDate[0].ToString());
        DateTime dtTdate = Convert.ToDateTime(DateTime.Now.ToString());
        TimeSpan span = dtTdate.Subtract(dtEDate);
        int day = span.Days;
        drDate.Close();

        SqlCommand cmdexam = new SqlCommand("select * from tbStudInfo where stdID='" + Session["ID"] + "'", con);
        SqlDataReader dr = cmdexam.ExecuteReader();
        dr.Read();
        if (dr[12].ToString() != "cr8" && dr[12].ToString() != "cr9" && dr[12].ToString() != "cr5")
        {
            Page.RegisterStartupScript("onClick", "<script language='javascript'>alert('You r not eligible for exam!!!')</script> ");
        }
        else
        {
            //if (day <= 30 && day >= 0)
           // {
                Response.Redirect("Exampage1.aspx");
           // }
           // else
           // {
                Page.RegisterStartupScript("onClick", "<script language='javascript'>alert('You r not eligible for exam!!!')</script> ");
            
           // }
        }
        con.Close();
 }
    protected void lnkShowP_Click(object sender, EventArgs e)
    {
        multiview1.ActiveViewIndex = 4;
        con.Open();
      //  SqlCommand cmd1 = new SqlCommand("select L.security_que, L.security_ans,I.fname,I.lname,I.address,I.city,I.pcode,I.phno,I.cellno,I.gender,I.emailID,I.bdate,I.qua from tbStudInfo I ,tbStudentLogin L where I.stdID='" + Session["ID"] + "'And L.stdID='" + Session["ID"] + "' ", con);
      
        SqlCommand cmd = new SqlCommand("select * from tbStudInfo where stdID='" + Session["ID"] + "' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        DataSet ds = new DataSet();
        da.Fill(ds);
 
        DetailsView2.DataSource = ds;
        DetailsView2.DataBind();

        SqlCommand cmd1 = new SqlCommand("select * from tbStudentLogin  where stdID='" + Session["ID"] + "' ", con);
        dr = cmd1.ExecuteReader();


        dr.Read();
        string a = dr[2].ToString();
        if (dr[2].ToString() != "" && dr[3].ToString() != "")
        {

            TextBox tl = (TextBox)DetailsView2.Rows[12].Cells[0].FindControl("txtAns");
            DropDownList dl = (DropDownList)DetailsView2.Rows[11].Cells[0].FindControl("ddlSQ");

            dl.Enabled = false;
            tl.Enabled = false;
        }

        dr.Close();
       
        con.Close();
    }
    protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void DetailsView2_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {

        if (e.CommandName == "Edit")
        {
            TextBox tx1 = (TextBox)DetailsView2.FindControl("txtFame");
            TextBox tx2 = (TextBox)DetailsView2.FindControl("txtLname");
            TextBox tx3 = (TextBox)DetailsView2.FindControl("txtAdd");
            TextBox tx4 = (TextBox)DetailsView2.FindControl("txtCity");
            TextBox tx5 = (TextBox)DetailsView2.FindControl("txtpcode");
            TextBox tx6 = (TextBox)DetailsView2.FindControl("txtPhno");
            TextBox tx7 = (TextBox)DetailsView2.FindControl("txtCell");
            TextBox tx8 = (TextBox)DetailsView2.FindControl("txtMail");
            TextBox tx9 = (TextBox)DetailsView2.FindControl("txtBdate");
            TextBox tx10 = (TextBox)DetailsView2.FindControl("txtQua");
            DropDownList tx11 = (DropDownList)DetailsView2.FindControl("ddlSQ");
            TextBox tx12 = (TextBox)DetailsView2.FindControl("txtAns");


            con.Open();
            SqlCommand cmd1 = new SqlCommand("update tbStudInfo set fname='" + tx1.Text + "',lname='" + tx2.Text + "',address='" + tx3.Text + "',city='" + tx4.Text + "',pcode='" + tx5.Text + "',phno='" + tx6.Text + "',cellno='" + tx7.Text + "',emailID='" + tx8.Text + "',Bdate='" + tx9.Text + "',qua='" + tx10.Text + "' where stdID='" + e.CommandArgument.ToString() + "'", con);
            cmd1.ExecuteNonQuery();

            SqlCommand cmd2 = new SqlCommand("update tbStudentLogin set security_que='" + tx11.SelectedValue.ToString() + "',security_ans='" + tx12.Text + "' where stdID='" + e.CommandArgument.ToString() + "'", con);
            cmd2.ExecuteNonQuery();
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Student information is Updated Succesfully!!!')</script> ");
            con.Close();
            //SqlCommand cmd2 = new SqlCommand("select * from tbStudInfo ", con);
            //SqlDataAdapter da = new SqlDataAdapter(cmd2);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //DetailsView2.DataSource = ds;
            //DetailsView2.DataBind();
           
            //multiview1.ActiveViewIndex = 0;
        }
    }
    protected void DetailsView2_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        {
        }
    }
    protected void DetailsView3_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {

    }
    protected void LnkQuery_Click(object sender, EventArgs e)
    {

    }
    protected void LnkQuery0_Click(object sender, EventArgs e)
    {
        multiview1.ActiveViewIndex = 3;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}

