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

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Res"] = 0;
        Session["IA"] = 0;
        Session["Inq"] = 0;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
           }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
       
    }
}
