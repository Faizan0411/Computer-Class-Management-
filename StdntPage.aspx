<%@ Page Language="C#" MasterPageFile="~/MPstudent.master" AutoEventWireup="true" CodeFile="StdntPage.aspx.cs" Inherits="StdntPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            &nbsp;<table style="height: 316px">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="200px" 
                            ImageUrl="~/thumbs-up-hand-vector-6366282.jpg" Width="200px" />
                    </td>
                    <td>
                        <h5>
                            Hello Student, We are thankful to u for registering here. So Hopefully You Are 
                            satisfied of our teaching and learning ...Wish U All THE BEST...
                        </h5>
                        <p>
                            <ul>
                                <li>If you want To see or Modify your Profile Then ,
                                    <asp:LinkButton ID="lnkShowP" runat="server" onclick="lnkShowP_Click">Show 
                                    Profile</asp:LinkButton>
                                    &nbsp;click Here </li>
                            </ul>
                            <ul>
                                <li>If you want To give exam Then ,
                                    <asp:LinkButton ID="lnkStartE" runat="server" onclick="lnkStartE_Click">Start 
                                    Exam</asp:LinkButton>
                                    click Here </li>
                            </ul>
                            <ul>
                                <li>If you want To see your Batch Timings Then ,
                                    <asp:LinkButton ID="lnkBatch" runat="server" onclick="lnkBatch_Click">Batch 
                                    Timings</asp:LinkButton>
                                    click Here </li>
                            </ul>
                            <ul>
                                <li>If you want To see detail or topic of courses Then ,
                                    <asp:LinkButton ID="lnkCourse" runat="server" onclick="lnkCourse_Click">Courses 
                                    Detail</asp:LinkButton>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <asp:LinkButton ID="LnkQuery0" runat="server" onclick="LnkQuery0_Click">Post your Query Here.</asp:LinkButton>
                                </li>
                            </ul>
                            <ul>
                                <li>If u want to download any material of ur course click this link...
                                    <ul>
                                        <li>
                                            <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Asp.Net</asp:LinkButton>
                                            <ul>
                                                <li>
                                                    <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">Wrox 
                                                    Proffession(.pdf format)</asp:LinkButton>
                                                </li>
                                                <li>
                                                    <asp:LinkButton ID="LinkButton8" runat="server">MSDN Book(.pdf format)</asp:LinkButton>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="LinkButton6" runat="server">VB.Net</asp:LinkButton>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
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
                        </p>
                    </td>
                </tr>
            </table>
            <br />
            <asp:MultiView ID="multiview1" runat="server">
                <asp:View ID="View6" runat="server">
                    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="110px" 
                        onmodechanging="DetailsView3_ModeChanging" Width="280px">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <PagerTemplate>
                            dfdfddfd
                        </PagerTemplate>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <Fields>
                            <asp:TemplateField HeaderText="Batch ID :">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtBID" runat="server" Enabled="False"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Batch Start Date  :">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtBStD" runat="server" Enabled="False"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Batch End Date :">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtBEnddt" runat="server" Enabled="False"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Days :">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtDays" runat="server" Enabled="False"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Batch Start Time :">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtBStime" runat="server" Enabled="False"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Batch End Time :">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtBEtime" runat="server" Enabled="False"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Faculty Name :">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtFname" runat="server" Enabled="False"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:DetailsView>
                    <br />
                </asp:View>
                <asp:View ID="View5" runat="server">
                    <br />
                    <h4>
                        VB.Net</h4>
                    <ul>
                        <li>Introduction to Visual basic Language</li>
                        <li>Working With Forms</li>
                        <li>Standard Controls</li>
                        <li>Property,Events &amp; Methods of controls</li>
                        <li>Variables and Data Type</li>
                        <li>Descision Making and branching Statement</li>
                        <li>Loop in VB</li>
                        <li>Array</li>
                        <li>Select Case Statement</li>
                        <li>Functions and Procedures</li>
                        <li>Components</li>
                        <li>Introduction to database</li>
                        <li>Introduction to DAO</li>
                        <li>Create DataBase</li>
                        <li>DataBase Connectivity with ADO</li>
                        <li>Datagrid and FlexGrid</li>
                        <li>Data Reports</li>
                        <li>Common Window Controls</li>
                        <li>Working with MDI &amp; Menu editor</li>
                        <li>Activex Controls</li>
                        <li>Package and Deployment</li>
                    </ul>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <h4>
                        ASP.Net</h4>
                    <ul>
                        <li>Introduction to .Net Framework</li>
                        <li>Overview of ASP</li>
                        <li>Difference between Asp &amp; Asp.net</li>
                        <li>Web page Designing concept</li>
                        <li>Introduction VB language</li>
                        <li>Operators,Keyword,Procedure</li>
                        <li>datatypes and Methods</li>
                        <li>Decision Making Statement</li>
                        <li>Loops</li>
                        <li>Arrays</li>
                        <li>Class module &amp; user Control</li>
                        <li>Standard Web Controls</li>
                        <li>Login Controls</li>
                        <li>Navigation Controls</li>
                        <li>introduction to database</li>
                        <li>ADO and ADO.net Introduction</li>
                        <li>Databse Connectivity with Ado and Ado.net</li>
                        <li>database Connectivity with data Controls</li>
                        <li>Deployment Web Application</li>
                    </ul>
                    <p>
                        &nbsp;</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <br />
                    <h4>
                        ASP.Net</h4>
                    <ul>
                        <li>Introduction to .Net Framework</li>
                        <li>Overview of ASP</li>
                        <li>Difference between Asp &amp; Asp.net</li>
                        <li>Web page Designing concept</li>
                        <li>Introduction VB language</li>
                        <li>Operators,Keyword,Procedure</li>
                        <li>datatypes and Methods</li>
                        <li>Decision Making Statement</li>
                        <li>Loops</li>
                        <li>Arrays</li>
                        <li>Class module &amp; user Control</li>
                        <li>Standard Web Controls</li>
                        <li>Login Controls</li>
                        <li>Navigation Controls</li>
                        <li>introduction to database</li>
                        <li>ADO and ADO.net Introduction</li>
                        <li>Databse Connectivity with Ado and Ado.net</li>
                        <li>database Connectivity with data Controls</li>
                        <li>Deployment Web Application</li>
                    </ul>
                    <br />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="view1" runat="server">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="view2" runat="server">
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                        BorderWidth="2px" CellPadding="4" ForeColor="#333333" GridLines="None" 
                        HeaderText="Modify Detail of Student" Height="50px" HorizontalAlign="Center" 
                        onitemcommand="DetailsView2_ItemCommand" 
                        onmodechanging="DetailsView2_ModeChanging" 
                        onpageindexchanging="DetailsView2_PageIndexChanging" Width="263px">
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
                                    <asp:Label ID="label2" runat="server" Text="First Name:"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="txtFame" runat="server" Text='<%#Eval("fname") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label ID="Label292" runat="server" Text="Last Name:"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="txtLname" runat="server" Text='<%#Eval("lname") %>'></asp:TextBox>
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
                                    <asp:TextBox ID="txtpcode" runat="server" Text='<%#Eval("pcode") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label ID="Label296" runat="server" Text="Phone No:"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="txtPhno" runat="server" Text='<%#Eval("phno") %>'></asp:TextBox>
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
                                <HeaderTemplate>
                                    Select Security Question&nbsp;&nbsp;
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList ID="ddlSQ" runat="server">
                                        <asp:ListItem Selected="True">Select Question :</asp:ListItem>
                                        <asp:ListItem>What is the name of your first school?</asp:ListItem>
                                        <asp:ListItem>What is your Zodiac sign?</asp:ListItem>
                                        <asp:ListItem>What is your favourite pasttime?</asp:ListItem>
                                        <asp:ListItem>What is your pet&#39;s name?</asp:ListItem>
                                        <asp:ListItem>What is your fav.teacher&#39;s name?</asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    Answer&nbsp; :
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="txtAns" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" BackColor="Black" 
                                        CommandArgument='<%#Eval("stdID") %>' CommandName="Edit" Font-Bold="True" 
                                        ForeColor="White" Text="Edit" Width="65px" onclick="Button1_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>
                </asp:View>
                <asp:View ID="view3" runat="server">
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/.ntimg.bmp" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <h4>
                                    VB.Net</h4>
                                <ul>
                                    <li>Introduction to Visual basic Language</li>
                                    <li>Working With Forms</li>
                                    <li>Standard Controls</li>
                                    <li>Property,Events &amp; Methods of controls</li>
                                    <li>Variables and Data Type</li>
                                    <li>Descision Making and branching Statement</li>
                                    <li>Loop in VB</li>
                                    <li>Array</li>
                                    <li>Select Case Statement</li>
                                    <li>Functions and Procedures</li>
                                    <li>Components</li>
                                    <li>Introduction to database</li>
                                    <li>Introduction to DAO</li>
                                    <li>Create DataBase</li>
                                    <li>DataBase Connectivity with ADO</li>
                                    <li>Datagrid and FlexGrid</li>
                                    <li>Data Reports</li>
                                    <li>Common Window Controls</li>
                                    <li>Working with MDI &amp; Menu editor</li>
                                    <li>Activex Controls</li>
                                    <li>Package and Deployment</li>
                                </ul>
                            </td>
                            <td>
                                <h4>
                                    ASP.Net</h4>
                                <ul>
                                    <li>Introduction to .Net Framework</li>
                                    <li>Overview of ASP</li>
                                    <li>Difference between Asp &amp; Asp.net</li>
                                    <li>Web page Designing concept</li>
                                    <li>Introduction VB language</li>
                                    <li>Operators,Keyword,Procedure</li>
                                    <li>datatypes and Methods</li>
                                    <li>Decision Making Statement</li>
                                    <li>Loops</li>
                                    <li>Arrays</li>
                                    <li>Class module &amp; user Control</li>
                                    <li>Standard Web Controls</li>
                                    <li>Login Controls</li>
                                    <li>Navigation Controls</li>
                                    <li>introduction to database</li>
                                    <li>ADO and ADO.net Introduction</li>
                                    <li>Databse Connectivity with Ado and Ado.net</li>
                                    <li>database Connectivity with data Controls</li>
                                    <li>Deployment Web Application</li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
   
      
     
      
    
   
</asp:Content>

