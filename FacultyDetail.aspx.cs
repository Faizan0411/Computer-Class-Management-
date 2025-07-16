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

public partial class FacultyDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);
    String[] str=new String[3];
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from tbfaculty", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = new DataTable();
            dt = ds.Tables[0];
            GridView3.DataSource = ds;
            GridView3.DataBind();
          //  GridView2.DataSource = ds;
         //   GridView2.DataBind();
            SqlCommand cmd = new SqlCommand("select * from tbCrsDetail ", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[2].ToString());
              // lstCourse.Items.Add(dr[2].ToString());
                DropDownList2.Items.Add(dr[2].ToString());
                drselcourse.Items.Add(dr[2].ToString());
               
            }
            con.Close();
            MultiView1.ActiveViewIndex = 1;
            ////if (Session["Mode"].ToString() == "1")
            ////{
            ////    MultiView1.ActiveViewIndex = 0;
            ////}
            ////if (Session["Mode"].ToString() == "3")
            ////{
            ////    MultiView1.ActiveViewIndex = 1;
            ////}
        }
    }
    protected void cmdSubmit_Click(object sender, EventArgs e)
    {

        
        for (int i = 0; i < DropDownList2.Items.Count; i++)
        {
            if (DropDownList2.Items[i].Selected == true)
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from tbfaculty", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                DataTable dt1 = new DataTable();
                DataRow dr;
                da1.Fill(ds1, "Table");
                dt1 = ds1.Tables["Table"];
                int n = dt1.Rows.Count;
                int id;
                if (n == 0)
                {
                    id = 1;
                }
                else
                {
                    n = dt1.Rows.Count;
                    n++;
                    id = n;
                }

                //  int id = 6;
                string str = lstDate.SelectedValue.ToString() + "/" + lstMonth.SelectedValue.ToString() + "/" + lstYear.SelectedValue.ToString();
                SqlCommand cmd = new SqlCommand("insert into tbfaculty values(@fcID,@fname,@lname,@address,@city,@pcode,@phno,@cellno,@gender,@emailID,'"+str+"',@qua,@experience,@salary)", con);
                cmd.Parameters.AddWithValue("@fcID", id);
                cmd.Parameters.AddWithValue("@fname", txtFname.Text);
                cmd.Parameters.AddWithValue("@lname", txtLname.Text);
                cmd.Parameters.AddWithValue("@address", txtAdd.Text);
                cmd.Parameters.AddWithValue("@city", txtCity.Text);
                cmd.Parameters.AddWithValue("@pcode", Convert.ToInt64(txtPcode.Text));
                cmd.Parameters.AddWithValue("@phno", Convert.ToInt64(txtPno.Text));
                cmd.Parameters.AddWithValue("@cellno", Convert.ToInt64(txtCellno.Text));
                cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.ToString());

                cmd.Parameters.AddWithValue("@emailID", txtMailid.Text);
               // cmd.Parameters.AddWithValue("@bdate", TextBox1.Text);
                cmd.Parameters.AddWithValue("@qua", txtQua.Text);
                cmd.Parameters.AddWithValue("@experience", txtExp.Text);
                cmd.Parameters.AddWithValue("@salary", TxtSalary.Text);
                // Page.RegisterStartupScript("onload", "<script language='javascript'>alert('bla bla bla...')</script> ");

                cmd.ExecuteNonQuery();
                con.Close();
                Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Faculty Information Inserted Successfuly')</script> ");
                BtnAddMore.Enabled = true;
                cmdSubmit.Enabled = false;
                btnCnacel.Enabled = false;

            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


        //if (e.CommandName. = "Update")
        //{
        //    SqlCommand cmd = new SqlCommand("select * from tbfaculty where fcID='" + e.CommandArgument.ToString() + "'", con);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    dr.Read();
        //    txtefname.Text = dr[1].ToString();
        //    lblLanme.Text = dr[2].ToString();
        //    lblAdd.Text = dr[3].ToString();
        //    lblCity.Text = dr[4].ToString();
        //    lblPcode.Text = dr[5].ToString();
        //    lblphno.Text = dr[6].ToString();
        //    lblCellno.Text = dr[7].ToString();
        //    lblGen.Text = dr[8].ToString();
        //    lbleMailID.Text = dr[9].ToString();
        //    lblBdate.Text = dr[10].ToString();
        //    lblCourse.Text = dr[11].ToString();
        //    lblqua.Text = dr[12].ToString();
        //    lblExp.Text = dr[13].ToString();
        //    dr.Close();

        //    string str;
        //}
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        con.Open();
        if (e.CommandName.ToString() == "Detail")
        {
            MultiView1.ActiveViewIndex = 2;
            SqlCommand cmd = new SqlCommand("select * from tbfaculty where fcID='" + e.CommandArgument.ToString() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TxtdFName.Text = dr[1].ToString();
            TxtdLName.Text = dr[2].ToString();
            TxtdAdd.Text = dr[3].ToString();
            Txtdcity.Text = dr[4].ToString();
            Txtdpcode.Text = dr[5].ToString();
            Txtdphno.Text = dr[6].ToString();
            Txtdcelno.Text = dr[7].ToString();
            Txtdgender.Text = dr[8].ToString();
            Txtdbdate.Text = dr[10].ToString();
            Txtdemid.Text = dr[9].ToString();
            Txtdqua.Text = dr[11].ToString();
            Txtdexp.Text = dr[12].ToString();
            Txtdsal.Text = dr[13].ToString();
            dr.Close();
        }

        con.Close();
    }

    protected void lnkAdd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void lnkEdit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from tbfaculty", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataTable dt = new DataTable();
        dt = ds.Tables[0];
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    //{
    //    Calendar4.Visible = true;
    //}
    protected void txtCity_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Calendar4_SelectionChanged(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
  //  protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    //{
      //  Calendar2.Visible = true;
    //}
   /* protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TxteBDay.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
    }*/


    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        con.Open();
        if (e.CommandName.ToString() == "Update")
        {
            MultiView1.ActiveViewIndex = 4;
            SqlCommand cmd = new SqlCommand("select * from tbfaculty", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr[0].ToString() == e.CommandArgument.ToString())
                {
                    TxteFName.Text = dr[1].ToString();
                    TxteLName.Text = dr[2].ToString();
                    txteAdd.Text = dr[3].ToString();
                    txteCity.Text = dr[4].ToString();
                    txtePcode.Text = dr[5].ToString();
                    txtePhno.Text = dr[6].ToString();
                    txteCellno.Text = dr[7].ToString();
                   

                    RadioButtonList2.SelectedValue = dr[8].ToString();
                    TxteEmail.Text = dr[9].ToString();
                    string temp = "";
                    temp = dr[10].ToString();
                    string[] str1 = temp.Split('/');
                    ListBox1.SelectedValue = str1[0].ToString();
                    
                    DropDownList3.SelectedValue = str1[1].ToString();
                    ListBox2.SelectedValue = str1[2].ToString();
                   // DropDownList1.Items.Add(dr[12].ToString());
                    TxteQua.Text = dr[11].ToString();
                    TxteExp.Text = dr[12].ToString();
                    TxteSal.Text = dr[13].ToString();
                    Session["v"] = e.CommandArgument.ToString();
                }
            }
            dr.Close();
        }
        con.Close();
    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = ListBox1.SelectedValue.ToString() + "/" + DropDownList3.SelectedValue.ToString() + "/" +ListBox2.SelectedValue.ToString();
       SqlCommand cmd = new SqlCommand("update tbfaculty set fname='" + TxteFName.Text
                                        + "',lname='" + TxteLName.Text +
                                        "',address='" + txteAdd.Text +
                                        "',city='" + txteCity.Text +
                                        "',pcode=" + Convert.ToInt32(txtePcode.Text) +
                                        ",phno=" + Convert.ToInt64(txtePhno.Text) +
                                        ",cellno=" + Convert.ToInt64(txteCellno.Text) +
                                        ",gender='" + RadioButtonList2.SelectedItem.ToString() +
                                        
                                       // "',bdate='" + TxteBDay.Text +
                                        "',emailID='" + TxteEmail.Text +
                                        "',bdate='" + str +
                                        //"',course='" + DropDownList1.SelectedValue.ToString() +
                                        "',qua='" + TxteQua.Text +
                                        "',experience='" + TxteExp.Text +
                                        "',salary='" + TxteSal.Text + "' where fcID='" + Session["v"].ToString() + "'", con);
        cmd.ExecuteNonQuery();

        con.Close();
        Page.RegisterStartupScript(@"onload", "<script language='javascript'>alert('Faculty Information edited Successfuly')</script> ");
    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   // protected void Calendar4_SelectionChanged1(object sender, EventArgs e)
    //{
     //   TextBox1.Text = Calendar4.SelectedDate.ToShortDateString();
      //  Calendar4.Visible = false;

   // }
   
    protected void BtnAddMore_Click(object sender, EventArgs e)
    {
        cmdSubmit.Enabled = true;
        btnCnacel.Enabled = true;
        BtnAddMore.Enabled = false;
        txtFname.Text = "";
        txtLname.Text = "";
        lstDate.ClearSelection();
        lstMonth.ClearSelection();
        lstYear.ClearSelection();

        txtAdd.Text = "";
        txtCity.Text = "";
        txtPcode.Text = "";
        txtPno.Text = "";
        txtCellno.Text = "";
        RadioButtonList1.ClearSelection();

        //lstDate.Text = "";
        //lstMonth.Text = "";
        //lstYear.Text = "";
        txtMailid.Text = "";

        // DropDownList1.Text = "Select Course";
        txtQua.Text = "";
        DropDownList2.ClearSelection();
        txtExp.Text = "";
        TxtSalary.Text = "";
    }
    protected void btnCnacel_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator1.Enabled = false;
        cmdSubmit.Enabled = true;
        btnCnacel.Enabled = true;
        txtFname.Text = "";
        txtLname.Text = "";
        lstDate.ClearSelection();
        lstMonth.ClearSelection();
        lstYear.ClearSelection();

        txtAdd.Text = "";
        txtCity.Text = "";
        txtPcode.Text = "";
        txtPno.Text = "";
        txtCellno.Text = "";
        RadioButtonList1.ClearSelection();

        //lstDate.Text = "";
        //lstMonth.Text = "";
        //lstYear.Text = "";
        txtMailid.Text = "";

        // DropDownList1.Text = "Select Course";
        txtQua.Text = "";
        DropDownList2.ClearSelection();
        txtExp.Text = "";
        TxtSalary.Text = "";

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    protected void cmdSubmit_Click1(object sender, EventArgs e)
    {

    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void drselcourse_SelectedIndexChanged(object sender, EventArgs e)
    {

        String str = "";
        con.Open();
        SqlCommand cmd3 = new SqlCommand("select crID from tbCrsDetail where subCrs='" + drselcourse.SelectedValue.ToString()+"'", con);
        SqlDataReader dr1 = cmd3.ExecuteReader();
        while (dr1.Read())
        {
            Label45.Text = dr1[0].ToString();
           str="select f.fcID,f.fname,f.lname from tbfaculty f,tbBatch b,tbCrsDetail c where b.cid=c.crID and b.fcid=f.fcID and c.crID='" + dr1[0].ToString() + "'";
        }
        dr1.Close();
        SqlCommand  cmd2 = new SqlCommand(str , con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataTable dt = new DataTable();
        dt = ds.Tables[0];
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
 
