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

public partial class Exam_questions : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["cn"]);

    int min = 0, sec = 0;
    int res = 1;
    String ind = "";
    int IA = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Timer1.Interval = 1000;
        // Timer1_Tick(this, EventArgs.Empty);
        // min = 30;
        // Label7.Text = min.ToString() + ":" + sec.ToString();
        con.Open();

        if (IsPostBack != true)
        {
            Session["Sec"] = 20;
            Session["Mnt"] = 2;
            Session["QueID"] = null;
            Session["IA"] = 0;
            Session["res"] = 0;
            res = 0;
        }
        //if (LabTm.Text==)
        //{
        //    ButtonVR.Enabled = true;
        //}
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        sec = Convert.ToInt32(Session["Sec"]);
        min = Convert.ToInt32(Session["Mnt"]);
        LabTm.Text = min.ToString() + ":" + sec.ToString();
        sec--;
        if (sec == -1)
        {
            sec = 10;
            min = min - 1;
        }
        Session["Sec"] = sec;
        Session["Mnt"] = min;

        if (min == -1)
        {
            RadioButtonList1.Visible = false;
            LabQue.Visible = false;
            Button1.Enabled = false;
            Button2.Enabled = false;
            LabTmOver.Visible = true;
            BtnRes.Enabled = true;
            //  UpdatePanel2.Update();
            Timer1.Enabled = false;

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {



        try
        {
            res = Convert.ToInt32(Session["Res"]);
            IA = Convert.ToInt32(Session["IA"]);
            //   if (Label9.Text.Equals(ind))
            if (Label9.Text == RadioButtonList1.SelectedIndex.ToString())
            {
                res++;
                Session["Res"] = res;

            }
            else
            {
                IA++;
                Session["IA"] = IA;

            }

            SqlDataReader dr;
            string x = "select * from tbQuestions where QuizID='" + Session["QID"] + "'  AND QueID=" + Session["c"] + "";
            // Label11.Text = x;
            //SqlCommand cmd = new SqlCommand("select QuizID,QueID,Quetitle,Opt1,Opt2,Opt3,Opt4,Answer from tbQuestions where QuizID='" + Session["QID"] + "'  AND QueID='" + j + "'", con);
            SqlCommand cmd = new SqlCommand(x, con);
            //dr = cmd.ExecuteReader();
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                LabQue.Text = dr["Quetitle"].ToString();
                RadioButtonList1.Items[0].Text = dr["Opt1"].ToString();
                RadioButtonList1.Items[1].Text = dr["Opt2"].ToString();
                RadioButtonList1.Items[2].Text = dr["Opt3"].ToString();
                RadioButtonList1.Items[3].Text = dr["Opt4"].ToString();
                Label9.Text = dr["Answer"].ToString();
            }

            Session["c"] = Convert.ToInt32(Session["c"]) + 1;
            //    c++;
            //    Label12.Text = c.ToString();


            dr.Close();

            Labres.Text = Session["Res"].ToString();
            RadioButtonList1.ClearSelection();
        }
        catch (Exception exc)
        {
            Page.RegisterStartupScript("onload", "<script language='javascript'>alert('" + exc.Message.ToString() + "')</script> ");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd2 = new SqlCommand("select * from tbQuestions where QuizID='" + Session["QID"] + "'", con);

        SqlDataReader dr2 = cmd2.ExecuteReader();
        Random rn = new Random();
        dr2.Read();

        Session["c"] = Convert.ToInt32(dr2[1].ToString());

        dr2.Close();
        // Label11.Text = c.ToString();

        FetchQue();
        MultiView1.ActiveViewIndex = 1;
        Timer1.Enabled = true;
        Button3.Visible = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        double per = 0.00;
        MultiView1.ActiveViewIndex = 0;
        res = Convert.ToInt32(Session["Res"]);
        per = (res * 100) / 10;
        string res2;
        if (per < 45)
        {
            Image1.Visible = false;
            Labgrade.Text = "Fail";
            res2 = "Fail";
        }
        else
        {
            res2 = "Pass";
            if (per >= 45 && per <= 60)
                Labgrade.Text = "Good";
            else if (per > 60 && per < 70)
                Labgrade.Text = "Very Good";
            else if (per > 70)
                Labgrade.Text = "Excellent";
        }
        LabCA.Text = res.ToString();
        LabIA.Text = Session["IA"].ToString();
        LabUA.Text = (10 - (res + Convert.ToInt32(LabIA.Text))).ToString();
        LabPer.Text = per.ToString();
        Timer1.Enabled = false;
        SqlCommand cmd3 = new SqlCommand("insert into tbresult values('" + Session["ID"] + "','" + DateTime.Today.ToString() + "','" + Session["QID"] + "'," + Convert.ToInt32(LabCA.Text) + "," + Convert.ToInt32(LabIA.Text) + "," + Convert.ToInt32(LabUA.Text) + "," + Convert.ToDouble(LabPer.Text) + ",'" + res2 + "')", con);
        cmd3.ExecuteNonQuery();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ind = RadioButtonList1.SelectedIndex.ToString();



    }
    public void FetchQue()
    {

        try
        {




            SqlDataReader dr;

            //SqlCommand cmd = new SqlCommand("select QuizID,QueID,Quetitle,Opt1,Opt2,Opt3,Opt4,Answer from tbQuestions where QuizID='" + Session["QID"] + "'  AND QueID='" + j + "'", con);
            SqlCommand cmd = new SqlCommand("select * from tbQuestions where QuizID='" + Session["QID"] + "'  AND QueID=" + Session["c"] + "", con);
            //dr = cmd.ExecuteReader();
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                LabQue.Text = dr["Quetitle"].ToString();
                RadioButtonList1.Items[0].Text = dr["Opt1"].ToString();
                RadioButtonList1.Items[1].Text = dr["Opt2"].ToString();
                RadioButtonList1.Items[2].Text = dr["Opt3"].ToString();
                RadioButtonList1.Items[3].Text = dr["Opt4"].ToString();
                Label9.Text = dr["Answer"].ToString();
            }
            Session["c"] = Convert.ToInt32(Session["c"]) + 1;
            dr.Close();



        }
        catch (Exception ex)
        {
            Label9.Text = ex.Message;
        }

    }
    protected void Timer1_Disposed(object sender, EventArgs e)
    {

    }
    protected void Timer1_Unload(object sender, EventArgs e)
    {

        //MultiView1.ActiveViewIndex = 0;    
    }




    protected void BtnRes_Click(object sender, EventArgs e)
    {
        //MultiView1.ActiveViewIndex = 0;
        double per = 0.00;
        MultiView1.ActiveViewIndex = 0;
        res = Convert.ToInt32(Session["Res"]);
        per = (res * 100) / 10;
        string res2;
        if (per < 45)
        {
            Image1.Visible = false;
            Labgrade.Text = "Fail";
            res2 = "Fail";
        }
        else
        {
            res2 = "Pass";
            if (per >= 45 && per <= 60)
                Labgrade.Text = "Good";
            else if (per > 60 && per < 70)
                Labgrade.Text = "Very Good";
            else if (per > 70)
                Labgrade.Text = "Excellent";
        }
        LabCA.Text = res.ToString();
        LabIA.Text = Session["IA"].ToString();
        LabUA.Text = (10 - (res + Convert.ToInt32(LabIA.Text))).ToString();
        LabPer.Text = per.ToString();
        Timer1.Enabled = false;
        SqlCommand cmd3 = new SqlCommand("insert into tbresult values('" + Session["ID"] + "','" + DateTime.Today.ToString() + "','" + Session["QID"] + "'," + Convert.ToInt32(LabCA.Text) + "," + Convert.ToInt32(LabIA.Text) + "," + Convert.ToInt32(LabUA.Text) + "," + Convert.ToDouble(LabPer.Text) + ",'" + res2 + "')", con);
        cmd3.ExecuteNonQuery();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        res = Convert.ToInt32(Session["Res"]);
        IA = Convert.ToInt32(Session["IA"]);
        //   if (Label9.Text.Equals(ind))
        if (Label9.Text == RadioButtonList1.SelectedIndex.ToString())
        {
            res++;
            Session["Res"] = res;

        }
        else
        {
            IA++;
            Session["IA"] = IA;

        } Session["c"] = Convert.ToInt32(Session["c"]) + 1;
        // SqlDataReader dr;
        string x = "select * from tbQuestions where QuizID='" + Session["QID"] + "'  AND QueID=" + Session["c"] + "";
       // Label11.Text = x;
    }
}