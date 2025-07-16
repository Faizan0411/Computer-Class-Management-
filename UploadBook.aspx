<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="UploadBook.aspx.cs" Inherits="UploadBook" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4>Upload Material</h4>
<table border="2px" style="background-color: #E5E5E5" >
            <tr>
            <td>
            <table>
            <tr><td>
            <asp:Label ID="Label14" runat="server" Text="Course:"></asp:Label>
            </td>
            <td>
            <asp:DropDownList ID="cmbCourse" runat="server" 
                    onselectedindexchanged="cmbCourse_SelectedIndexChanged">
                <asp:ListItem>Asp.Net</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>V.B.</asp:ListItem>
                <asp:ListItem>JAVA</asp:ListItem>
                <asp:ListItem>PHP</asp:ListItem>
                <asp:ListItem>MULTIMEDIA</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td></tr>
            
            <tr><td>
            <asp:Label ID="Label15" runat="server" Text="Book Name:"> </asp:Label>
            </td>
            <td>
             <asp:TextBox ID="txtBnameS" runat="server"></asp:TextBox>
            </td></tr>
            </table>
            </td> 
            </tr> 
             <tr>
             <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </td></tr>
            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnUpload" runat="server" Text="Upload" 
                    onclick="btnUpload_Click" /></td></tr>
            </table>
            
</asp:Content>

