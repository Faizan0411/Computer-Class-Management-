<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
   
          
   <h4>Query Posted By Student</h4>
    <p>&nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" 
            onrowcommand="GridView1_RowCommand">
        <FooterStyle BackColor="#CCCCCC" />
        <Columns >
        <asp:TemplateField >
        <HeaderTemplate >
            <asp:Label ID="Label14" runat="server" Text="Name" ForeColor ="White" ></asp:Label></HeaderTemplate>
        <ItemTemplate >
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("fname") %>'></asp:Label>&nbsp;
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField >
        <HeaderTemplate >
            <asp:Label ID="Label15" runat="server" Text="Query" ForeColor ="White" ></asp:Label></HeaderTemplate>
        <ItemTemplate >
         <asp:Label ID="Label3" runat="server" Text='<% #Eval("query") %>'></asp:Label>  
         </ItemTemplate> 
        </asp:TemplateField>
        <asp:TemplateField >
        <ItemTemplate >
            <asp:Button ID="Button2" runat="server" Text="Detail" 
                CommandArgument ='<%#Eval("stdID") %>' CommandName ="D" BackColor="Black" 
                Font-Bold="True" ForeColor="White" />
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <EmptyDataTemplate>
            <asp:Label ID="Label2902" runat="server" Text="No Any Query Posted By Student"></asp:Label>
        </EmptyDataTemplate>
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
    
        <br />
    
        <br />
         <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" 
        Height="50px" Width="230px"  
            HeaderText="Detail of Student" HorizontalAlign="Center" 
    BorderWidth="2px" onitemcommand="DetailsView2_ItemCommand" onmodechanging="DetailsView2_ModeChanging" 
       >
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="#CC6699" 
                 HorizontalAlign="Center" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Fields>
        <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="lbl_stdid" runat="server" Text="Student ID:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    
                    <asp:Label ID="lblFname1" runat="server" Text='<%#Eval("stdID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Labelf_naame" runat="server" Text="First Name:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    
                    <asp:Label ID="lblFname2" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label292" runat="server" Text="Last Name:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                  
                  <asp:Label ID="lblLname" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label293" runat="server" Text="Address:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                 <asp:TextBox ID="txtAdd" runat="server" Text ='<%#Eval("address") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label294" runat="server" Text="City:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtCity" runat="server" Text ='<%#Eval("city") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label295" runat="server" Text="PinCode:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtpcode" runat="server" Text ='<%#Eval("pcode") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label296" runat="server" Text="Phone No:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                  <asp:TextBox ID="txtPhno" runat="server" Text ='<%#Eval("phno") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label297" runat="server" Text="Cell No:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                   <asp:TextBox ID="txtCell" runat="server" Text ='<%#Eval("cellno") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label299" runat="server" Text="E-MailID:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtMail" runat="server" Text ='<%#Eval("emailID") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label290" runat="server" Text="BirthDate:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtBdate" runat="server" Text ='<%#Eval("bdate") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label ID="Label2901" runat="server" Text="Qualification:"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtQua" runat="server" Text ='<%#Eval("qua") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Query">
                <ItemTemplate>
                    <asp:TextBox ID="TxtQuery" runat="server" TextMode="MultiLine"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField >
                <ItemTemplate>
                    <asp:Button ID="BtnReply" runat="server" onclick="BtnReply_Click" 
                        Text="Reply" />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <%--<table class="style1" border="2px">
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label4" runat="server" Text="First Name:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblFname3" runat="server" Text="Paras"></asp:Label><asp:TextBox ID="txtFname" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label5" runat="server" Text="Last Name:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblLname" runat="server" Text="Gajjar"></asp:Label><asp:TextBox ID="txtLname" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblAdd" runat="server" Text="201,Iscon Flate,Navrangpura."></asp:Label><asp:TextBox ID="txtAdd" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label9" runat="server" Text="City:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblCity" runat="server" Text="Ahmedabad"></asp:Label><asp:TextBox ID="txtCity" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label11" runat="server" Text="Pincode:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblPcode" runat="server" Text="345678"></asp:Label><asp:TextBox ID="txtPcode" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label6" runat="server" Text="Phone No:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblPhno" runat="server" Text="26758765"></asp:Label><asp:TextBox ID="txtPhno" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label8" runat="server" Text="Cell No:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblCell" runat="server" Text="9898768776"></asp:Label><asp:TextBox ID="txtCell" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label10" runat="server" Text="Gender:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblGender" runat="server" Text="female"></asp:Label><asp:TextBox ID="txtGender" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label12" runat="server" Text="Birth Date:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblBdate" runat="server" Text="2/2/1987"></asp:Label><asp:TextBox ID="txtBdate" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label13" runat="server" Text="EmailID:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblMailID" runat="server" Text="paras@yahoo.com"></asp:Label><asp:TextBox ID="txtEmailId" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label16" runat="server" Text="Qualification:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblQua" runat="server" Text="B.E.I.T."></asp:Label><asp:TextBox ID="txtQua" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8">
    <td class="style10" align="right">
        <asp:Label ID="Label17" runat="server" Text="Course:"></asp:Label></td>
    <td class="style11"><asp:Label ID="lblCourse" runat="server" Text="Asp.Net"></asp:Label><asp:TextBox ID="TextBox2" runat ="server" Visible ="false"  ></asp:TextBox></td>
    </tr>
    <tr class="style8"><td align ="right" class="style13" >
        <asp:Button ID="Button1" runat="server" Text="Edit" /></td></tr>
        <td class="style13"></td>
    </table>
    
    
        
    </td>
    </tr>
    <tr>
    <td></td>
    </tr>
    </table>--%>
    
    </table>
</asp:Content>

