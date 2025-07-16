
<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="CoursesDetail.aspx.cs" Inherits="CoursesDetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID ="view1" runat ="server" >
    <h4>Information Of Courses</h4>
    
    Select Course:<asp:DropDownList ID="cmbCrs" runat="server" AutoPostBack="True" 
            onselectedindexchanged="cmbCrs_SelectedIndexChanged1">
    <asp:ListItem >Software</asp:ListItem>
    <asp:ListItem >Hardware</asp:ListItem>
    <asp:ListItem >MultiMedia</asp:ListItem>
    <asp:ListItem >Web Designing</asp:ListItem>
    <asp:ListItem >Diploma Course</asp:ListItem>
    
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" Font-Size="20pt" ForeColor="Black" GridLines="Vertical" 
           
            Width="398px" onrowcommand="GridView1_RowCommand">
            <FooterStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label1" runat="server" Font-Size="12" ForeColor="White" 
                            Text="Sub Courses"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Font-Size="14px" 
                            Text='<%#Eval("subCrs") %>'>&#39; &gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label3" runat="server" Font-Size="12" ForeColor="White" 
                            Text="Duration"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Font-Size="14px" 
                            Text='<%#Eval("duration") %>'>&#39;&gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label5" runat="server" Font-Size="12" ForeColor="White" 
                            Text="Fee"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Font-Size="14px" Text='<%#Eval("fee") %>'>&#39; 
                        &gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <br />
        <br />
        <ul>
            <li>
                <asp:LinkButton ID="lnkEdit" runat="server" onclick="lnkEdit_Click">Modify Course</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="lnkAdd" runat="server" onclick="lnkAdd_Click">Add New Course</asp:LinkButton>
            </li>
        </ul>
        
       
       
    </asp:View>
 
    <asp:View ID ="view3" runat ="server" >
    <h4>Modify course Detail</h4>
    Select Course:<asp:DropDownList ID="cmbCrs1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="cmbCrs1_SelectedIndexChanged">
    <asp:ListItem >Software</asp:ListItem>
    <asp:ListItem >Hardware</asp:ListItem>
    <asp:ListItem >MultiMedia</asp:ListItem>
    <asp:ListItem >Web Designing</asp:ListItem>
    <asp:ListItem >Diploma Course</asp:ListItem>
    
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" Font-Size="20pt" ForeColor="Black" GridLines="Vertical" 
           
            Width="398px" onrowcommand="GridView1_RowCommand">
            <FooterStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label1" runat="server" Font-Size="12" ForeColor="White" 
                            Text="Sub Courses"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Font-Size="14px" 
                            Text='<%#Eval("subCrs") %>'>&#39; &gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label3" runat="server" Font-Size="12" ForeColor="White" 
                            Text="Duration"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Font-Size="14px" 
                            Text='<%#Eval("duration") %>'>&#39;&gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label5" runat="server" Font-Size="12" ForeColor="White" 
                            Text="Fee"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Font-Size="14px" Text='<%#Eval("fee") %>'>&#39; 
                        &gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField >
                <ItemTemplate >
                    <asp:Button ID="Button1" runat="server" Text="Edit" CommandName ="E" CommandArgument ='<%#Eval("crID") %>' BackColor="Black" Font-Bold="True" 
                        ForeColor="White" Width="54px" />
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
      
        <br />
        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
            BorderWidth="2px" CellPadding="4" ForeColor="#333333" GridLines="None" 
            HeaderText="Edit Course Detail" Height="50px" HorizontalAlign="Center" 
            onitemcommand="DetailsView2_ItemCommand" Width="317px" 
            onpageindexchanging="DetailsView2_PageIndexChanging">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                HorizontalAlign="Center" />
            <EditRowStyle BackColor="#999999" />
            <Fields>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label3" runat="server" Text="SubCourse"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtSubCrs" runat="server" Text='<%#Eval("subCrs") %>'></asp:TextBox>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label292" runat="server" Text="Duration:"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtDuration" runat="server" Text='<%#Eval("duration") %>'></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="(In Month)"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label293" runat="server" Text="Fee:"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtFee" runat="server" Text='<%#Eval("fee") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField >
                <ItemTemplate >
                    <asp:Button ID="Button2" runat="server" Text="Edit" CommandName ="E" 
                        CommandArgument ='<%#Eval("crID") %>' BackColor="Black" Font-Bold="True" 
                        ForeColor="White" Width="54px"/>
                </ItemTemplate>
                </asp:TemplateField>
                
            </Fields>
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:DetailsView>
        <br />
        <br />
        <br />
    </asp:View>
    <asp:View ID="view4" runat ="server" >
    <h4>Add New Course</h4>
        <p>
            &nbsp;</p>
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
            BorderWidth="2px" CellPadding="4" ForeColor="#333333" GridLines="None" 
            HeaderText="Add Course " Height="50px" HorizontalAlign="Center" 
            onitemcommand="DetailsView3_ItemCommand" Width="332px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                HorizontalAlign="Center" />
            <EditRowStyle BackColor="#999999" />
            <Fields>
            <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label2941" runat="server" Text="Course:"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="cmbCrs3" runat="server" AutoPostBack="True" >
    <asp:ListItem >Software</asp:ListItem>
    <asp:ListItem >Hardware</asp:ListItem>
    <asp:ListItem >MultiMedia</asp:ListItem>
    <asp:ListItem >Web Designing</asp:ListItem>
    <asp:ListItem >Diploma Course</asp:ListItem>
    
        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label2942" runat="server" Text="SubCourse"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtSubCrs2" runat="server" ></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label2951" runat="server" Text="Duration:"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtDuration2" runat="server"></asp:TextBox><asp:Label runat="server" Text="(In Month)"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="Label2961" runat="server" Text="Fee:"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtFee2" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server"  
                            CommandName="A" Text="Add" BackColor="Black" Font-Bold="True" 
                        ForeColor="White" Width="54px"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:DetailsView>
        <%--<table>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Course"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="cmbCourse1" runat="server" AutoPostBack="True" >                  
                    
                    </asp:DropDownList>
                    <asp:TextBox ID="txtCrs1" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Sub Course"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSubcrs1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Duration"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDuration1" runat="server"></asp:TextBox>
                    <asp:Label ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Fee"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFee1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" />
                </td>
            </tr>
        </table>
--%>    
    </asp:View>
    </asp:MultiView>
</asp:Content>

