<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title >HomePage</title>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="table1" runat ="server" >
<tr>  <td>  &nbsp;</td><td >
            <h4 >Aim & objectives</h4>    
        <ul>
    <li><asp:Label ID="Label1" runat="server" 
            Text="To Bring The benifits of Information -Technology in every walk of life and to develop the Indian IT industry as global player."></asp:Label></li>
    <li><asp:Label ID="Label2" runat="server" Text="To extends business of industrial,commercial and IT sector to the masses and make the product being acknowleged int the market."></asp:Label></li>
    </ul>
    </td>
    </tr> 
    </table>
    <table >
    <tr>
    <td><h4 >Vision</h4>
    <ul>
    <li><asp:Label ID="Label3" runat="server" Text="Creation of Wealth"></asp:Label></li>
    <li><asp:Label ID="Label4" runat="server" Text="Employment Generation"></asp:Label></li>
    <li><asp:Label ID="Label5" runat="server" Text="IT led Economic Growth"></asp:Label></li>
    </ul>
    <h4 >Role of The Company</h4>
    <ul>
    <li><asp:Label ID="Label6" runat="server" Text="Pro active Facilitator"></asp:Label></li>
    <li><asp:Label ID="Label7" runat="server" Text="Pro active Motivator"></asp:Label></li>
    <li><asp:Label ID="Label8" runat="server" Text="Pro active Promoter"></asp:Label></li>
    <li><asp:Label ID="Label9" runat="server" Text="Spread IT Masses"></asp:Label></li>
    <li><asp:Label ID="Label10" runat="server" Text="Ensure Speedy IT Deployment"></asp:Label></li>
    </ul>
        </td>
    <td>
        <asp:Image ID="Image2" runat="server" ImageUrl ="~/pc.jfif" 
            Height="200px" style="margin-right: 0px" Width="290px"/>
    </td>
    </tr>
    </table>
    </asp:Content>

