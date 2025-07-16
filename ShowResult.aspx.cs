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

public partial class ShowResult : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string str="select Max(Date),CA,IA,UA,Per,Res from tbresult where stdID='"+Session["ID"]+"' group by Date,CA,IA,UA,Per,Res";
        SqlCommand cmd1 = new SqlCommand(str  , con);
        SqlDataReader  dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            Label7.Text  = dr[0].ToString();
            LabCA.Text = dr[1].ToString();
            LabIA.Text = dr[2].ToString();
            LabUA.Text = dr[3].ToString();
            LabPer.Text = dr[4].ToString();
            LabRes.Text = dr[5].ToString();
         //   Labgrade.Text = dr[6].ToString();
        }
    }
}
