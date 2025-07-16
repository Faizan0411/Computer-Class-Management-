<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="InquiryDetail.aspx.cs" Inherits="InquiryDetail" Title="Untitled Page"    %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID ="view1" runat ="server" >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1">
            <FooterStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblFname12" runat="server" Text="First Name"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblFname13" runat="server" Text='<%#Eval("fname") %>'>&#39;&gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblLname1" runat="server" Text="Last Name"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblLname2" runat="server" Text='<%#Eval("lname") %>'>&#39;&gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblPhno1" runat="server" Text="Phone No"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblPhno2" runat="server" Text='<%#Eval("phno") %>'>&#39;&gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
`                           <asp:Label ID="lblCmt1" runat="server" Text="comment"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCmt2" runat="server" Text='<%#Eval("comment") %>'>&#39;&gt;</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("inqID") %>' 
                            CommandName="D" Text="Detail" BackColor="Black" Font-Bold="True" 
                            ForeColor="White" />
                     </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Silver" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
    </asp:View>
    <asp:View ID ="view2" runat ="server" >
     <table >
     <tr><td>
         <asp:Label ID="Label3" runat="server" Text="First Name:"></asp:Label></td>
         <td>
             <asp:Label ID="lblFname14" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label></td>
     <td>&nbsp;<asp:Label ID="lblLname" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label></td>
     <td>
         <asp:Label ID="lblAdd" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label7" runat="server" Text="City"></asp:Label></td>
     <td>
         <asp:Label ID="lblCity" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label9" runat="server" Text="PinCode:"></asp:Label></td>
     <td>
         <asp:Label ID="lblPcode" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label8" runat="server" Text="Phone No:"></asp:Label></td>
     <td>
         <asp:Label ID="lblPhno" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label10" runat="server" Text="Cell No:"></asp:Label></td>
     <td>
         <asp:Label ID="lblCell" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label11" runat="server" Text="Gender:"></asp:Label></td>
     <td>
         <asp:Label ID="lblgen" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label12" runat="server" Text="Birth Date:"></asp:Label></td>
     <td>
         <asp:Label ID="lblBdate" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label13" runat="server" Text="E mail ID:"></asp:Label></td>
     <td>
         <asp:Label ID="lblMail" runat="server" Text=""></asp:Label></td>
     </tr>
     <tr>
     <td>
         <asp:Label ID="Label14" runat="server" Text="Comment:"></asp:Label></td>
     <td>
         <asp:Label ID="lblComment" runat="server" Text=""></asp:Label></td>
     </tr>
     
     
     
     </table>
        <asp:Button ID="Btnreply" runat="server" onclick="Btnreply_Click" 
            Text="Reply" Visible="False" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="delete" />
        <br />
    </asp:View>
    <asp:View id="view4" runat ="server" >
    <h4>Last Updated Inquiries</h4>
    <table border ="2px" style="background-color: #E1E1D5">
    <tr><td><b>Name</b></td>
    <td><b>Phone No</b></td>
    <td><b>Commnet</b></td>
    <td></td>
    </tr>
    <tr>
    <td>Gunjan Patel</td>
    <td>25736237</td>
    <td>Please give me information about the course of asp.net</td>
    <td>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Show Detail</asp:LinkButton></td>
    </tr>
    <tr>
    <td>Ankita Gajjar</td>
    <td>987634344 </td>
    <td>I want To know abt course of Software Testing</td>
    <td>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Show Detail</asp:LinkButton></td>
    </tr>
    <tr>
    <td>Saumil Shah</td>
    <td>987665779 </td>
    <td>plz give me course detail of ur company</td>
    <td>
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Show Detail</asp:LinkButton></td>
    </tr>
    
    </table>
    <br />
    <br />
    
    </asp:View>
    <asp:View id="view3" runat ="server" >
        <br />
        <table border="2px" style="background-color: #E1E1D5">
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label33" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="lblFname16" runat="server" Text="Ankita"></asp:Label>
                    <asp:TextBox ID="txtFname0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label34" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="Label35" runat="server" Text="Gajjar"></asp:Label>
                    <asp:TextBox ID="txtLname0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label36" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="Label37" runat="server" Text="23,Ambika Appt.Navrangpura."></asp:Label>
                    <asp:TextBox ID="txtAdd0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label38" runat="server" Text="City:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="Label39" runat="server" Text="Ahmedabad"></asp:Label>
                    <asp:TextBox ID="txtCity0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label40" runat="server" Text="Pincode:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="Label41" runat="server" Text="344678"></asp:Label>
                    <asp:TextBox ID="txtPcode0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label42" runat="server" Text="Phone No:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="Label43" runat="server" Text="26758765"></asp:Label>
                    <asp:TextBox ID="txtPhno0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label44" runat="server" Text="Cell No:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="Label45" runat="server" Text="987634344"></asp:Label>
                    <asp:TextBox ID="txtCell0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label46" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="lblGender0" runat="server" Text="female"></asp:Label>
                    <asp:TextBox ID="txtGender0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label47" runat="server" Text="Birth Date:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="Label48" runat="server" Text="5/6/1989"></asp:Label>
                    <asp:TextBox ID="txtBdate0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label49" runat="server" Text="EmailID:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="lblMailID0" runat="server" Text="ankita111@yahoo.com"></asp:Label>
                    <asp:TextBox ID="txtEmailId0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label50" runat="server" Text="Qualification:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="lblQua0" runat="server" Text="B.E.I.T."></asp:Label>
                    <asp:TextBox ID="txtQua0" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr class="style8">
                <td align="right" class="style10">
                    <asp:Label ID="Label51" runat="server" Text="Course:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="Label52" runat="server" Text="Asp.Net"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        </asp:View>
    </asp:MultiView>  
</asp:Content>

