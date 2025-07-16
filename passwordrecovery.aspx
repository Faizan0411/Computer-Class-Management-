<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="passwordrecovery.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Lbluid" runat="server" Text="Enter UserID :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="LblSQ" runat="server" Text="Select Security Question :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="cmbsecurityque" runat="server" Height="16px" 
                    style="margin-bottom: 0px" Width="182px">
                    <asp:ListItem>Select Security Question :</asp:ListItem>
                    <asp:ListItem>What is your pet&#39;s name ?</asp:ListItem>
                    <asp:ListItem>What is your first school name ?</asp:ListItem>
                    <asp:ListItem>What is your favourite food ?</asp:ListItem>
                    <asp:ListItem>What is your favourite teacher&#39;s name ?</asp:ListItem>
                    <asp:ListItem>What is the name of your favourite sportsperson ?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lblans" runat="server" Text="Answer :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtans" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="BtnSub" runat="server" onclick="BtnSub_Click" Text="SUBMIT" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

