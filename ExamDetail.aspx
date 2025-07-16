<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="ExamDetail.aspx.cs" Inherits="ExamDetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
<tr>
<td>
    <asp:Image ID="Image1" runat="server" 
        ImageUrl ="~/exam.jpg" Height="107px" 
        Width="139px"/></td>
        <td><h4>Exam Detail</h4></td>
</tr>
</table>

<asp:MultiView ID ="multiview1" runat ="server" >
<asp:View ID="view1" runat ="server" >


    <asp:Image ID="Image2" runat="server" ImageUrl ="~/images/EmptyStar.png" />&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server">Add Questions:</asp:LinkButton>
    <table style="width: 463px">
    <tr><td class="style1"></td><td>
        <asp:Label ID="Label7" runat="server" Text="Course:" Font-Bold="True" 
            Font-Size="16px"></asp:Label>
        <asp:DropDownList ID="cmbCourse" runat="server">
           
        </asp:DropDownList>
        <asp:DropDownList ID="cmbCid" runat="server" 
            onselectedindexchanged="cmbCid_SelectedIndexChanged" Visible="False">
        </asp:DropDownList>
        </td></tr>
    <tr>
    <td align="right" class="style1" >
        <asp:Label ID="Label1" runat="server" Text="Question:"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtQue" runat="server" TextMode ="MultiLine" Height="42px" 
            Width="302px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtQue" ErrorMessage="enter question"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
    <td class="style1" >
        Enter How many Option :</td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem >3</asp:ListItem>
        <asp:ListItem >4</asp:ListItem>
        <asp:ListItem >5</asp:ListItem>
        </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="enter number of options"></asp:RequiredFieldValidator>
         </td>
    </tr>
    <tr>
    <td align="right" class="style1" >
        <asp:Label ID="Label2" runat="server" Text="Option 1:"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtOpt1" runat="server" TextMode ="MultiLine" ></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style1" >
        <asp:Label ID="Label5" runat="server" Text="Option 2:"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtOpt2" runat="server" TextMode ="MultiLine" ></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style1" >
        <asp:Label ID="Label3" runat="server" Text="Option 3:"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtOpt3" runat="server" TextMode ="MultiLine" 
            ></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style1" >
        <asp:Label ID="Label4" runat="server" Text="Option 4:" Visible ="false"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtOpt4" runat="server" TextMode ="MultiLine"  Visible ="false" 
            ></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style1" >
        <asp:Label ID="Label8" runat="server" Text="Option 5:" Visible ="false" ></asp:Label></td>
    <td>
        <asp:TextBox ID="txtOpt5" runat="server" TextMode ="MultiLine"  Visible ="false" 
            ></asp:TextBox></td>
    </tr>
    <tr>
    <td align ="right" class="style1" >
        <asp:Label ID="Label6" runat="server" Text="Correct Answer:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="cmbAns" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem Value="5"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="cmbAns" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
            <td align="right" class="style1">
                <asp:Button ID="cmdAdd" runat="server" Text="Add" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" onclick="cmdAdd_Click" Width="53px" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server">Next Question</asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server">Finish Question</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:View>
<asp:View ID="view2" runat ="server" >
<h5>Select The course in which U add Questions Or Modify The Questions...</h5>
<table>
<tr>
<td>
    <asp:Label ID="Label9" runat="server" Text="Choose Course:"></asp:Label>
</td>
</tr>
<tr>
<td><asp:Image ID="Image3" runat="server" ImageUrl ="~/images/EmptyStar.png" />&nbsp;
    <asp:LinkButton ID="lnkAdd" runat="server" onclick="lnkAdd_Click">Add Questions</asp:LinkButton>
    <br />
    </td>
</tr>
<tr>
<td><asp:Image ID="Image4" runat="server" ImageUrl ="~/images/EmptyStar.png" />&nbsp;
    <asp:LinkButton ID="lnkEditQ" runat="server" onclick="lnkEditQ_Click"> Edit Questions</asp:LinkButton></td>
</tr>
</table>
    <br />
<h4>Last Week Exams Result</h4>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" >
        <FooterStyle BackColor="#CCCCCC" />
        <Columns>
         <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label30" runat="server" ForeColor="White" Text="Student ID"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblStdID" runat="server" ondatabinding="lblStdID_DataBinding" 
                        Text='<%# Eval("stdID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label30" runat="server" ForeColor="White" Text="Name"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblFname5" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                    <asp:Label ID="lblLname0" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField >
                <HeaderTemplate>
                    <asp:Label ID="Label33" runat="server" ForeColor="White" Text="Qualification"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblQua0" runat="server" Text='<%#Eval("qua") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Result">
                <HeaderTemplate>
                    <asp:Label ID="lblRes" runat="server" Text="Result" ForeColor="White"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPer" runat="server" Text='<%# Eval("Per") %>'></asp:Label>
                    &nbsp;<asp:Label ID="lblPerc" runat="server" Text="%"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblRes" runat="server" Text='<%# Eval("Res") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <EmptyDataTemplate>
            <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Size="12px" 
                Text="No Recently Exam result Updated"></asp:Label>
        </EmptyDataTemplate>
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <br />
</asp:View>
</asp:MultiView>

</asp:Content>

