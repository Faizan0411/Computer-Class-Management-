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

public partial class NewsEvantUpdate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from tbNews", con);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();
        DataRow dr1;
        da1.Fill(ds1, "Table");
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
            string n1 = dr1[0].ToString();
            int i = Convert.ToInt32(n1.Substring(2));
            i++;
            id = "cr" + i.ToString();
        }
        SqlCommand cmd = new SqlCommand("insert into tbNews values('"+id+"','"+txtTitle .Text +"','"+txtDesc .Text +"','"+DateTime .Now .ToShortDateString()+"')",con);
        cmd.ExecuteNonQuery();

        con.Close();

    }
}
