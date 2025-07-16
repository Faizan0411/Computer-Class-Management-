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

public partial class change_pass_student : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["cn"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdSubmit_Click(object sender, EventArgs e)
    {
        conn.Open();
        int flag = 0;

        SqlCommand cmd = new SqlCommand("select * from tbStudentLogin where stdID='" + Session["ID"] + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr[1].ToString() == txtOld.Text)
            {

                flag = 1;
                Session["pass"] = dr.GetValue(1).ToString();
 
               break;
            }
        }


        dr.Close();

        if (flag == 1)
        {
            SqlCommand cmd1 = new SqlCommand("update tbStudentLogin set pwd='" + txtNew.Text + "' where stdID='" + Session["ID"] + "' and pwd='" + Session["pass"].ToString() + "'", conn);
            //  cmd1.Parameters.AddWithValue("@aID", txtNew.Text);
            cmd1.ExecuteNonQuery();
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' New Password is Updated  Successfuly')</script> ");
        }

        conn.Close();

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void txtOld_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtNew_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtConf_TextChanged(object sender, EventArgs e)
    {

    }
}
