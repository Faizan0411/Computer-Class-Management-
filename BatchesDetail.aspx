<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="BatchesDetail.aspx.cs" Inherits="BatchesDetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
    {
        width: 99%;
        margin-bottom: 0px;
        border-style :ridge;
        
        
    }
        .style5
        {
            width: 301px;
        }
        .style8
        {
        	background-color : #EDEBEC;
        	}
        	       
        .style11
        {
            height: 27px;
            width: 193px;
        }
      
        .style12
        {
            width: 343px;
        }
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="view1" runat ="server" >
    <table>
            <tr>
            <td class="style12">&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
            <tr>
            <td class="style12">If u Want Course Wise Batch then,  Select Course:</td>
            <td>
                <asp:DropDownList ID="crseforedit" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="crseforedit_SelectedIndexChanged">
                    <asp:ListItem>Select Course</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            
            </table>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Course: "></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" ForeColor="Black" GridLines="Vertical" 
            onrowcommand="GridView1_RowCommand" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <EmptyDataTemplate>
                    <asp:Label ID="Label14" runat="server" 
                        Text="No any Batches recenty completed..."></asp:Label>
                </EmptyDataTemplate>
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label25" runat="server" ForeColor="White" Text="Id"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label135" runat="server" Text='<%#Eval("bid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label24" runat="server" ForeColor="White" Text="Faculty"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label134" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                            <asp:Label ID="Label15" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label23" runat="server" ForeColor="White" Text="Start Time"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label133" runat="server" Text='<%#Eval("sttime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label22" runat="server" ForeColor="White" Text="End Time"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label132" runat="server" Text='<%#Eval("endtime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label21" runat="server" ForeColor="White" Text="Start Date"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("stDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="End Date"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label131" runat="server" Text='<%#Eval("endDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnModedit" runat="server" onclick="btnModedit_Click" 
                                Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
        </asp:GridView>
            <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="True"></asp:Label>
            <br />
            <br />
        <br />
        <br />
     </asp:View>
        <asp:View ID="View5" runat="server">
            <table class="style1" style="background-color :#EDEBEC">
                <tr class="style8">
                    <td align="right" class="style11">
                        <asp:DropDownList ID="cmbfcID1" runat="server" Visible="False">
                        </asp:DropDownList>
                        <asp:Label ID="Label16" runat="server" Text="Course"></asp:Label>
                    </td>
                    <td class="style5">
                        <br />
                        <asp:DropDownList ID="cmbCourse0" runat="server">
                            <asp:ListItem>Choose Course</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="cmbCourse0" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="style8">
                    <td align="right" class="style11">
                        <asp:DropDownList ID="cmbfcID2" runat="server" Visible="False">
                        </asp:DropDownList>
                        <asp:Label ID="Label17" runat="server" Text="Faculty:"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="cmbFaculty0" runat="server" 
                            onselectedindexchanged="cmbFaculty0_SelectedIndexChanged">
                            <asp:ListItem>--Choose Faculty--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="cmbFaculty0" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <%--  <tr class="style8">
                   <td class="style11" align="right">
         <asp:Label ID="Label2" runat="server" Text="Duration"></asp:Label>
         </td> 
            <td class="style5">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>--Choose Duration--</asp:ListItem>
                </asp:DropDownList>
                <br />
         </td>
         </tr> --%>
                <tr class="style8">
                    <td align="right" class="style11">
                        <asp:Label ID="Label18" runat="server" Text="Start Time:"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="cmbStTime0" runat="server">
                            <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
                            <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
                            <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
                            <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="11:30 AM">11:30 AM</asp:ListItem>
                            <asp:ListItem Value="12:00 PM">12:00 PM</asp:ListItem>
                            <asp:ListItem Value="12:30 PM">12:30 PM</asp:ListItem>
                            <asp:ListItem Value="1:00 PM">1:00 PM</asp:ListItem>
                            <asp:ListItem Value="1:30 PM">1:30 PM</asp:ListItem>
                            <asp:ListItem Value="2:00 PM">2:00 PM</asp:ListItem>
                            <asp:ListItem Value="2:30 PM">2:30 PM</asp:ListItem>
                            <asp:ListItem Value="3:00 PM">3:00 PM</asp:ListItem>
                            <asp:ListItem Value="3:30 PM">3:30 PM</asp:ListItem>
                            <asp:ListItem Value="4:00 PM">4:00 PM</asp:ListItem>
                            <asp:ListItem Value="4:30 PM">4:30 PM</asp:ListItem>
                            <asp:ListItem Value="5:00 PM">5:00 PM</asp:ListItem>
                            <asp:ListItem Value="5:30 PM">5:30 PM</asp:ListItem>
                            <asp:ListItem Value="6:00 PM">6:00 PM</asp:ListItem>
                            <asp:ListItem Value="6:30 PM">6:30 PM</asp:ListItem>
                            <asp:ListItem Value="7:00 PM">7:00 PM</asp:ListItem>
                            <asp:ListItem Value="7:30 PM">7:30 PM</asp:ListItem>
                            <asp:ListItem Value="8:00 PM">8:00 PM</asp:ListItem>
                            <asp:ListItem Value="8:30 PM">8:30 PM</asp:ListItem>
                            <asp:ListItem Value="9:00 PM">9:00 PM</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="cmbStTime0" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr class="style8">
                    <td align="right" class="style11">
                        <asp:Label ID="Label19" runat="server" Text="End Time:"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="cmbEndtime0" runat="server">
                            <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
                            <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
                            <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
                            <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="11:30 AM">11:30 AM</asp:ListItem>
                            <asp:ListItem Value="12:00 PM">12:00 PM</asp:ListItem>
                            <asp:ListItem Value="12:30 PM">12:30 PM</asp:ListItem>
                            <asp:ListItem Value="1:00 PM">1:00 PM</asp:ListItem>
                            <asp:ListItem Value="1:30 PM">1:30 PM</asp:ListItem>
                            <asp:ListItem Value="2:00 PM">2:00 PM</asp:ListItem>
                            <asp:ListItem Value="2:30 PM">2:30 PM</asp:ListItem>
                            <asp:ListItem Value="3:00 PM">3:00 PM</asp:ListItem>
                            <asp:ListItem Value="3:30 PM">3:30 PM</asp:ListItem>
                            <asp:ListItem Value="4:00 PM">4:00 PM</asp:ListItem>
                            <asp:ListItem Value="4:30 PM">4:30 PM</asp:ListItem>
                            <asp:ListItem Value="5:00 PM">5:00 PM</asp:ListItem>
                            <asp:ListItem Value="5:30 PM">5:30 PM</asp:ListItem>
                            <asp:ListItem Value="6:00 PM">6:00 PM</asp:ListItem>
                            <asp:ListItem Value="6:30 PM">6:30 PM</asp:ListItem>
                            <asp:ListItem Value="7:00 PM">7:00 PM</asp:ListItem>
                            <asp:ListItem Value="7:30 PM">7:30 PM</asp:ListItem>
                            <asp:ListItem Value="8:00 PM">8:00 PM</asp:ListItem>
                            <asp:ListItem Value="8:30 PM">8:30 PM</asp:ListItem>
                            <asp:ListItem Value="9:00 PM">9:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="style8">
                    <td align="right" class="style11">
                        <asp:Label ID="Label20" runat="server" Text="start Date:"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="txtStDate0" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgEstdate" runat="server" ImageUrl="images/cal.bmp" 
                            onclick="imgEstdate_Click" />
                        <asp:Calendar ID="Calendar4" runat="server" BackColor="White" 
                            BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                            Font-Size="10pt" ForeColor="Black" Height="130px" NextPrevFormat="FullMonth" 
                            onselectionchanged="Calendar4_SelectionChanged" TitleFormat="Month" 
                            Visible="False" Width="197px">
                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="8pt" ForeColor="#333333" Width="1%" />
                            <TodayDayStyle BackColor="#CCCC99" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <DayStyle Width="14%" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                                ForeColor="#333333" Height="10pt" />
                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                                ForeColor="White" Height="14pt" />
                        </asp:Calendar>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="cmbStTime0" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr class="style8">
                    <td align="right" class="style11">
                        <asp:Label ID="Label21" runat="server" Text="End Date:"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="txtEndDate0" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgEenddate" runat="server" ImageUrl="images/cal.bmp" 
                            onclick="imgEenddate_Click" />
                        <asp:Calendar ID="Calendar5" runat="server" BackColor="White" 
                            BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                            Font-Size="10pt" ForeColor="Black" Height="130px" NextPrevFormat="FullMonth" 
                            onselectionchanged="Calendar5_SelectionChanged" TitleFormat="Month" 
                            Visible="False" Width="197px">
                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="8pt" ForeColor="#333333" Width="1%" />
                            <TodayDayStyle BackColor="#CCCC99" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <DayStyle Width="14%" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                                ForeColor="#333333" Height="10pt" />
                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                                ForeColor="White" Height="14pt" />
                        </asp:Calendar>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="cmbEndtime0" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr class="style8">
                    <td align="right" class="style11">
                        <asp:Label ID="Label22" runat="server" Text="Batch Day:"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:ListBox ID="lstDay0" runat="server">
                            <asp:ListItem>Sunday</asp:ListItem>
                            <asp:ListItem>Monday</asp:ListItem>
                            <asp:ListItem>Tuesday</asp:ListItem>
                            <asp:ListItem>Wednesday</asp:ListItem>
                            <asp:ListItem>Thursday</asp:ListItem>
                            <asp:ListItem>Friday</asp:ListItem>
                            <asp:ListItem>Saturday</asp:ListItem>
                        </asp:ListBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="lstDay0" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="style8">
                    <td align="right" class="style11">
                        &nbsp;<asp:Button ID="btnUpdate" runat="server" BackColor="Black" Font-Bold="True" 
                            ForeColor="White" Height="25px" onclick="btnUpdate_Click" Text="Update" />
                        &nbsp;&nbsp;</td>
                    <td class="style5">
                        <asp:Button ID="btnCancel0" runat="server" BackColor="Black" Font-Bold="True" 
                            ForeColor="White" onclick="btnCancel0_Click" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </asp:View>
     <asp:View ID="view2" runat ="server" >
     
     <h4>Add New Batch</h4>
         <asp:Panel ID="Panel2" runat="server">
             <br />
             <br />
             <br />
             <table class="style1" style="background-color :#EDEBEC">
                 <tr class="style8">
                     <td align="right" class="style11">
                         <asp:DropDownList ID="cmbfcID0" runat="server" Visible="False" 
                             onselectedindexchanged="cmbfcID0_SelectedIndexChanged">
                         </asp:DropDownList>
                         <asp:Label ID="Label3" runat="server" Text="Course"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:DropDownList ID="cmbCourse" runat="server" AutoPostBack="True" 
                             onselectedindexchanged="cmbCourse_SelectedIndexChanged">
                             <asp:ListItem>--Choose Course--</asp:ListItem>
                         </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                             ControlToValidate="cmbCourse" ErrorMessage="*"></asp:RequiredFieldValidator>
                         <br />
                     </td>
                 </tr>
                 <tr class="style8">
                     <td align="right" class="style11">
                         <asp:DropDownList ID="cmbfcID" runat="server" Visible="False">
                         </asp:DropDownList>
                         <asp:Label ID="Label1" runat="server" Text="Faculty:"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:DropDownList ID="cmbFaculty" runat="server" 
                             onselectedindexchanged="cmbFaculty_SelectedIndexChanged">
                             <asp:ListItem>--Choose Faculty--</asp:ListItem>
                         </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                             ControlToValidate="cmbFaculty" ErrorMessage="*"></asp:RequiredFieldValidator>
                         <br />
                     </td>
                 </tr>
                 <%--  <tr class="style8">
                   <td class="style11" align="right">
         <asp:Label ID="Label2" runat="server" Text="Duration"></asp:Label>
         </td> 
            <td class="style5">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>--Choose Duration--</asp:ListItem>
                </asp:DropDownList>
                <br />
         </td>
         </tr> --%>
                 <tr class="style8">
                     <td align="right" class="style11">
                         <asp:Label ID="Label4" runat="server" Text="Start Time:"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:DropDownList ID="cmbStTime" runat="server">
                             <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
                             <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
                             <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                             <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
                             <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
                             <asp:ListItem Value="11:30 AM">11:30 AM</asp:ListItem>
                             <asp:ListItem Value="12:00 PM">12:00 PM</asp:ListItem>
                             <asp:ListItem Value="12:30 PM">12:30 PM</asp:ListItem>
                             <asp:ListItem Value="1:00 PM">1:00 PM</asp:ListItem>
                             <asp:ListItem Value="1:30 PM">1:30 PM</asp:ListItem>
                             <asp:ListItem Value="2:00 PM">2:00 PM</asp:ListItem>
                             <asp:ListItem Value="2:30 PM">2:30 PM</asp:ListItem>
                             <asp:ListItem Value="3:00 PM">3:00 PM</asp:ListItem>
                             <asp:ListItem Value="3:30 PM">3:30 PM</asp:ListItem>
                             <asp:ListItem Value="4:00 PM">4:00 PM</asp:ListItem>
                             <asp:ListItem Value="4:30 PM">4:30 PM</asp:ListItem>
                             <asp:ListItem Value="5:00 PM">5:00 PM</asp:ListItem>
                             <asp:ListItem Value="5:30 PM">5:30 PM</asp:ListItem>
                             <asp:ListItem Value="6:00 PM">6:00 PM</asp:ListItem>
                             <asp:ListItem Value="6:30 PM">6:30 PM</asp:ListItem>
                             <asp:ListItem Value="7:00 PM">7:00 PM</asp:ListItem>
                             <asp:ListItem Value="7:30 PM">7:30 PM</asp:ListItem>
                             <asp:ListItem Value="8:00 PM">8:00 PM</asp:ListItem>
                             <asp:ListItem Value="8:30 PM">8:30 PM</asp:ListItem>
                             <asp:ListItem Value="9:00 PM">9:00 PM</asp:ListItem>
                         </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                             ControlToValidate="cmbStTime" ErrorMessage="*"></asp:RequiredFieldValidator>
                         <br />
                     </td>
                 </tr>
                 <tr class="style8">
                     <td align="right" class="style11">
                         <asp:Label ID="Label5" runat="server" Text="End Time:"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:DropDownList ID="cmbEndtime" runat="server">
                             <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
                             <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
                             <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                             <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
                             <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
                             <asp:ListItem Value="11:30 AM">11:30 AM</asp:ListItem>
                             <asp:ListItem Value="12:00 PM">12:00 PM</asp:ListItem>
                             <asp:ListItem Value="12:30 PM">12:30 PM</asp:ListItem>
                             <asp:ListItem Value="1:00 PM">1:00 PM</asp:ListItem>
                             <asp:ListItem Value="1:30 PM">1:30 PM</asp:ListItem>
                             <asp:ListItem Value="2:00 PM">2:00 PM</asp:ListItem>
                             <asp:ListItem Value="2:30 PM">2:30 PM</asp:ListItem>
                             <asp:ListItem Value="3:00 PM">3:00 PM</asp:ListItem>
                             <asp:ListItem Value="3:30 PM">3:30 PM</asp:ListItem>
                             <asp:ListItem Value="4:00 PM">4:00 PM</asp:ListItem>
                             <asp:ListItem Value="4:30 PM">4:30 PM</asp:ListItem>
                             <asp:ListItem Value="5:00 PM">5:00 PM</asp:ListItem>
                             <asp:ListItem Value="5:30 PM">5:30 PM</asp:ListItem>
                             <asp:ListItem Value="6:00 PM">6:00 PM</asp:ListItem>
                             <asp:ListItem Value="6:30 PM">6:30 PM</asp:ListItem>
                             <asp:ListItem Value="7:00 PM">7:00 PM</asp:ListItem>
                             <asp:ListItem Value="7:30 PM">7:30 PM</asp:ListItem>
                             <asp:ListItem Value="8:00 PM">8:00 PM</asp:ListItem>
                             <asp:ListItem Value="8:30 PM">8:30 PM</asp:ListItem>
                             <asp:ListItem Value="9:00 PM">9:00 PM</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr class="style8">
                     <td align="right" class="style11">
                         <asp:Label ID="Label6" runat="server" Text="start Date:"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txtStDate" runat="server"></asp:TextBox>
                         <asp:ImageButton ID="imgStDate" runat="server" ImageUrl="images/cal.bmp" 
                             onclick="imgStDate_Click" style="width: 18px" />
                         <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                             BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                             Font-Size="10pt" ForeColor="Black" Height="130px" NextPrevFormat="FullMonth" 
                             onselectionchanged="Calendar1_SelectionChanged" TitleFormat="Month" 
                             Visible="False" Width="197px">
                             <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                             <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                                 Font-Size="8pt" ForeColor="#333333" Width="1%" />
                             <TodayDayStyle BackColor="#CCCC99" />
                             <OtherMonthDayStyle ForeColor="#999999" />
                             <DayStyle Width="14%" />
                             <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                             <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                                 ForeColor="#333333" Height="10pt" />
                             <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                                 ForeColor="White" Height="14pt" />
                         </asp:Calendar>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                             ControlToValidate="txtStDate" ErrorMessage="*"></asp:RequiredFieldValidator>
                         <br />
                     </td>
                 </tr>
                 <tr class="style8">
                     <td align="right" class="style11">
                         <asp:Label ID="Label7" runat="server" Text="End Date:"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                         <asp:ImageButton ID="imgEndDate" runat="server" ImageUrl="images/cal.bmp" 
                             onclick="imgEndDate_Click" />
                         <asp:Calendar ID="Calendar3" runat="server" BackColor="White" 
                             BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                             Font-Size="10pt" ForeColor="Black" Height="130px" NextPrevFormat="FullMonth" 
                             onselectionchanged="Calendar3_SelectionChanged" TitleFormat="Month" 
                             Visible="False" Width="197px">
                             <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                             <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                                 Font-Size="8pt" ForeColor="#333333" Width="1%" />
                             <TodayDayStyle BackColor="#CCCC99" />
                             <OtherMonthDayStyle ForeColor="#999999" />
                             <DayStyle Width="14%" />
                             <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                             <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                                 ForeColor="#333333" Height="10pt" />
                             <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                                 ForeColor="White" Height="14pt" />
                         </asp:Calendar>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                             ControlToValidate="txtEndDate" ErrorMessage="*"></asp:RequiredFieldValidator>
                         <br />
                     </td>
                 </tr>
                 <tr class="style8">
                     <td align="right" class="style11">
                         <asp:Label ID="Label8" runat="server" Text="Batch Day:"></asp:Label>
                     </td>
                     <td class="style5">
                         <asp:ListBox ID="lstDay" runat="server" SelectionMode="Multiple">
                             <asp:ListItem Text="Sunday" Value="Sunday">Sunday</asp:ListItem>
                             <asp:ListItem Text="Monday" Value="Monday">Monday</asp:ListItem>
                             <asp:ListItem>Tuesday</asp:ListItem>
                             <asp:ListItem>Wednesday</asp:ListItem>
                             <asp:ListItem>Thursday</asp:ListItem>
                             <asp:ListItem>Friday</asp:ListItem>
                             <asp:ListItem>Saturday</asp:ListItem>
                         </asp:ListBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                             ControlToValidate="lstDay" ErrorMessage="*"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr class="style8">
                     <td align="right" class="style11">
                         <asp:Button ID="btnSubmit" runat="server" BackColor="Black" Font-Bold="True" 
                             ForeColor="White" onclick="btnSubmit_Click" Text="Submit" />
                     </td>
                     <td class="style5">
                         <asp:Button ID="btnCancel" runat="server" BackColor="Black" Font-Bold="True" 
                             ForeColor="White" onclick="btnCancel_Click" Text="Add More" />
                         <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                     </td>
                 </tr>
             </table>
         </asp:Panel>
         <p>
             &nbsp;</p>
     </asp:View>
  
        
        <asp:View ID="view4" runat="server">
        <h5>
            Today Batches</h5>
            <table>
            <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
            <tr>
            <td>If u Want Course Wise Batch then,  Select Course:</td>
            <td><asp:DropDownList ID="cmbSelCourse" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="cmbSelCourse_SelectedIndexChanged">
            <asp:ListItem >--Select Course--</asp:ListItem>
           
        </asp:DropDownList></td>
            </tr>
            
            </table>
            <br />
            <asp:Label ID="lblC1" runat="server" Text="Course: "></asp:Label>
            <asp:Label ID="lblC" runat="server" Text="Label" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                onrowcommand="GridView3_RowCommand">
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <EmptyDataTemplate>
                    <asp:Label ID="Label14" runat="server" 
                        Text="No any Batches recenty completed..."></asp:Label>
                </EmptyDataTemplate>
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns >
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label136" runat="server" ForeColor="White" Text="BID"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblBID" runat="server" Text='<%# Eval("bid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Faculty"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblfname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                            &nbsp;<asp:Label ID="lbllname" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Start Time"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblStarttime" runat="server" Text='<%# Eval("sttime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="End Time"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblEndtime" runat="server" Text='<%# Eval("endtime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Start Date"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblStartdate" runat="server" Text='<%# Eval("stDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="End Date"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblEnddate" runat="server" Text='<%# Eval("endDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EDIT">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" CommandName="Batch" CommandArgument='<%#Eval("bid") %>'   onclick="btnEdit_Click" Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            
          <%--  <table border="2px" 
                style="background-color: #E9E9E0; height: 191px; width: 477px;">
                <tr>
                    <td>
                        <b>Course</b></td>
                    <td>
                        <b>Faculty</b></td>
                    <td>
                        <b>Start Time</b></td>
                    <td>
                        <b>End Time</b></td>
                </tr>
                <tr>
                    <td>
                        PHP</td>
                    <td>
                        Praveen Shrama</td>
                    <td>
                        9:00 AM</td>
                    <td>
                        11:00 AM</td>
                    <tr>
                        <td>
                            A+</td>
                        <td>
                            Neha Shah</td>
                        <td>
                            11:00 AM</td>
                        <td>
                            1:00 PM</td>
                        <tr>
                            <td>
                                C</td>
                            <td>
                                Aniket Patel</td>
                            <td>
                                1:00 PM</td>
                            <td>
                                3:00 PM</td>
                        </tr>
                        <tr>
                            <td>
                                Asp.Net</td>
                            <td>
                                Amit Gajera</td>
                            <td>
                                3:00 PM</td>
                            <td>
                                5:00 PM</td>
                        </tr>
                        <tr>
                            <td>
                                Asp.Net</td>
                            <td>
                                Kruti Shah</td>
                            <td>
                                5:00 PM</td>
                            <td>
                                7:00 PM</td>
                        </tr>
                        <tr>
                            <td>
                                MultiMedia</td>
                            <td>
                                Anjali Shrama</td>
                            <td>
                                7:00 PM</td>
                            <td>
                                9:00 PM</td>
                        </tr>
                    </tr>
                </tr>
            </table>--%>
<ul>
<li>
    <asp:LinkButton ID="lnkAddBatch" runat="server" onclick="lnkAddBatch_Click">Add New Batch</asp:LinkButton></li>
    <br />
<li><asp:LinkButton ID="lnkEditBatch" runat="server" onclick="lnkEditBatch_Click">Modify Batch</asp:LinkButton></li>
</ul>            
            
        </asp:View>
   </asp:MultiView>
</asp:Content>

