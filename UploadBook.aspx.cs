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
using System.IO;
public partial class UploadBook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        con.Open();
        if (FileUpload1.PostedFile != null)
        {
            HttpPostedFile file = FileUpload1.PostedFile;
            if (file.FileName != "")
            {
                string filename = FileUpload1.FileName.ToString();
                //   path = Server.MapPath;
                //    Upload1.PostedFile.SaveAs(path + "\\"+filename);
                //   int idx;
                //     string bookname = filename.Substring(0, filename.Length - 4);

                FileUpload1.SaveAs(@"H:\" + FileUpload1.FileName.ToString());
                SqlCommand cmdins = new SqlCommand("insert into tbBook (course,path ,name) values ('" + cmbCourse.SelectedValue.ToString() + "','" + FileUpload1.FileName.ToString() + "','" + txtBnameS.Text + "') ", con);
                cmdins.ExecuteNonQuery();
                //Page.RegisterStartupScript("onload", "<script language='javascript'>alert('New Material is uploaded Succesfully!!!')</script> ");
                System.Windows.Forms.MessageBox.Show("New Material is uploaded Successfully!!!'", "Inform", System.Windows.Forms.MessageBoxButtons.OK);
            }
            con.Close();
        }
    }
    protected void cmbCourse_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
