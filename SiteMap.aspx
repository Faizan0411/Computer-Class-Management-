<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h5>The Institute</h5>
<ul>
<li>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">About Institute</asp:LinkButton></li>
    <li>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Branches</asp:LinkButton></li>
        <li>
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Courses</asp:LinkButton></li>
         <li>
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Placement</asp:LinkButton></li>
         <li>
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Admission Information</asp:LinkButton></li>
         <li>
        <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">FAQ</asp:LinkButton></li>
        
</ul>
</asp:Content>

