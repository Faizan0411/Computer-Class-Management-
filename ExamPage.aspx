<%@ Page Language="C#" MasterPageFile="~/MPstudent.master" AutoEventWireup="true" CodeFile="ExamPage.aspx.cs" Inherits="ExamPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
    {
        width: 99%;
        margin-bottom: 0px;
        border-style :ridge;
        
        
    }
        .style8
        {
        	background-color : #EDEBEC;
        	}
        	 .style10
        {
            height: 27px;
        }
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID ="view1" runat ="server" >
        <asp:Image ID="Image3" runat="server" ImageUrl ="~/images/image2.png" />
        <br />
    <h5>Rules and Regulations...</h5>
    <ul>
    <li>The test Contain 20 Questions.</li> 
    <li>The time taken is 20 minutes.</li> 
    
    </ul>
        <ul>
            <li>If you get less than 50% then partcipated Certificate</li>
        </ul>
    <h5>Your Score will be counted... </h5>
    <ul>
    <li>You will get 1 point for 1 correct answer.</li>
    <li>At the end of Quiz,your total score will be displayed.</li>
    <li>Maximum Score is 20 point</li>
    </ul>
    
        <h5>
            &nbsp;click on start Exam...</h5>
        &nbsp;<asp:LinkButton ID="lnKStart" runat="server" onclick="lnKStart_Click">start 
    Exam</asp:LinkButton>
    
        <br />
    </asp:View>
    <asp:View ID ="view2" runat ="server" >
    
            <br />
        <br />
    <table style="width: 509px" >
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Question No:"></asp:Label>
        <asp:Label ID="lblNo1" runat="server" Text=""></asp:Label>
    </td>
    <td>
        <asp:CheckBox ID="chkMark" runat="server" Text ="BookMark" /></td>
    <td>
     <asp:Label ID="Label3" runat="server" Text="Remaining Time :"></asp:Label>
      <asp:Label ID="Label4" runat="server" Text="16:45"></asp:Label>
    </td>
    </tr>
    </table>
        <br />
   <table class="style1" style="background-color :#EDEBEC">
        <tr class="style8">
            <td class="style10">
     
    <asp:Label ID="lblNo" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblQue" runat="server" Text=""></asp:Label>
        </td>
    </tr>
     <tr class="style8">
            <td class="style10" >
        <asp:Panel ID="Panel1" runat="server">
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName ="ans" 
                Text="ASP.Net,C#" />
            <br />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName ="ans" 
                Text="VB.Net"/>
            <br />
            <br />
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName ="ans" Text="PHP"/>
            <br />
            <asp:RadioButton ID="RadioButton4" runat="server" />
            <br />
            <br />
            
        </asp:Panel>
    </td>
    </tr>
    <tr>
    <td align ="center" >
    <asp:LinkButton ID="lnkPrev" runat="server" onclick="lnkPrev_Click">Previous</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="lnkNext" runat="server" onclick="lnkNext_Click" >Next</asp:LinkButton>
    </td>
    </tr>
    </table>
    
        
    </asp:View>
    <asp:View ID="vBookMark" runat ="server" >
    <table style="height: 218px; width: 411px" >
    <tr>
    <td>
        <asp:Image ID="Image1" runat="server" ImageUrl ="~/images/o2.jpg" 
            Width="240px" />
    </td>
    <td >
    <h4>Final Result</h4> 
    </td>
    </tr>
    
    </table>
    
        
        <table style ="margin-left :200px" > 
            <tr>
                <td>
                Correct Answer:17<br />
                Incorrect Answer:3<br />
                Unattempted Question:0<br />
                    <h4>You GET 70%</h4>
                    
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> GOOD</b></p>
                    
                </td>
            </tr>
        </table>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </asp:View>
    
    </asp:MultiView>
</asp:Content>

