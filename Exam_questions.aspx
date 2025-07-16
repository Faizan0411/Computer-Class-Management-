<%@ Page Language="C#" MasterPageFile="~/MPstudent.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Exam_questions.aspx.cs" Inherits="Exam_questions" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 185px;
        }
        .style1
        {
            width: 100%;
            height:120px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
<asp:Button ID="Button3" 
            runat="server" onclick="Button3_Click" Text="Start" />
        <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="1000" 
                ontick="Timer1_Tick" ondisposed="Timer1_Disposed" onunload="Timer1_Unload">
            </asp:Timer>
            <asp:Label ID="LabTm" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View2" runat="server">
                    <br />
                    <br />
                    <table style="height: 218px; width: 411px">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/o2.jpg" 
                                    Width="240px" />
                            </td>
                            <td>
                                <h4>
                                    Final Result</h4>
                            </td>
                        </tr>
                    </table>
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
                    <br />
                </asp:View>
                <asp:View ID="View1" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style6" colspan="2">
                                <asp:Label ID="LabQue" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" colspan="2">
                                <asp:Label ID="LabQNo" runat="server"></asp:Label>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="style8" colspan="2">
                                                
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                                    AutoPostBack="True" Height="96px" >
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:RadioButtonList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabTmOver" runat="server" Font-Size="Larger" 
                                    Text="Your time Is Over" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Next" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Finish" />
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:Button ID="BtnRes" runat="server" Enabled="False" onclick="BtnRes_Click" 
                                    Text="View Result" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="Labres" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
           
        </Triggers>
    </asp:UpdatePanel>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </p>
    <p>
    </p>
</asp:Content>

