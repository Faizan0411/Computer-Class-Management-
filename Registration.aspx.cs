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

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]); 
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbCrsDetail ",con );
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            //cmbCrsname.Items.Add(dr[1].ToString ());
        }
        dr.Close();
        con.Close();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select regID from tbRegistration",con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        DataRow dr;
        da.Fill(ds, "Table");
        dt=ds.Tables ["Table"];

        int n = dt.Rows.Count;
        string id;
        if (n == 0)
        {
            id = "R1";
        }
        else
        {
           dr = dt.Rows[n];
           string d = dr[0].ToString ();
           int i =Convert.ToInt32  ( d.Substring(1));
           i = i + 1;
           id = "R" + i.ToString ();

        }



        //SqlCommand cmd = new SqlCommand("insert into tbRegistration values(@regID,@fname,@lname,@address,@city,@pcode,@phno,@cellno,@gender,@bdate,@emailID,@course)", con);
        //cmd.Parameters.AddWithValue("@regID",id);
        //cmd.Parameters.AddWithValue("@fanme",txtFname.Text );
        //cmd.Parameters.AddWithValue("@lanme", txtLname.Text);
        //cmd.Parameters.AddWithValue("@address", txtAdd.Text);
        //cmd.Parameters.AddWithValue("@city", txtCity.Text);
        //cmd.Parameters.AddWithValue("@pcode", txtPcode.Text);
        //cmd.Parameters.AddWithValue("@phno", txtPno.Text);
        //cmd.Parameters.AddWithValue("@cellno", txtCellno.Text);
        //cmd.Parameters.AddWithValue("@gender", txtAdd.Text);
        //cmd.Parameters.AddWithValue("@bdate", txtbdate.Text);
        //cmd.Parameters.AddWithValue("@bdate", txtAdd.Text);
        //cmd.Parameters.AddWithValue("@emailID", txtMailid.Text);
        
    }
    protected void btnCnacel_Click(object sender, EventArgs e)
    {

    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {

    }
}
