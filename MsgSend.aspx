<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="MsgSend.aspx.cs" Inherits="MsgSend" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Label ID="LabTo" runat="server" Text="To"></asp:Label>
    &nbsp;:<asp:Label ID="Label53" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
    <br __designer:mapid="164" />
    <asp:Label ID="LabFrom" runat="server" Text="From"></asp:Label>
    &nbsp;:<asp:Label ID="Label54" runat="server" Text="Label"></asp:Label>
    <br __designer:mapid="169" />
    <br __designer:mapid="16a" />
    <asp:TextBox ID="TextBox4" runat="server" Height="114px" 
        Width="382px"></asp:TextBox>
    <br __designer:mapid="16e" />
    <br __designer:mapid="16f" />
        <asp:Button ID="BtnReplySend" runat="server" onclick="BtnReplySend_Click" 
            style="top: 459px; left: 534px; position: absolute; height: 26px; width: 56px" 
            Text="Send" />
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

