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

public partial class SiteMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["navigate"] = "0";
        Response.Redirect("~//InfoStatic1.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["navigate"] = "1";
        Response.Redirect("~//InfoStatic1.aspx");  
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        Session["navigate"] = "2";
        Response.Redirect("~//InfoStatic1.aspx");  
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Session["navigate"] = "3";
        Response.Redirect("~//InfoStatic1.aspx");  
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        Session["navigate"] = "6";
        Response.Redirect("~//InfoStatic1.aspx");  
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {

        Session["navigate"] = "7";
        Response.Redirect("~//InfoStatic1.aspx");  
    }
}
