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
using System.Net.Mail;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["cn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSub_Click(object sender, EventArgs e)
    {
        if (txtuid.ToString() == "admin")
        {
            conn.Open();
            SqlCommand cmdapwd = new SqlCommand("select aID from tbAdmin where aID='" + txtuid.Text + "'and security_que='" + cmbsecurityque.Text + "' and security_ans='" + txtans.Text + "'", conn);
             //string uid = Convert.ToString(cmdpassword.ExecuteScalar());
            SqlDataReader drapwd=cmdapwd.ExecuteReader();
            string apwd = "";
            apwd = drapwd[7].ToString();
            if (cmbsecurityque == drapwd[5] && txtans == drapwd[6])
            {
                MailAddress sendto =new MailAddress(apwd);
                MailAddress sendfrom = new MailAddress("admin@yahoo.com");
                MailMessage mymsg = new MailMessage(sendfrom, sendto);
        
            }
            conn.Close();
        }

        string forget_password = "";
        conn.Open();
        if (txtuid.Text == "")
        {
            lblerror.Text = "Please Enter User Id";
        }
        else if (cmbsecurityque.Text == "Select Your Question?")
        {
            
            lblerror.Text = "Please Select Question";
        }
        else if (txtans.Text == "")
        {
            lblerror.Text = "Please Write Answer";
        }
        else
        {
            SqlCommand cmdpassword = new SqlCommand("select stdID from tbStudentLogin where stdID='" + txtuid.Text + "' and security_que='" + cmbsecurityque.Text + "' and security_ans='" + txtans.Text + "'", conn);
            string uid = Convert.ToString(cmdpassword.ExecuteScalar());
            if (uid == "")
            {
                lblerror.Text = "Record Doesn't Exist";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("select pwd from tbStudentLogin where stdID='" + txtuid.Text + "'", conn);
            forget_password = Convert.ToString(cmd.ExecuteScalar());
                      
          }
            conn.Close();
        }

        conn.Open();
        string str4 = "select * from tbStudentLogin where stdID='" + txtuid.Text + "'";

        SqlCommand cmd4 = new SqlCommand(str4,conn);
        string forget ="";
        SqlDataReader dr4 = cmd4.ExecuteReader();
         while(dr4.Read())
         {
             forget = dr4[10].ToString();
         }

        dr4.Close();
        conn.Close();


        //MailAddress sendto = new MailAddress(forget);
        //MailAddress sendfrom = new MailAddress("admin@yahoo.com");
        //MailMessage mymsg = new MailMessage(sendfrom, sendto);
        
       //mymsg.Subject ="Forget Password Recovery ";
        //mymsg.Body = "xxxxxxxxx " + forget_password;

      
        try
        {             
         SmtpClient mailclient = new SmtpClient("192.168.1.2");
        //SmtpClient mailclient = new SmtpClient();
          mailclient.Host = "SMTPHost";
           mailclient.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis;
          //  mailclient.Send(mymsg);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally 
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('Password sent successfully!!!')</script> ");
        }
    }


    
}
