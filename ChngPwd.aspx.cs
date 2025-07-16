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
public partial class ChngPwd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager .AppSettings ["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cmdSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        int flag=0;
        SqlCommand cmd = new SqlCommand("select * from tbAdmin where aID='"+Session ["ID"]+"'",con);
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
        if(flag==1)
        {
            SqlCommand cmd1 = new SqlCommand("update tbAdmin set pwd='" + txtNew.Text + "' where aID='" + Session["ID"] + "' and pwd='"+Session["pass"].ToString()+"'", con);
            //cmd1.Parameters.AddWithValue("@aID",txtNew .Text );
            cmd1.ExecuteNonQuery();
        }
        Page.RegisterStartupScript("onload", "<script language='javascript'>alert(' New Password is Updated  Successfuly')</script> ");

        con.Close();

    }
    protected void txtNew_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}
