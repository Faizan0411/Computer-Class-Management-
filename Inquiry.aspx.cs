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

public partial class Inquiry : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);
    string s = "course";
    int flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbCrsDetail ", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            //if (cmbCrsname.Items.Count != 0)
            //{
            //    for (int i = 0; i < cmbCrsname.Items.Count; i++)
            //    {
            //        if (cmbCrsname.Items[i].Text == dr[1].ToString())
            //        { flag = 1; }
            //    }
            //}

            //if (flag == 0)
            //{
            //    cmbCrsname.Items.Add(dr[1].ToString());
            //}
            //else { }
            //flag = 0;
        }

        dr.Close();
        con.Close();
    }

    protected void cmdSubmit_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from tbInquiry", con);
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
        for (int k = 0; k < i + 1; k++)
        {
            if (max < k)
            {
                max = k;
            }
        }
        max++;
        string id = "iq" + max.ToString();
        string path = null;
        // string bdate = lstDate.Text     + '/' + lstMonth.Text + '/' + lstYear.Text   ;
        if (FileUpload1.HasFile == true)
        {
            path = @"D:\einstitute2\13-3\e-IMS\inquirydetails\";
            FileUpload1.SaveAs("'" + path + "'" + FileUpload1.FileName.ToString());

        }
        string str = lstDate.SelectedValue.ToString() + "/" + lstMonth.SelectedValue.ToString() + "/" + lstYear.SelectedValue.ToString();
        SqlCommand cmd1 = new SqlCommand("insert into tbInquiry values('" + id + "','" + txtFname.Text + "','" + txtLname.Text + "','" + txtAdd.Text + "','" + txtCity.Text + "',"+ Convert.ToInt64(txtPcode.Text) + ","+ Convert.ToInt64(txtPno.Text) + ","+ Convert.ToInt64(txtCellno.Text) + ",'" + RadioButtonList1.SelectedValue + "','" + txtMailid.Text + "','" + str + "','" + txtComment.Text + "','" + path + "')", con);
        cmd1.ExecuteNonQuery();
        Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' Your information has been sent to the concerned person, THANKYOU!!!')</script> ");
        con.Close();
        cmdSubmit.Enabled = false;
    }
   
    protected void btnCancel_Click(object sender, EventArgs e)
    {

        Response.Redirect("Home.aspx");

    }
    protected void lstDate_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtCellno_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtFname_TextChanged(object sender, EventArgs e)
    {

    }
}
