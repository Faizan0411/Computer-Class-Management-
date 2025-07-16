<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">

        .style1
    {
        width: 63%;
        margin-bottom: 0px;
        border-style :ridge;
        
        
    }
                      
    .style2
    {
        width: 172px;
    }
                      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" 
        runat="server" Text="LOGIN AREA" BackColor="Black" 
        Enabled="False" Font-Bold="True" ForeColor="White" Width="313px" 
        BorderColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <table class="style1" 
       style="  margin-left :30px;   height: 167px; background-image: url('images/login.jpg');" >
        <tr>
            <td  align="right" class="style2">
    <asp:Label ID="Label1" runat="server" Text="Login ID:" Font-Bold="True"></asp:Label></td> 
    <td >
   <asp:TextBox ID="txtUname" runat="server" BorderStyle="Inset" 
            ontextchanged="txtUname_TextChanged1" ></asp:TextBox></td> 
   </tr> 
     <tr >
            <td  align="right" class="style2">
    <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True"></asp:Label></td> 
    <td >

   <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" BorderStyle="Inset" 
            ontextchanged="txtPwd_TextChanged">Password </asp:TextBox>
    </td> 
    </tr> 
   <tr >
            <td  align="right" class="style2">
    <asp:Label ID="Label3" runat="server" 
    Text="Incorrrect Username or Password..." ForeColor="#FF3300" Visible="False"></asp:Label> 
    </td> 
    </tr> 
    
    
    <tr >
            <td align="right" class="style2">
    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" 
    onclick="btnSignIn_Click" BackColor="Black" Font-Bold="True" ForeColor="White" 
                    Width="67px" /></td> 
     <td>
        <asp:Button ID="btncancel" runat="server" Text="Cancel" BackColor="Black" 
             Font-Bold="True" ForeColor="White" onclick="btncancel_Click" /></td> 
    </tr>
    <tr >
    <td align ="right" class="style2" >
    <asp:Label ID="Label4" runat="server" Text="Forget Password:"></asp:Label>
    </td><td>
            <asp:LinkButton ID="lnkbtnFP" runat="server" onclick="lnkbtnFP_Click">CLICK HERE</asp:LinkButton>
    </td>
    </tr> 
    <tr><td class="style2"></td>
    <td>
        &nbsp;</td></tr>
    <tr>
    <td align ="right" class="style2"  >
        &nbsp;</td>
    <td>
        &nbsp;</td>
        </tr>
    </table> 
    


    
    
      
    
    <br />
</asp:Content>

