<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" Theme="SkinFile" EnableTheming="true"  CodeFile="StudentDetail.aspx.cs" Inherits="StudentDetail" Title="Untitled Page" %>

<script runat="server">

   
  
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            height: 28px;
            width: 207px;
        }
        .style3
        {
            width: 172px;
        }
        .style4
        {
            height: 28px;
            width: 172px;
        }
        .style5
        {
            width: 207px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="multiview1" runat ="server" >
<asp:View  ID="view1" runat ="server" >
<h4>Information Of Students</h4>
    <br /><br />
If u Want Batch Wise Report:<asp:DropDownList ID="cmbBacthID" runat="server" 
        onselectedindexchanged="cmbBacthID_SelectedIndexChanged" 
        AutoPostBack="True">


<asp:ListItem >B1</asp:ListItem>
</asp:DropDownList>
    <br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
       
        onrowcommand="GridView1_RowCommand" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label25" CssClass="Button"     runat="server" Text="Name" ForeColor ="White"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblFname17" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                    <asp:Label ID="lblLname" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label26" runat="server" Text="Cell No" ForeColor ="White"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblCell" runat="server" Text='<%#Eval("cellno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label28" runat="server" Text="MailID" ForeColor ="White"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblMail" runat="server" Text='<%#Eval("emailID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label27" runat="server" Text="Qualification" ForeColor ="White"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblQua" runat="server" Text='<%#Eval("qua") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField >
            <ItemTemplate >
                <asp:Button ID="btnDetail" runat="server" Text="Detail" CommandName ="D" 
                    CommandArgument ='<%#Eval("stdID") %>' BackColor="Black" Font-Bold="True" 
                    ForeColor="White" Width="60px" />
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    
    </asp:GridView>
    <br />
    &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" 
        Height="50px" Width="230px" HeaderText="Detail Of Student" 
        HorizontalAlign="Center" BorderWidth="2px" 
        onitemcommand="DetailsView1_ItemCommand" 
        onpageindexchanging="DetailsView1_PageIndexChanging">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="First Name:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="Last Name:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="Address:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="City:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="PinCode:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("pcode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="Phone No:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("phno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="Cell No:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("cellno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="Gender:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="E-MailID:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("emailID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="BirthDate:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("bdate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label29" runat="server" Text="Qualification:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%#Eval("qua") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" />
    </asp:DetailsView>
    <h4>
        Editing Information Of Students</h4>
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/EmptyStar.png" />
    &nbsp;&nbsp;<asp:LinkButton ID="lnkAddStud" runat="server" onclick="lnkAddStud_Click">Add 
    Student Detail</asp:LinkButton>
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/EmptyStar.png" />
&nbsp;
    <asp:LinkButton ID="lnkEditStud" runat="server" onclick="lnkEditStud_Click">Modify Student Detail</asp:LinkButton>
    
</asp:View>
<asp:View  ID="view2" runat ="server" >
<h4>Add New Student Data</h4>
Select Batch:<asp:DropDownList ID="cmbBatch" runat="server" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
           </asp:DropDownList>
           &nbsp;&nbsp;&nbsp; Course :<asp:Label ID="lblcourse" runat="server"></asp:Label>
    <br />
    <%--<b>Batch:</b><asp:Label ID="lblBatch" runat="server"></asp:Label>     
<b>
    <br />
    <br />
    Course:</b><asp:Label ID="lblCourse" runat="server"></asp:Label>
<b>
    <br />
    <br />
    Faculty:</b><asp:Label ID="lblFc" runat="server"></asp:Label><br /><br />--%>
    <table border="2" style="background-color: #E5E5E5; width: 371px;">
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label22" runat="server" Text="Student ID:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtStID" runat="server" ontextchanged="txtStID_TextChanged"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtStID" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="lblStdPwd" runat="server" Font-Size="Small" 
                    Text="Student Password:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtFname" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="txtFname" ErrorMessage="only alphabet" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtLname" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="txtLname" ErrorMessage="only alphabets" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtAdd" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label4" runat="server" Text="City:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="only alphabets" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label5" runat="server" Text="PinCode:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtPcode" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtPcode" ErrorMessage="invalid pin" 
                    ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label6" runat="server" Text="Phone No:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtPhno" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtPhno" ErrorMessage="only 10 digits allowed" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label7" runat="server" Text="Cell No:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtCell" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtCell" ErrorMessage="only 10 digits allowed" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label10" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td class="style5">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label8" runat="server" Text="E-mail ID:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtMailID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtMailID" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtMailID" ErrorMessage="invalid email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label9" runat="server" Text="Birth Date:"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlDate" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlMonth" runat="server">
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>Apr</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlYear" runat="server">
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1900</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label24" runat="server" Text="Qualification:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtQua" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtQua" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style5">
                <asp:Button ID="cmdAdd" runat="server" BackColor="Black" Font-Bold="True" 
                    ForeColor="White" onclick="cmdAdd_Click" Text="Add" Width="65px" />
            </td>
        </tr>
    </table>
</asp:View>
<asp:View ID ="view3" runat="server" >
<h4>Edit Student Data</h4>
If u Want Batch Wise Report:<asp:DropDownList ID="cmbBatch1" runat="server" 
        onselectedindexchanged="cmbBatch1_SelectedIndexChanged" 
        AutoPostBack="True">


<asp:ListItem >B1</asp:ListItem>

</asp:DropDownList>
<br />    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" 
        onrowcommand="GridView2_RowCommand" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        HorizontalAlign="Center">
        <FooterStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label30" runat="server" ForeColor="White" Text="Name"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblFname18" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                    <asp:Label ID="lblLname0" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label31" runat="server" ForeColor="White" Text="Cell No"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblCell0" runat="server" Text='<%#Eval("cellno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label32" runat="server" ForeColor="White" Text="MailID"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblMail0" runat="server" Text='<%#Eval("emailID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label33" runat="server" ForeColor="White" Text="Qualification"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblQua0" runat="server" Text='<%#Eval("qua") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnDetail0" runat="server" 
                        CommandArgument='<%#Eval("stdID") %>' CommandName="E" Text="Edit" 
                        BackColor="Black" Font-Bold="True" ForeColor="White" Width="58px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
     <br />
     <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        BorderWidth="2px" CellPadding="4" ForeColor="#333333" GridLines="None" 
        HeaderText="Modify Detail of Student" Height="16px" HorizontalAlign="Center" 
        onitemcommand="DetailsView2_ItemCommand" 
        onmodechanging="DetailsView2_ModeChanging" 
        onpageindexchanging="DetailsView2_PageIndexChanging"  Width="268px">
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" 
             HorizontalAlign="Right" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
             HorizontalAlign="Center" />
         <EditRowStyle BackColor="#999999" />
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Fields>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtFame" runat="server" Text='<%# Eval("fname") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label293" runat="server" Text="Address:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtAdd" runat="server" Text='<%#Eval("address") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label292" runat="server" Text="Last Name:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtLname" runat="server" Text='<%# Eval("lname") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label294" runat="server" Text="City:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtCity" runat="server" Text='<%#Eval("city") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label295" runat="server" Text="PinCode:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtpcode" runat="server" Text='<%# Eval("pcode") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label296" runat="server" Text="Phone No:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtPhno" runat="server" Text='<%#Eval("phno") %>' 
                        ></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label297" runat="server" Text="Cell No:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtCell" runat="server" Text='<%#Eval("cellno") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label299" runat="server" Text="E-MailID:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtMail" runat="server" Text='<%#Eval("emailID") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label290" runat="server" Text="BirthDate:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtBdate" runat="server" Text='<%#Eval("bdate") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <HeaderTemplate>
                     <asp:Label ID="Label2901" runat="server" Text="Qualification:"></asp:Label>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <asp:TextBox ID="txtQua" runat="server" Text='<%#Eval("qua") %>'></asp:TextBox>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <ItemTemplate>
                     <asp:Button ID="Button1" runat="server" BackColor="Black" 
                         CommandArgument='<%#Eval("stdID") %>' CommandName="Edit" Font-Bold="True" 
                         ForeColor="White" Text="Edit" Width="65px" />
                 </ItemTemplate>
             </asp:TemplateField>
         </Fields>
    </asp:DetailsView>
    <%--<table border="2" style="background-color: #E5E5E5; width: 371px;">
        <tr>
            <td align="right">
                Student ID:</td>
            <td>
                <asp:DropDownList ID="cmbStid" runat="server">
                    <asp:ListItem>pooja123</asp:ListItem>
                    <asp:ListItem>arti123</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label11" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label12" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label13" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label14" runat="server" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label15" runat="server" Text="PinCode:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label16" runat="server" Text="Phone No:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label17" runat="server" Text="Cell No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label18" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label19" runat="server" Text="E-mail ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label20" runat="server" Text="Birth Date:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button3" runat="server" Text="Delete" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Update" />
            </td>
        </tr>
    </table>
--%></asp:View>
</asp:MultiView>

</asp:Content>

