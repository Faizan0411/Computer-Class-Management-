using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void ALinkButton_Click(object sender, EventArgs e)
    {
        Session["navigate"] = "0";

        Response .Redirect ( "~//InfoStatic1.aspx");
        
    }
    protected void BLinkButton_Click(object sender, EventArgs e)
    {
        Session["navigate"] = "1";
        Response .Redirect ( "~//InfoStatic1.aspx");
        

    }
    protected void CLinkButton_Click(object sender, EventArgs e)
    {
      
        Session["navigate"] = "2";
        Response.Redirect("~//InfoStatic1.aspx");

    }
    protected void PLinkButton_Click(object sender, EventArgs e)
    {
        
        Session["navigate"] = "3";
        Response.Redirect("~//InfoStatic1.aspx");
    }
    protected void FLinkButton_Click(object sender, EventArgs e)
    {
       
        Session["navigate"] = "4";
        Response.Redirect("~//faculty.aspx");
    }
    protected void AILinkButton_Click(object sender, EventArgs e)
    {
        
        Session["navigate"] = "5";
        Response.Redirect("~//InfoStatic1.aspx");
    }
    protected void FALinkButton_Click(object sender, EventArgs e)
    {
        
        Session["navigate"] = "6";
        Response.Redirect("~//InfoStatic1.aspx");
    }
    protected void SMLinkButton_Click(object sender, EventArgs e)
    {
       
        Session["navigate"] = "7";
        Response.Redirect("~//InfoStatic1.aspx");
    }
}
