<%@ Page Language="C#" MasterPageFile="~/MPstudent.master" AutoEventWireup="true" CodeFile="Exampage1.aspx.cs" Inherits="ExamPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View2" runat="server">
            <br />
           
            <br />
            <br />
            <br />
        </asp:View>
    <asp:View ID ="view1" runat ="server" >
        <asp:Image ID="Image3" runat="server" ImageUrl ="~/images/image2.png" />
        <br />
    <h5>Rules and Regulations...</h5>
    <ul>
    <li>The test Contain 20 Questions.</li> 
    <li>The time taken is 20 minutes.</li> 
    <li>If you get less than 50% then partcipated Certificate</li>
    
    </ul>
    <h5>Your Score will be counted... </h5>
    <ul>
    <li>You will get 1 point for 1 correct answer.</li>
    <li>At the end of Quiz,your total score will be displayed.</li>
    <li>Maximum Score is 20 points.</li>
    </ul>
    
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <br />
        <h5>&nbsp;click on start Exam...</h5>
&nbsp;<asp:LinkButton ID="lnKStart" runat="server" onclick="lnKStart_Click">Click here 
        to go for Online Quiz</asp:LinkButton>
        <br />
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

