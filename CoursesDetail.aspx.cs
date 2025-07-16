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
public partial class CoursesDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);
  //  string course;
   // int flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbCrsDetail where course='" + cmbCrs.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
           // con.Open();
           // SqlCommand cmd = new SqlCommand("select * from tbCrsDetail",con );
           // SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    if (cmbCourse.Items.Count != 0)
            //    {
            //        for (int i = 0; i < cmbCourse.Items.Count; i++)
            //        {
            //            if (cmbCourse.Items[i].Text == dr[1].ToString())
            //            { flag = 1; }
            //            if (cmbCourse1.Items[i].Text == dr[1].ToString())
            //            { flag = 1; }
            //        }
            //    }

            //    if (flag == 0)
            //    {
            //        cmbCourse .Items.Add(dr[1].ToString());
            //        cmbCourse1.Items.Add(dr[1].ToString());
            //    }
            //    else { }
            //    flag = 0;
            //}
            MultiView1.ActiveViewIndex = 0;
            SqlCommand cmd1 = new SqlCommand("select * from tbCrsDetail",con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            DetailsView3.DataSource = ds1;
            DetailsView3.DataBind();
            //if (Session["Mode"].ToString () == "3")
            //{
            //    MultiView1.ActiveViewIndex = 0;
            //}
            //else if(Session ["Mode"].ToString ()=="1")
            //{
            //    MultiView1.ActiveViewIndex = 3;
            //}
            //else if (Session["Mode"].ToString() == "2")
            //{
            //    MultiView1.ActiveViewIndex = 2;
            //}
            
        }
    }
   
   
    //protected void BtnEdit_Click(object sender, EventArgs e)
    //{
    //    cmbSubcrs.Visible = false;
    //    txtSubcrs.Visible = true;
    //    cmbCourse .Visible = false;
    //    txtCrs .Visible = true;
    //    txtCrs.Text = cmbCourse.Text;
    //    txtSubcrs.Text = cmbSubcrs.Text;
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from tbCrsDetail where course='" + cmbCourse.Text + "' and subCrs='" + cmbSubcrs.Text + "'", con);
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    dr.Read();
    //    Label11.Text = dr[0].ToString();
    //    con.Close();
    //    dr.Close();

    //}
    //protected void cmbCourse_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    cmbSubcrs.Items.Clear();
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from tbCrsDetail where course='" + cmbCourse.Text + "'", con);
    //    SqlDataReader dr1;
    //    dr1 = cmd.ExecuteReader();
    //    while (dr1.Read())
    //    {
    //        cmbSubcrs.Items.Add(dr1[2].ToString());
    //    }
    //    dr1.Close();
    //    con.Close();
    //}
    //protected void btnUpdate_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("update tbCrsDetail set subCrs='"+txtSubcrs .Text +"'where crID='"+Label11 .Text +"' ",con);
    //    SqlCommand cmd1 = new SqlCommand("update tbCrsDetail set duration='" + txtDuration.Text + "'where crID='" + Label11.Text + "' ", con);
    //    SqlCommand cmd2 = new SqlCommand("update tbCrsDetail set fee='" + txtFee.Text + "'where crID='" + Label11.Text + "' ", con);
    //    cmd.ExecuteNonQuery();
    //    cmd1.ExecuteNonQuery();
    //    cmd2.ExecuteNonQuery();
    //    con.Close();
    //}
    //protected void cmbSubcrs_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from tbCrsDetail where course='" + cmbCourse.Text + "' and subCrs='"+cmbSubcrs .Text +"'", con);
    //    SqlDataReader dr1;
    //    dr1 = cmd.ExecuteReader();
    //    while (dr1.Read())
    //    {
    //        txtDuration.Text = dr1[3].ToString();
    //        txtFee.Text = dr1[4].ToString();
    //    }
    //    dr1.Close();
    //    con.Close();
    //}
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from tbCrsDetail",con);
        SqlDataAdapter da1 = new SqlDataAdapter (cmd1);
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();
        DataRow dr1;
        da1.Fill(ds1,"Table");
        dt1 = ds1.Tables["Table"];
        int n = dt1.Rows.Count;
        string id;
        if (n == 0)
        { 
            id = "cr1"; 
        }
        else
        {
            n = dt1.Rows.Count - 1;
            dr1 = dt1.Rows[n];
            string  n1 = dr1[0].ToString();
            int i =Convert .ToInt32 ( n1.Substring(2));
            i++;
            id = "cr" + i.ToString();
        }
        SqlCommand cmd = new SqlCommand("insert into tbCrsDetail values(@crID,@Course,@subCrs,@duration,@fee)",con);
        cmd.Parameters.AddWithValue("@crID",id);
      //  cmd.Parameters.AddWithValue("@Course",cmbCourse1 .Text );
     //  // cmd.Parameters.AddWithValue("@subCrs",txtSubcrs1 .Text );
     //   cmd.Parameters.AddWithValue("@duration",txtDuration1 .Text );
     //   cmd.Parameters.AddWithValue("@fee",txtFee1 .Text );
        cmd.ExecuteNonQuery();
        con.Close();

    }
  
    protected void cmbCrs_SelectedIndexChanged1(object sender, EventArgs e)
    {
     
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbCrsDetail where course='" + cmbCrs .Text  + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView2 .DataSource = ds;
        GridView2.DataBind();
        con.Close();
    }
    protected void DetailsView2_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        
        {
            con.Open();
            TextBox txt1 = (TextBox)DetailsView2.FindControl("txtSubCrs");
            TextBox txt2 = (TextBox)DetailsView2.FindControl("txtDuration");
            TextBox txt3 = (TextBox)DetailsView2.FindControl("txtFee");
                        SqlCommand cmd = new SqlCommand("update tbCrsDetail set subCrs='" + txt1.Text + "'where crID='" + Session["crID"].ToString () + "' ", con);
            SqlCommand cmd1 = new SqlCommand("update tbCrsDetail set duration='" + txt2.Text + "'where crID='" + Session["crID"].ToString () + "' ", con);
            SqlCommand cmd2 = new SqlCommand("update tbCrsDetail set fee='" + Convert.ToInt32(txt3.Text) + "'where crID='" + Session["crID"].ToString () + "' ", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Course Information Updated Successfuly')</script> ");
            
        }
    }
    protected void DetailsView3_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
       
       
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbCrsDetail", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            DataRow dr;
            da.Fill(ds);
            dt = ds.Tables[0];
            int[] cid = new int[100];
            int i;
            int max = 0;
            for (i = 0; i < dt.Rows.Count; i++)
            {
                dr = dt.Rows[i];
                string b = dr[0].ToString();
                b = b.Substring(2);
                cid[i] = Convert.ToInt32(b);
            }
            for (int k = 0; k < i+1; k++)
            {
                if (max < k)
                {
                    max = k;
                }
            }
            max++;
            string id = ("cr" + max).ToString();
        Page.RegisterStartupScript("onload", "<script>alert(id)</script>");
 
             DropDownList cmb = (DropDownList )DetailsView3.FindControl("cmbCrs3");
            TextBox txt2 = (TextBox)DetailsView3.FindControl("txtSubCrs2");
            TextBox txt3 = (TextBox)DetailsView3.FindControl("txtDuration2");
            TextBox txt4 = (TextBox)DetailsView3.FindControl("txtFee2");
       
            SqlCommand cmd1 = new SqlCommand("insert into tbCrsDetail values(@crID,@Course,@subCrs,@duration,@fee)", con);
            cmd1.Parameters.AddWithValue("@crID", id);
            cmd1.Parameters.AddWithValue("@Course", cmb .Text );
            cmd1.Parameters.AddWithValue("@subCrs", txt2.Text);
            cmd1.Parameters.AddWithValue("@duration", txt3.Text);
            cmd1.Parameters.AddWithValue("@fee",Convert .ToInt32 ( txt4.Text));
            cmd1.ExecuteNonQuery();
            con.Close();
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Course Information Inserted Successfuly')</script> ");
       
    }
    protected void lnkEdit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

    }
    protected void lnkAdd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void cmbCrs1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbCrsDetail where course='" + cmbCrs1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "E")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbCrsDetail where crID='"+e.CommandArgument .ToString ()+"'",con );
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DetailsView2.DataSource = ds;
            DetailsView2.DataBind();
            con.Close();
            Session["crID"] = e.CommandArgument.ToString();
            GridView1.Visible = false;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}
