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

public partial class InfoStatic1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ( ( Session["navigate"]).ToString () == "0")
        {
            multiview1.ActiveViewIndex = 1;
        }
       else  if ((Session["navigate"]).ToString () == "1")
        {
            multiview1.ActiveViewIndex = 2;
        }
        else if ((Session["navigate"]).ToString() == "2")
        {
            multiview1.ActiveViewIndex = 3;
        }
        else if ((Session["navigate"]).ToString() == "3")
        {
            multiview1.ActiveViewIndex = 4;
        }
        else if ((Session["navigate"]).ToString() == "4")
        {
            multiview3.ActiveViewIndex = 0;
        }
        else if ((Session["navigate"]).ToString() == "5")
        {
            multiview1.ActiveViewIndex = 5;
        }
        else if ((Session["navigate"]).ToString() == "6")
        {
            multiview1.ActiveViewIndex = 6;
        }
        else if ((Session["navigate"]).ToString() == "7")
        {
            multiview1.ActiveViewIndex = 0;
        }
    }
    protected void lnkHN_Click(object sender, EventArgs e)
    {
        mviewCourse.Visible = true;
        mviewCourse.ActiveViewIndex = 0;
        
            
           
    }
    protected void lnkSP_Click(object sender, EventArgs e)
    {
        mviewCourse.Visible = true;
        mviewCourse.ActiveViewIndex = 1;

        
    }
    protected void lnkM_Click(object sender, EventArgs e)
    {
        mviewCourse.Visible = true;
        mviewCourse.ActiveViewIndex = 2;
    }
    protected void lnkCC_Click(object sender, EventArgs e)
    {
        mviewCourse.Visible = true;
        mviewCourse.ActiveViewIndex = 3;
    }
    protected void lnkWD_Click(object sender, EventArgs e)
    {
        mviewCourse.Visible = true;
        mviewCourse.ActiveViewIndex = 4;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        multiview3.ActiveViewIndex = 5;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        multiview3.ActiveViewIndex = 6;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        multiview3.ActiveViewIndex = 4;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        multiview3.ActiveViewIndex = 3;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        multiview3.ActiveViewIndex = 2;

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        multiview3.ActiveViewIndex = 1;

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        multiview3.ActiveViewIndex = 0;

    }
    protected void multiview3_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {

        Session["navigate"] = "0";
        Response.Redirect("~//InfoStatic1.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {

        Session["navigate"] = "1";
        Response.Redirect("~//InfoStatic1.aspx");  
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {

    }
    protected void multiview2_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void Multiview2_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void MultiView2_ActiveViewChanged(object sender, EventArgs e)
    {

    }
}
