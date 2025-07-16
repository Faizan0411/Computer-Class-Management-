<%@ Page Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="FacultyDetail.aspx.cs" Inherits="FacultyDetail" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">

        .style1
    {
        width: 99%;
        margin-bottom: 0px;
        border-style :ridge;   
    }
    .style3
    {
        height: 28px;
    }
        .style5
        {
            width: 301px;
        }
        .style6
        {
            height: 28px;
            width: 301px;
        }
        .style8
        {
        	background-color : #EDEBEC;
        	}
        	 .style9
        {
        	background-color : #EDEBEC ;
        	}
        .style10
        {
            height: 27px;
        }
      
        .style11
        {
            height: 29px;
        }
        .style12
        {
            width: 301px;
            height: 29px;
        }
      
     .style13
     {
         height: 35px;
     }
     .style14
     {
         width: 301px;
         height: 35px;
     }
      
     .style15
     {
         width: 100%;
     }
     .style16
     {
         width: 135px;
     }
      
     .style18
     {
         width: 301px;
         height: 26px;
     }
     .style19
     {
         height: 26px;
     }
      
     .style20
     {
         height: 63px;
     }
     .style21
     {
         height: 63px;
         width: 301px;
     }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--<script language="javascript" type="text/javascript">
function validate()
{
    var digits="0123456789";
     var temp;
     for (var i=0;i<document.getElementById("<%=txtFname.ClientID %>").value.length;i++)
     {
               temp=document.getElementById("<%=txtFname.ClientID%>").value.substring(i,i+1);
               if (temp=='0' || temp=='1' || temp=='2' || temp=='3' ||temp=='4' ||temp=='5' ||temp=='6' ||temp=='7' ||temp=='8' || temp=='9')
               {
                        alert("Please enter correct zip code");
                        document.getElementById("<%=txtFname.ClientID%>").focus();
                        return false;
               }
     }
     if (document.getElementById("<%=txtPno.ClientID%>").value=="")
     {
               alert("Zip Code is not valid");
               document.getElementById("<%=txtPno.ClientID%>").focus();
               return false;
     }
      if (document.getElementById("<%=txtFname.ClientID%>").value=="")
      {
                 alert("Name Feild can not be blank");
                 document.getElementById("<%=txtFname.ClientID%>").focus();
                 return false;
      }
       if (document.getElementById("<%=txtPcode.ClientID%>").value=="")
     {
               alert("Zip Code is not valid");
               document.getElementById("<%=txtPcode.ClientID%>").focus();
               return false;
     }
     var digits="0123456789";
     var temp;
     for (var i=0;i<document.getElementById("<%=txtPcode.ClientID %>").value.length;i++)
     {
               temp=document.getElementById("<%=txtPcode.ClientID%>").value.substring(i,i+1);
               if (digits.indexOf(temp)==-1)
               {
                        alert("Please enter correct zip code");
                        document.getElementById("<%=txtPcode.ClientID%>").focus();
                        return false;
               }
     }
     if (document.getElementById("<%=txtPno.ClientID%>").value=="")
     {
               alert("Zip Code is not valid");
               document.getElementById("<%=txtPno.ClientID%>").focus();
               return false;
     }
     var digits="0123456789";
     var temp;
     for (var i=0;i<document.getElementById("<%=txtPno.ClientID %>").value.length;i++)
     {
               temp=document.getElementById("<%=txtPno.ClientID%>").value.substring(i,i+1);
               if (digits.indexOf(temp)==-1)
               {
                        alert("Please enter correct phoneno");
                        document.getElementById("<%=txtPno.ClientID%>").focus();
                        return false;
               }
     }
       if(document.getElementById("<%=txtMailid.ClientID %>").value=="")
      {
                alert("Enter valid Email-ID");
                document.getElementById("<%=txtMailid.ClientID %>").focus();
     
                return false;
      }
     var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;

     var emailid=document.getElementById("<%=txtMailid.ClientID %>").value;
     var matchArray = emailid.match(emailPat);
     if (matchArray == null)
    {
               alert("Your email address seems incorrect. Please try again.");
               document.getElementById("<%=txtMailid.ClientID %>").focus();
               return false;
    }
     




}
   
</script>-->
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="view1" runat ="server" >
    <h4>Add New Faculty information</h4>
    <table class="style1" style="background-color :#EDEBEC">
        <tr class="style8">
            <td class="style10" align="right">
                <asp:Label ID="Label2" runat="server" Text="First Name:" Font-Size="10pt" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtFname" runat="server"   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFname" ErrorMessage="*" EnableClientScript="False" 
                    ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtFname" ErrorMessage="only alphabets" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="style9">
            <td align="right" >
                <asp:Label ID="Label3" runat="server" Text="Last Name:" ForeColor=Black 
                    Font-Size="10pt"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtLname" ErrorMessage="*" ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtLname" ErrorMessage="only alphabets" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="style9">
            <td align="right" class="style19"><asp:Label ID="Label1" runat="server" Text="Birth Date:" ForeColor=Black 
                    Font-Size="10pt"></asp:Label>
            </td>
            <td class="style18">
               
             
              
                &nbsp;<asp:ListBox ID="lstDate" runat="server" Height="25px">
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
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
                </asp:ListBox>
&nbsp;
                <asp:DropDownList ID="lstMonth" runat="server">
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                <asp:ListBox ID="lstYear" runat="server" Height="25px">
                    <asp:ListItem>1969</asp:ListItem>
                    <asp:ListItem>1970</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
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
                    <asp:ListItem>1990</asp:ListItem>
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
                </asp:ListBox>
            </td>
        </tr>
        <tr class="style9">
            <td align="right">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr class ="style8 ">
            <td align="right">
                <asp:Label ID="Label4" runat="server" Text="Address:"  ForeColor="Black" ></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtAdd" runat="server" Height="54px" TextMode ="MultiLine" ></asp:TextBox>
            &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtAdd" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr class ="style9 ">
            <td align="right" class="style10">
                <asp:Label ID="Label5" runat="server" Text="City:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtCity" runat="server" ontextchanged="txtCity_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="*" ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="enter only alphabets" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class ="style8 ">
            <td align="right" class="style11">
                <asp:Label ID="Label11" runat="server" Text="Pincode:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtPcode" runat="server"  onkeypress="return checkDigit(event);" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtPcode" ErrorMessage="*" ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="txtPcode" ErrorMessage="only  6 digits allowed" 
                    ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label6" runat="server" Text="Phone No:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtPno" runat="server" onkeypress="return checkDigit(event);"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr class ="style8 ">
            <td align="right">
                <asp:Label ID="Label13" runat="server" Text="Mobile No" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtCellno" runat="server" Height="22px" Width="128px" onkeypress="return checkDigit(event);"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtCellno" ErrorMessage="Enter valid no." 
                    ValidationExpression="((0|9)?9\d\d\d\d\d\d\d\d\d)" ValidationGroup="test"></asp:RegularExpressionValidator>
&nbsp;</td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label12" runat="server" Text="Gender:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="0" Selected="True">Male</asp:ListItem>
                    <asp:ListItem Value ="2">Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class ="style8 ">
            <td align="right">
                <asp:Label ID="Label14" runat="server" Text="Email_ID:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtMailid" runat="server"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtMailid" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtMailid" ErrorMessage="*" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="test">Enter 
                valid id</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class ="style9 ">
            <td class="style3" align="right">
                <asp:Label ID="Label9" runat="server" Text="Qualification:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtQua" runat ="server" ></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtQua" ErrorMessage="*" ValidationGroup="test"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class ="style9 ">
            <td class="style3" align="right">
                <asp:Label ID="Label15" runat="server" Text="Course Name:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style6">
            &nbsp;<asp:ListBox ID="lstCourse" runat="server"  
                    SelectionMode="Multiple" Visible="False"></asp:ListBox>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
         <tr class ="style9 ">
            <td class="style20" align="right">
                <asp:Label ID="Label10" runat="server" Text="Experience:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style21">
                <asp:TextBox ID="txtExp" runat ="server" ></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtExp" ErrorMessage="*" ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="txtExp" ErrorMessage="only digits" ValidationExpression="\d"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        
         
        
        
        <tr class="style9 ">
            <td align="right" class="style3">
                Salary :</td>
            <td class="style6">
                <asp:TextBox ID="TxtSalary" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="TxtSalary" ErrorMessage="only numbers allowed" 
                    ValidationExpression="\d"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
         
        
        
        <tr>
            <td colspan="2" style="padding-left: 100px; color: #FFFFFF;">
             <asp:Button ID="cmdSubmit" runat="server" Text="Submit" onFocus="validate()"
                     o6nclick="cmdSubmit_Click" style="width: 61px" BackColor="Black" 
                    BorderColor="Black" Font-Bold="True" ForeColor="White" 
                    ValidationGroup="test" onclick="cmdSubmit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="BtnAddMore" runat="server" BackColor="Black" BorderColor="Black" 
                    Enabled="False" Font-Bold="True" ForeColor="White" onclick="BtnAddMore_Click" 
                    Text="Add More" CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCnacel" runat="server" Text="Cancel" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" onclick="btnCnacel_Click" 
                    CausesValidation="False" />
            </td>
        </tr>
    </table>
    </asp:View>
    <asp:View ID="view2" runat ="server" >
    <h4>Information Of Faculty</h4>
        <h4>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                onrowcommand="GridView3_RowCommand" 
                onselectedindexchanged="GridView3_SelectedIndexChanged">
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label41" runat="server" ForeColor="White" Text="Name"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblFname6" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                            <asp:Label ID="lblLnames" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="cmdDetail" runat="server" BackColor="Black" 
                                CommandArgument='<%#Eval("fcID") %>' CommandName="Detail" Font-Bold="True" 
                                ForeColor="White" Text="Detail" Width="63px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </h4>
<%--<table border="2px" style="background-color: #E1E1E1; width: 253px;">
    <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label16" runat="server" Text="First Name:" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:Label ID="lblFname7" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
        
    <tr >
            <td align="right" class="style13">
                <asp:Label ID="Label17" runat="server" Text="Last Name:" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:Label ID="lblLanme" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label18" runat="server" Text="Address:" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblAdd" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label19" runat="server" Text="City:" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label20" runat="server" Text="Pincode:" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblPcode" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label21" runat="server" Text="Phone No:" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblPhno1" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
          <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label22" runat="server" Text="Cell No:" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblCellno" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
         <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label23" runat="server" Text="Gender:" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:Label ID="lblGen" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
         <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label24" runat="server" Text="BirthDtae:" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblBdate" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
         <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label25" runat="server" Text="EmailId:" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblMailid" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
         <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label26" runat="server" Text="Qualification:" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblqua" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
        
        <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label27" runat="server" Text="Course:" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:Label ID="lblCourse" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
        
        <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label28" runat="server" Text="Experience:" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:Label ID="lblExp" runat="server" Text="Label"></asp:Label>  
            </td>
        </tr>
        </table>--%>

<h4>Modify Details</h4>
<asp:Image ID="Image2" runat="server" ImageUrl ="~/images/EmptyStar.png" />&nbsp;
    <asp:LinkButton ID="lnkAdd" runat="server" onclick="lnkAdd_Click">Add Faculty Information</asp:LinkButton>
    <asp:Image ID="Image1" runat="server" ImageUrl ="~/images/EmptyStar.png" />&nbsp;
    <asp:LinkButton ID="lnkEdit" runat="server" onclick="lnkEdit_Click">Edit Faculty Information:</asp:LinkButton>
    


    <br />
<br />
       
       
    </asp:View>
    
    
        <asp:View ID="View6" runat="server">
            <br />
            <br />
            &nbsp;<table class="style15">
                <tr>
                    <td class="style16">
                        Firstname:</td>
                    <td>
                        <asp:TextBox ID="TxtdFName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;Lastname:</td>
                    <td>
                        <asp:TextBox ID="TxtdLName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Address:</td>
                    <td>
                        <asp:TextBox ID="TxtdAdd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        City:</td>
                    <td>
                        <asp:TextBox ID="Txtdcity" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Pincode:</td>
                    <td>
                        <asp:TextBox ID="Txtdpcode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Phoneno:</td>
                    <td>
                        <asp:TextBox ID="Txtdphno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Cellno:</td>
                    <td>
                        <asp:TextBox ID="Txtdcelno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Gender:</td>
                    <td>
                        <asp:TextBox ID="Txtdgender" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Birthdate:</td>
                    <td>
                        <asp:TextBox ID="Txtdbdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Emailid:</td>
                    <td>
                        <asp:TextBox ID="Txtdemid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Qualification:</td>
                    <td>
                        <asp:TextBox ID="Txtdqua" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Experience:</td>
                    <td>
                        <asp:TextBox ID="Txtdexp" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        Salary:</td>
                    <td>
                        <asp:TextBox ID="Txtdsal" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </asp:View>
    
    
    <asp:View ID="view4" runat ="server" >
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabSelcourse" runat="server" Text="Select Course :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="drselcourse" runat="server" AutoPostBack="True" 
            onselectedindexchanged="drselcourse_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="33px" 
            onrowcommand="GridView2_RowCommand" 
            onselectedindexchanged="GridView2_SelectedIndexChanged">
            <FooterStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblFname8" runat="server" ForeColor="White" Text="First Name"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblFname9" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblLname4" runat="server" ForeColor="White" Text="Last Name"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblLname3" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" BackColor="Black" 
                            CommandArgument='<%#Eval("fcID") %>' CommandName="D" Font-Bold="True" 
                            ForeColor="White" onclick="Button1_Click" Text="Edit" Width="58px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <asp:Label ID="Label45" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    </asp:View>
    <asp:View ID ="view5" runat ="server" >
    <table class="style1" style="background-color :#EDEBEC; height: 533px;">
     <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label7" runat="server" Text="First Name:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TxteFName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TxteFName" EnableClientScript="False" ErrorMessage="*" 
                    ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                    runat="server" ControlToValidate="TxteFName" ErrorMessage="only alphabets" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label8" runat="server" Text="Last Name:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TxteLName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TxteLName" EnableClientScript="False" ErrorMessage="*" 
                    ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                    runat="server" ControlToValidate="TxteLName" ErrorMessage="only alphabets" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label29" runat="server" Text="Address:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txteAdd" runat="server"></asp:TextBox> 
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label30" runat="server" Text="City:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txteCity" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txteCity" EnableClientScript="False" ErrorMessage="*" 
                    ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                    runat="server" ControlToValidate="txteCity" ErrorMessage="only alphabets" 
                    ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label31" runat="server" Text="PinCode:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtePcode" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtePcode" ErrorMessage="*" ValidationGroup="test"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                    runat="server" ControlToValidate="txtPcode" 
                    ErrorMessage="only  6 digits allowed" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label32" runat="server" Text="Phone No:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtePhno" runat="server"></asp:TextBox> 
            </td>
        </tr>
        
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label33" runat="server" Text="Cell No:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txteCellno" runat="server"></asp:TextBox> 
            </td>
        </tr>
        
        <tr class ="style9 ">
            <td align="right" class="style13">
                <asp:Label ID="Label34" runat="server" Text="Gender:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style14">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    onselectedindexchanged="RadioButtonList2_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
         <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label39" runat="server" ForeColor="Black" Text="Birth Date:"></asp:Label>
            </td>
            <td class="style5">
                <asp:ListBox ID="ListBox1" runat="server" Height="22px" Width="56px">
                    <asp:ListItem Selected="True">01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
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
                </asp:ListBox>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem Selected="True">Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:ListBox ID="ListBox2" runat="server" Height="24px">
                    <asp:ListItem>1969</asp:ListItem>
                    <asp:ListItem>1970</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
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
                    <asp:ListItem>1990</asp:ListItem>
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
                </asp:ListBox>
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label40" runat="server" Text="E mail ID:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TxteEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label43" runat="server" Text="Course:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="style9 ">
            <td align="right">
                Qualification :</td>
            <td class="style5">
                <asp:TextBox ID="TxteQua" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label44" runat="server" Text="Experience:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TxteExp" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        
        <tr class="style9 ">
            <td align="right">
                Salary :&nbsp;
            </td>
            <td class="style5">
                <asp:TextBox ID="TxteSal" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr class="style9 ">
            <td align="right">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Update" />
            </td>
        </tr>
        <tr class="style9 ">
            <td align="right" colspan="2">
                <br />
                <br />
                <br />
            </td>
        </tr>
        
        
    </table>
    </asp:View>
    </asp:MultiView>
</asp:Content>

