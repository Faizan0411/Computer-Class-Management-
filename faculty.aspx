<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faculty.aspx.cs" Inherits="faculty" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 207px;
        }
        .style3
        {
            height: 207px;
            width: 114px;
        }
        .style4
        {
            width: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Image ID="Image2" runat="server" BackColor="White" Height="147px" 
                    ImageUrl="~/teacher2.jfif" Width="110px" />
            </td>
            <td align="left" class="style2">
                Name : Mr. Sunil L. Bajeja (H.O.D.)<br />
                <br />
                Designation&nbsp; : Lecturer<br />
                <br />
                Date of Birth : 28th July, 1976<br />
                <br />
                Academic Qualifications : B.E. (Comp.) 1997, 63.47%, Guj. Uni.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                PGDBM 2008, 59.40%, Sau. Uni.</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Image ID="Image3" runat="server" Height="147px" 
                    ImageUrl="~/teacher1.jpg" Width="110px" />
            </td>
            <td>
                Name : Prof. Vimal P. Parmar<br />
                <br />
                Designation&nbsp; : Reader<br />
                <br />
                Date of Birth : 2nd July, 1976
                <br />
                <br />
                Academic Qualifications : B.Sc. (Chem.) 1996, 56.10%, Sau. Uni.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                M.C.A. 2001, 76.80%, Sau.Uni.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                (Gold Medalist)</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Image ID="Image4" runat="server" Height="147px" 
                    ImageUrl="~/teacher3.jfif" Width="110px" />
            </td>
            <td>
                Name : Ms. Mital P. Vora<br />
                <br />
                Designation&nbsp; : Lecturer<br />
                <br />
                Date of Birth : 14th October, 1982<br />
&nbsp;<br />
                Academic Qualifications : B.Sc. (Comp.) 2003, 71.42%, Sau. Uni.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                M.Sc. (I.T.) 2005, 64.55%, Sau. Uni.
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Image ID="Image5" runat="server" BorderStyle="None" Height="147px" 
                    ImageUrl="~/teacher4.jfif" Width="110px" />
            </td>
            <td>
                Name : Ms. Jelam P. Vora<br />
                <br />
                Designation&nbsp; : Lecturer<br />
                <br />
                Date of Birth : 15th March, 1977
                <br />
                <br />
                Academic Qualifications : B.Sc. (Maths) 1997, 68.42%, Sau. Uni.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                M.Sc. (I.T.) 2003, 71.66%,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Punjab Tech. Uni.
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Image ID="Image6" runat="server" Height="147px" 
                    ImageUrl="~/teacher5.jfif" Width="110px" />
            </td>
            <td>
                Name : Mr. Maulik Parekh<br />
                <br />
                Designation&nbsp; : Lecturer<br />
                <br />
                Date of Birth : 17th June, 1983
                <br />
                <br />
                Academic Qualifications : B.C.A. 2004, 60.00%, Sau. Uni.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                M.C.A. 2007, 65.20%, D.D. Uni., Nadiad
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Image ID="Image7" runat="server" Height="147px" 
                    ImageUrl="~/teacher6.jpg" Width="110px" />
            </td>
            <td>
                Name : Ms. Hemal Patel<br />
                <br />
                Designation&nbsp; : Lecturer<br />
                <br />
                Date of Birth : 10th August, 1980
                <br />
                <br />
                Academic Qualifications : B.B.A. 2000, 67.00%, VIMT, Indore<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                M.C.A. 2003, 68.00%, Sau. Uni.
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

