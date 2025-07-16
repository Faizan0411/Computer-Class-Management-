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
using System.Text;
using System.Data.SqlClient;


public partial class BatchesDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);
    string bID;
    string teBid;
    DateTime sdt;
    DateTime edt;
    DateTime Dsdate;
    DateTime DEdate; 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            con.Open();
            MultiView1.ActiveViewIndex = 3;
            SqlCommand cmd = new SqlCommand("select * from tbCrsDetail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cmbCourse.Items.Add(dr[2].ToString());
                cmbSelCourse.Items.Add(dr[2].ToString());
                crseforedit.Items.Add(dr[2].ToString());
            }
            dr.Close();


            //SqlCommand cmdC = new SqlCommand("select crID from tbCrsDetail where subCrs='" + cmbSelCourse.SelectedValue.ToString() + "'", con);
            //SqlDataReader drc = cmdC.ExecuteReader();
            //drc.Read();
            //string tecid = "";
            //tecid = drc[0].ToString();
            //drc.Close();

            //SqlCommand cmd1 = new SqlCommand("select * from tbBatch where cid ='"+tecid +"'", con);
            //SqlDataAdapter da = new SqlDataAdapter(cmd1);
            //DataSet ds = new DataSet();
            //da.Fill(ds);

            //GridView3.DataSource = ds;
            //GridView3.DataBind();
            //MultiView1.ActiveViewIndex = 2;
           con.Close();


        }
    }
 

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select count(*)as count from tbBatch", con);
      
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        DataRow dr;
        da.Fill(ds);
        dt = ds.Tables[0];
        int temp = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString())+1;

        string bID = "B" +temp;
        string days = "";
        for (int k = 0; k < lstDay.Items.Count; k++)
        {
            if (lstDay.Items[k].Selected == true)
            {
                days = days + lstDay.Items[k].Text;
                days = days + ",";
            }

        }
        string[] str = days.Split(',');
        
        string[] name = cmbFaculty.Text.Split(' ');

        string fc = "";
        string[] fname = cmbFaculty.Text.Split(' ');

        SqlCommand cmd1 = new SqlCommand();
        //SqlCommand cmd3 = new SqlCommand("select crID from tbCrsDetail where subCrs='" + cmbCourse.SelectedValue.ToString() + "'", con);
        //SqlDataReader dr2 = cmd3.ExecuteReader();
        SqlCommand cmdFid = new SqlCommand("select fcID from tbfaculty where fname='" + fname[0].ToString() + "' And lname='" + fname[1].ToString() + "'", con);
        SqlDataReader drFid = cmdFid.ExecuteReader();
                string fcID = "";
        while (drFid.Read())
        {
            fcID = drFid[0].ToString();
        }
        drFid.Close();
        StringBuilder sqlQuery = new StringBuilder();
     
        SqlCommand cmd2 = new SqlCommand("select fcID from tbfaculty where fname='" + name[0].ToString() + "'", con);
        
        SqlCommand cmd4 = new SqlCommand("select * from tbBatch ", con);
        SqlDataReader dr4 = cmd4.ExecuteReader();

        DateTime stime = Convert.ToDateTime(cmbStTime.SelectedValue.ToString());
        DateTime etime = Convert.ToDateTime(cmbEndtime.SelectedValue.ToString());

        TimeSpan Dtime = etime.Subtract(stime);
        int min = 0;
        min = (((Dtime.Hours) * 60) + Dtime.Minutes);

       // dr1.Read();
        int day=0;
        
        
        while (dr4.Read())
        {
            //dr4.Close();
            TimeSpan span = Calendar3.SelectedDate.Subtract(Calendar1.SelectedDate);
    
       
            day = span.Days;
            

          
            
            string te = dr4[7].ToString();
             Dsdate = Convert.ToDateTime(dr4[4].ToString());
            DEdate = Convert.ToDateTime(dr4[5].ToString());
            DateTime Fdate = Convert.ToDateTime(Calendar1.SelectedDate);
            DateTime Edate = Convert.ToDateTime(Calendar3.SelectedDate);

            DateTime DStime = Convert.ToDateTime(dr4[1].ToString());
            DateTime DEtime = Convert.ToDateTime(dr4[2].ToString());

            DateTime SStime = Convert.ToDateTime(cmbStTime.SelectedValue.ToString());
            DateTime SEtime = Convert.ToDateTime(cmbEndtime.SelectedValue.ToString());

            DStime = DStime.AddSeconds(-1 * DStime.Second);
            DEtime = DEtime.AddSeconds(-1 * DEtime.Second);

            SStime = SStime.AddSeconds(-1 * SStime.Second);
            SEtime = SEtime.AddSeconds(-1 * SEtime.Second);


            
            if (dr4[7].ToString() == fcID)
            {
              //  if (dr4[4].ToString() > txtStDate.ToString())
                if((DateTime.Compare(Dsdate,Fdate)<0) && (DateTime.Compare(DEdate,Fdate)>0))
                {
                    if ((DateTime.Compare(DStime, SStime) < 0) && (DateTime.Compare(DEtime, SStime) > 0))
                    {
                        Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' Batch is full !!!')</script> "); 
                    }
 
                }
              //  else if (DateTime.Compare(Ddate, Fdate) > 0)
                //{
                //}
              

                if (dr4[1].ToString() == cmbStTime.SelectedValue.ToString() && dr4[2].ToString() == cmbEndtime.SelectedValue.ToString())
                {
                    
                    Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' Batch already exist  !!!')</script> ");
                }
                else 
                {
                    break; 
                }
            }
        }
        dr4.Close();

        SqlCommand cmd3 = new SqlCommand("select crID from tbCrsDetail where subCrs='" + cmbCourse.SelectedValue.ToString() + "'", con);
        SqlDataReader dr2 = cmd3.ExecuteReader();
        if ((day >= 30) && (day <= 90) && (min >= 60) && (min <= 120))
        {


            while (dr2.Read())
            {
                Label23.Text = dr2[0].ToString();
                sqlQuery.Append("insert into tbBatch values");
                sqlQuery.Append("('" + bID + "',");
                sqlQuery.Append("'" + cmbStTime.Text + "',");
                sqlQuery.Append("'" + cmbEndtime.Text + "',");
                sqlQuery.Append("'" + str[0].ToString() + "',");
                sqlQuery.Append("'" + Calendar1.SelectedDate.Date.ToShortDateString() + "','");
                sqlQuery.Append("" + Calendar3.SelectedDate.Date.ToShortDateString() + "',");
                sqlQuery.Append("'" + dr2[0].ToString() + "',");
                sqlQuery.Append("'" + fcID + "')");
            }
            dr2.Close();
            cmd1.CommandText = sqlQuery.ToString();
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('New Batch is inserted Succesfuly!!!')</script> ");
        }
        else
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Please Enter Valid Time Or Date!!!')</script> ");
        }
        //else
        //{
        //    Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' !Batch already exists!!')</script> ");
        //}


        // int i = cmbFaculty.
       //fc = dr1[0].ToString();
       // dr1.Close();

        // SqlCommand cmd1 = new SqlCommand("insert into tbBatch values('" + bID + "','" + cmbStTime.Text + "','" + cmbEndtime.Text + "','" + str[0].ToString() + "','" + Calendar1.SelectedDate.Month + "','" + Calendar1.SelectedDate.Month + "','" + cmbCourse.Text + "','" + fc + "')", con);
        //SqlCommand cmd1 = new SqlCommand();
        //SqlCommand cmd3 = new SqlCommand("select crID from tbCrsDetail where subCrs='"+ cmbCourse.SelectedValue.ToString()+"'", con);
        //SqlDataReader dr2 = cmd3.ExecuteReader();
        //StringBuilder sqlQuery = new StringBuilder();
        //while (dr2.Read())
        //{
        //    Label23.Text = dr2[0].ToString();
        //    sqlQuery.Append("insert into tbBatch values");
        //    sqlQuery.Append("('" + bID + "',");
        //    sqlQuery.Append("'" + cmbStTime.Text + "',");
        //    sqlQuery.Append("'" + cmbEndtime.Text + "',");
        //    sqlQuery.Append("'" + str[0].ToString() + "',");
        //    sqlQuery.Append("'" + Calendar1.SelectedDate.Date.ToShortDateString() + "','");
        //    sqlQuery.Append("" + Calendar3.SelectedDate.Date.ToShortDateString() + "',");
        //    sqlQuery.Append("'" + dr2[0].ToString() + "',");
        //    sqlQuery.Append("'" + fc + "')");
        //}
        //dr2.Close();

        //cmd1.CommandText = sqlQuery.ToString();
        //cmd1.Connection = con;
        //cmd1.ExecuteNonQuery();
        //Page.RegisterStartupScript("onload", "<script language='javascript'>alert('New Batch is inserted Succesfuly!!!')</script> ");
        con.Close();
       



    }
    protected void cmbCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbfaculty", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string name = dr[1].ToString() + " " + dr[2].ToString();
            cmbFaculty.Items.Add(name);
            cmbfcID.Items.Add(dr[0].ToString());
        }
        dr.Close();

        //SqlCommand cmdC = new SqlCommand("select crID from tbCrsDetail where subCrs='" + cmbSelCourse.SelectedValue.ToString() + "'", con);
        //SqlDataReader drc = cmdC.ExecuteReader();
        //drc.Read();
        //string tecid = "";
        //tecid = drc[0].ToString();
        //drc.Close();

        //SqlCommand cmd1 = new SqlCommand("select * from tbBatch where cid ='" + tecid + "'", con);
        //SqlDataAdapter da = new SqlDataAdapter(cmd1);
        //DataSet ds = new DataSet();
        //da.Fill(ds);

        //GridView3.DataSource = ds;
        //GridView3.DataBind();
        //MultiView1.ActiveViewIndex = 2;
        con.Close();
    }

    protected void cmbSelCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
      //hghg
        con.Open();
        
        SqlCommand cmd = new SqlCommand("select * from tbBatch a  join tbfaculty b on a.fcID=b.fcID where cid='" + cmbSelCourse.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();
    
        lblC.Visible = true;
        lblC1.Visible = true;
        lblC.Text = cmbSelCourse.Text;
      //  cmbSelCourse.Text = "--Select Course--";

       
        
        SqlCommand cmdC = new SqlCommand("select crID from tbCrsDetail where subCrs='" + cmbSelCourse.SelectedValue.ToString() + "'", con);
        SqlDataReader drc = cmdC.ExecuteReader();
        drc.Read();
        string tecid = "";
        tecid = drc[0].ToString();
        drc.Close();

        SqlCommand cmd1 = new SqlCommand("select a.bid,b.fname,b.lname,a.sttime,a.endtime,a.stDate,a.endDate from tbBatch a ,tbfaculty b where a.cid ='" + tecid + "'And a.fcid=b.fcID And endDate > '"+DateTime.Now.ToString() +"' ", con);
        SqlDataAdapter dab = new SqlDataAdapter(cmd1);
        DataSet dsb = new DataSet();
        dab.Fill(dsb);
       
        GridView3.DataSource = dsb;
        GridView3.DataBind();
        MultiView1.ActiveViewIndex = 3;
        con.Close();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbBatch where bid ='" + e.CommandArgument.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string name = dr[1].ToString() + " " + dr[2].ToString();
            // cmbCourse.Items.Add(name);
            cmbfcID2.Items.Add(name);
        }
        if (e.CommandName == "Edit")
        {

        }
        con.Close();
    }
    protected void lnkAddBatch_Click(object sender, EventArgs e)
    {
        
        MultiView1.ActiveViewIndex = 2;

    }
    protected void lnkEditBatch_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void imgStDate_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void imgEndDate_Click(object sender, ImageClickEventArgs e)
    {
        Calendar3.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtStDate.Text = Calendar1.SelectedDate.Day + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Year;
        Calendar1.Visible = false;

    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        txtEndDate.Text = Calendar3.SelectedDate.Day + "-" + Calendar3.SelectedDate.Month + "-" + Calendar3.SelectedDate.Year;
        Calendar3.Visible = false;
       
    }
    protected void Calendar4_SelectionChanged(object sender, EventArgs e)
    {
        txtStDate0.Text = Calendar4.SelectedDate.Day + "-" + Calendar4.SelectedDate.Month + "-" + Calendar4.SelectedDate.Year;
        Calendar4.Visible = false;
    }
    protected void Calendar5_SelectionChanged(object sender, EventArgs e)
    {
        txtEndDate0.Text = Calendar5.SelectedDate.Day + "-" + Calendar5.SelectedDate.Month + "-" + Calendar5.SelectedDate.Year;
        Calendar5.Visible = false;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
    protected void btnCancel0_Click(object sender, EventArgs e)
    {

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {

    }
    protected void cmbFaculty_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }




    protected void crseforedit_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select a.bid,b.fname,b.lname,a.sttime,a.endtime,a.stDate,a.endDate from tbBatch a , tbfaculty b ,tbCrsDetail c where a.fcid=b.fcID And a.cid=c.crID And c.subCrs='" + crseforedit.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Close();
       

    }
    protected void cmbfcID0_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void cmbFaculty0_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {

        con.Open();
        MultiView1.ActiveViewIndex = 1;
        SqlCommand cmd = new SqlCommand("select * from tbfaculty", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string name = dr[1].ToString() + " " + dr[2].ToString();
            cmbFaculty0.Items.Add(name);
           // cmbfcID.Items.Add(dr[0].ToString());
        }
        dr.Close();
        SqlCommand cmdcrse = new SqlCommand("select * from tbCrsDetail", con);
        SqlDataReader drcrse = cmdcrse.ExecuteReader();
        while (drcrse.Read())
        {
            cmbCourse0.Items.Add(drcrse[2].ToString());
           // cmbSelCourse.Items.Add(dr[2].ToString());
            //crseforedit.Items.Add(dr[2].ToString());
        }
        drcrse.Close();
      
            
        



    }
   
    protected void btnModedit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void imgEstdate_Click(object sender, ImageClickEventArgs e)
    {
        Calendar4.Visible = true;
    }
    protected void imgEenddate_Click(object sender, ImageClickEventArgs e)
    {
        Calendar5.Visible = true;
    }

    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    //    con.Open();
        if (e.CommandName.ToString() == "Batch")
        {
            MultiView1.ActiveViewIndex = 1;
            SqlCommand cmd = new SqlCommand("select b.bid,c.subCrs,f.fname,f.lname,b.sttime,b.endtime,b.days,b.stDate,b.endDate from tbBatch b,tbfaculty f,tbCrsDetail c where c.crID=b.cid And b.fcid=f.fcID And  b.bid ='" + e.CommandArgument.ToString() + "' ", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            dr.Read();

                    teBid= dr[0].ToString();
                    string name = dr[2].ToString() + " " + dr[3].ToString();
                    cmbFaculty0.SelectedValue=name;
                    cmbCourse0.SelectedValue=dr[1].ToString();
                    cmbStTime0.SelectedValue=dr[4].ToString();
                    cmbEndtime0.SelectedValue=dr[5].ToString();
                    lstDay0.SelectedValue=dr[6].ToString();
                    string sda = dr[7].ToString();
                    txtStDate0.Text = sda.Substring(0, 10);
                    Calendar4.SelectedDate = Convert.ToDateTime(dr[7].ToString()); 
                    string eda = dr[8].ToString();
                    Calendar5.SelectedDate = Convert.ToDateTime(dr[8].ToString());
                    txtEndDate0.Text = eda.Substring(0, 10);
                    
                    
                    //Session["Batch"] = e.CommandArgument.ToString();
                
            
            dr.Close();
        }
        con.Close();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        con.Open();
        
        StringBuilder sqlQuery = new StringBuilder();
        string[] fname = cmbFaculty0.Text.Split(' ');
        SqlCommand cmd1 = new SqlCommand();
      
        SqlCommand cmdFid = new SqlCommand("select fcID from tbfaculty where fname='" + fname[0].ToString() + "' And lname='" + fname[1].ToString() + "'", con);
        SqlDataReader drFid = cmdFid.ExecuteReader();
        string fcID = "";
        while (drFid.Read())
        {
            fcID = drFid[0].ToString();
        }
        drFid.Close();

        SqlCommand cmdC = new SqlCommand("select crID from tbCrsDetail where subCrs='" + cmbCourse0.SelectedValue.ToString() + "'", con);
        SqlDataReader drc = cmdC.ExecuteReader();
        drc.Read();
        string tecid = "";
        tecid = drc[0].ToString();
        drc.Close();
        
        SqlCommand cmd4 = new SqlCommand("select * from tbBatch ", con);
        SqlDataReader dr4 = cmd4.ExecuteReader();
        
        
        
        DateTime stime = Convert.ToDateTime(cmbStTime0.SelectedValue.ToString());
        DateTime etime = Convert.ToDateTime(cmbEndtime0.SelectedValue.ToString());

        TimeSpan Dtime = etime.Subtract(stime);
        int min = 0;
        min = (((Dtime.Hours) * 60) + Dtime.Minutes);

       // dr1.Read();
        int day=0;
        
        
        while (dr4.Read())
        {
            //dr4.Close();
            TimeSpan span = Calendar5.SelectedDate.Subtract(Calendar4.SelectedDate);
    
       
            day = span.Days;
            

          
            
            string te = dr4[7].ToString();
             Dsdate = Convert.ToDateTime(dr4[4].ToString());
            DEdate = Convert.ToDateTime(dr4[5].ToString());
            DateTime Fdate = Convert.ToDateTime(Calendar4.SelectedDate);
            DateTime Edate = Convert.ToDateTime(Calendar5.SelectedDate);

            DateTime DStime = Convert.ToDateTime(dr4[1].ToString());
            DateTime DEtime = Convert.ToDateTime(dr4[2].ToString());

            DateTime SStime = Convert.ToDateTime(cmbStTime0.SelectedValue.ToString());
            DateTime SEtime = Convert.ToDateTime(cmbEndtime0.SelectedValue.ToString());

            DStime = DStime.AddSeconds(-1 * DStime.Second);
            DEtime = DEtime.AddSeconds(-1 * DEtime.Second);

            SStime = SStime.AddSeconds(-1 * SStime.Second);
            SEtime = SEtime.AddSeconds(-1 * SEtime.Second);

             if (dr4[7].ToString() == fcID)
            {
              //  if (dr4[4].ToString() > txtStDate.ToString())
                if((DateTime.Compare(Dsdate,Fdate)<0) && (DateTime.Compare(DEdate,Fdate)>0))
                {
                    if ((DateTime.Compare(DStime, SStime) < 0) && (DateTime.Compare(DEtime, SStime) > 0))
                    {
                        Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' Batch is full !!!')</script> "); 
                    }
 
                }
              //  else if (DateTime.Compare(Ddate, Fdate) > 0)
                //{
                //}
              

                if (dr4[1].ToString() == cmbStTime0.SelectedValue.ToString() && dr4[2].ToString() == cmbEndtime0.SelectedValue.ToString())
                {
                    
                    Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' Batch already exist  !!!')</script> ");
                }
                else 
                {
                    break; 
                }
            }
        }
        dr4.Close();

        SqlCommand cmd3 = new SqlCommand("select crID from tbCrsDetail where subCrs='" + cmbCourse0.SelectedValue.ToString() + "'", con);
        SqlDataReader dr2 = cmd3.ExecuteReader();
        if ((day >= 30) && (day <= 90) && (min >= 60) && (min <= 120))
        {

            while (dr2.Read())
            {
                //Label23.Text = dr2[0].ToString();
                sqlQuery.Append("update tbBatch set ");
                sqlQuery.Append("sttime=");              
                sqlQuery.Append("'" + cmbStTime0.Text + "',");
                sqlQuery.Append("endtime=");              
                sqlQuery.Append("'" + cmbEndtime0.Text + "',");
                sqlQuery.Append("days=");              
                sqlQuery.Append("'" + lstDay0.Text + "',");
                sqlQuery.Append("stDate=");              
                sqlQuery.Append("'" + Calendar4.SelectedDate.Date.ToShortDateString() + "',");
                sqlQuery.Append("endDate=");
                sqlQuery.Append("'" + Calendar5.SelectedDate.Date.ToShortDateString() + "',");
             //   sqlQuery.Append("endDate=");              
             //   sqlQuery.Append("'" + Calendar5.SelectedDate.Date.ToShortDateString() + "','");
                sqlQuery.Append("cid=");              
                sqlQuery.Append("'" + tecid + "',");
                sqlQuery.Append("fcid=");              
                sqlQuery.Append("'" + fcID + "'");
                sqlQuery.Append("  where bid=");
                sqlQuery.Append("'" + teBid + "'");
            }
            dr2.Close();
            cmd1.CommandText = sqlQuery.ToString();
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' Batch is Updated Succesfuly!!!')</script> ");
            con.Close();
        }

            
    }
}
