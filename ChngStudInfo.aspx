<%@ Page Language="C#" MasterPageFile="~/MPstudent.master" AutoEventWireup="true" CodeFile="ChngStudInfo.aspx.cs" Inherits="ChngStudInfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
   <tr>
   <td>
       <asp:Image ID="Image1" runat="server" ImageUrl ="~/images.png" Height ="200px" Width ="200px" /></td>
   <td>
   </td>
   <td><h4>Change Your Profile</h4></td> 
   </tr> 
   </table> 
   <table border="2" style="background-color: #E5E5E5; width: 371px;" >

   
<tr>
<td class="style3" align ="right" >
    <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtFname" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtFname" ErrorMessage="only alphabets" 
        ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td class="style1" align ="right" >
    <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label></td>
<td class="style1">
    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtLname" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtLname" ErrorMessage="only alphabets" 
        ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td class="style3" align ="right" >
    <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtAdd" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtAdd" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style3" align ="right" >
    <asp:Label ID="Label4" runat="server" Text="City:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtCity" ErrorMessage="enter alphabets" 
        ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td class="style3" align ="right" >
    <asp:Label ID="Label5" runat="server" Text="PinCode:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtPcode" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtPcode" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="txtPcode" ErrorMessage="enter digits only" 
        ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td class="style4" align ="right" >
    <asp:Label ID="Label6" runat="server" Text="Phone No:"></asp:Label></td>
<td class="style2">
    <asp:TextBox ID="txtPhno" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtPhno" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
        ControlToValidate="txtPhno" ErrorMessage="enter 10 digit number" 
        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td class="style3" align ="right" >
    <asp:Label ID="Label7" runat="server" Text="Cell No:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtCell" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="txtCell" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
        ControlToValidate="txtCell" ErrorMessage="enter 8 digit number" 
        ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td class="style3" align ="right" >
    <asp:Label ID="Label10" runat="server" Text="Gender:"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="enter only alphabets" 
        ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
    </td>
</tr>

<tr>
<td class="style3" align ="right" >
    <asp:Label ID="Label8" runat="server" Text="E-mail ID:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtMailID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtMailID" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
        ControlToValidate="txtMailID" ErrorMessage="invalid email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td class="style3" align ="right" >
    <asp:Label ID="Label9" runat="server" Text="Birth Date:"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td class="style3"></td>
<td>
    <asp:Button ID="Button1" runat="server" Text="Update" /></td>
</tr>
</table>
</asp:Content>

