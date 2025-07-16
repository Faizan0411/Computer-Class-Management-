<%@ Page Language="C#" MasterPageFile="~/MPstudent.master" AutoEventWireup="true" CodeFile="ShowResult.aspx.cs" Inherits="ShowResult" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="LabRes" runat="server" Font-Size="Larger" 
            Text="Result of Last Test"></asp:Label>
&nbsp;&nbsp;
        <asp:Label ID="Labdate" runat="server" Text="Date :"></asp:Label>
&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
                    <table style="margin-left :200px">
                        <tr>
                            <td class="style5">
                                Correct Answer:<asp:Label ID="LabCA" runat="server"></asp:Label>
                                <br />
                                <br />
                                Incorrect Answer:<asp:Label ID="LabIA" runat="server"></asp:Label>
                                <br />
                                <br />
                                Unattempted Question:<asp:Label ID="LabUA" runat="server"></asp:Label>
                                <br />
                                <h4 style="width: 210px">
                                    You GOT :<asp:Label ID="LabPer" runat="server"></asp:Label>
                                    %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </h4>
                                <h4>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Labgrade" runat="server" Text="Label"></asp:Label>
                                </h4>
                                <p>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                            </td>
                        </tr>
                    </table>
                    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

