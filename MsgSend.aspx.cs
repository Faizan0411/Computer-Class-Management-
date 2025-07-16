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
using System.Net.Mail;


public partial class MsgSend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label53.Text = Convert.ToString(Session["Inq"]); 
        Label54.Text = "heenaknoor@yahoo.co.in";
       
    }
    protected void BtnReplySend_Click(object sender, EventArgs e)
    {
        string send;
      //  string query;
        send = Convert.ToString(Session["Inq"]);
       // query = Convert.ToString(Session["Query"]);

        //if (send != "")
        //{
        //    MailAddress sendto = new System.Net.Mail.MailAddress(send);
        //     Session["Inq"] = "";
        //}
        //else
        //{
        //    MailAddress sendto = new System.Net.Mail.MailAddress(query);
        //    Session["Query"] = "";
        //}

        MailAddress sendto = new MailAddress(send);
        MailAddress sendfrom = new MailAddress("heenaknoor@yahoo.co.in");
        MailMessage mymsg = new MailMessage(sendfrom, sendto);

        mymsg.Subject = "RE: Sai Technology";
        mymsg.Body = TextBox4.Text;


        try
        {
            SmtpClient mailclient = new SmtpClient("192.168.0.1");
            mailclient.Host = "SMTPHost";
            mailclient.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis;
            mailclient.Send(mymsg);

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
        
            //Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Query is answered successfully!!!')</script> ");
            System.Windows.Forms.MessageBox.Show("Query is answered successfully!!!'", "Inform", System.Windows.Forms.MessageBoxButtons.OK);
            
                Response.Redirect("Adminpage.aspx");
            

        }
        BtnReplySend.Enabled = false;
       
    }
     //Response.Redirect("Adminpage.aspx");
}
