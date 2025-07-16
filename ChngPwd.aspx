<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="ChngPwd.aspx.cs" Inherits="ChngPwd" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 256px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
    <tr>
    <td>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl ="~/images/support_main.jpg" onclick="ImageButton1_Click" /></td>
            <td>
         <h4>Change Password</h4>
</td> 
</tr> 
</table> 
<table border="2px" style="background-color: #E5E5E5" >
<tr>
<td align ="right" >Enter Old Password:</td>
<td class="style1">
    <asp:TextBox ID="txtOld" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtOld" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td align ="right">Enter New Password:</td>
<td class="style1">
    <asp:TextBox ID="txtNew" runat="server" ontextchanged="txtNew_TextChanged" 
        TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtNew" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td align ="right">Confirm Password:</td>
<td class="style1">
    <asp:TextBox ID="txtConf" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtConf" ControlToValidate="txtNew" ErrorMessage="mismatch"></asp:CompareValidator>
    </td>
</tr>
<tr align ="right" >
<td> <asp:Button ID="Button2" runat="server" Text="Cancel" /></td></td>
<td class="style1">
    <asp:Button ID="cmdSubmit" runat="server" Text="Submit" 
        onclick="cmdSubmit_Click" /></td>
</tr>
</table>
    <br />
    <br />
    <br />
</asp:Content>

