<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="NewsEvantUpdate.aspx.cs" Inherits="NewsEvantUpdate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h4>Add New Events Or News</h4>
    <table >
    
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtDesc" runat="server" TextMode ="MultiLine" ></asp:TextBox></td>
</tr>
<tr>
<td>
</td>
<td>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="Black" 
        Font-Bold="True" ForeColor="White" onclick="btnSubmit_Click" /></td>
</tr>
</table>
</asp:Content>

