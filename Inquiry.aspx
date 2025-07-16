<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inquiry.aspx.cs" Inherits="Inquiry" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script language ="javascript" type ="text/javascript" >
function checkDigit(e)
			{
				if(e.keyCode>47 && e.keyCode<58)
					return true;
				else
					return false;
			}
			
			
			
function checkChars(e)
			{
				if((e.keyCode>64 && e.keyCode<91) || (e.keyCode>96 && e.keyCode<123) || (e.keyCode==8))
					return true;
				else
					return false;
			}
    function validnum(txt1)
    {
        txt1.value=txt1.value.replace(/[^0-9.-]/g,'');         
        return false;
    }
    function validtext(txt1)
    {
        
        //txt1.value=txt1.value.replace(/[a-zA-z]/g ,'');         
        txt1.value=txt1.value.replace(/\d/ ,'');         
        return false;
//        var regexNum = /[a-zA-z]/;
//        var regexLetter = /\d/;
//        if(!regexLetter.test(textbox.value))
//        {
//            alert('Type alphanumeric character');
//            return false;
//         }
         
    } 

</script> 
    <style type="text/css">

        .style3
    {
        height: 28px;
    }
        .style5
        {
            width: 301px;
        }
                      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img alt="" src="images/leftcolumnheader_22.GIF" />
    <br />
    <asp:Panel ID="Panel1" runat="server" GroupingText ="Personal Detail">
    &nbsp;
    
    <table>
    <tr>
    <td>  <asp:Label ID="Label2" runat="server" Text="First Name:" Font-Size="10pt" 
                    ForeColor="Black"></asp:Label></td>
                    <td> <asp:TextBox ID="txtFname" runat="server" onKeyUp="validtext(this); return false;"   ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtFname" ErrorMessage="Field should not remain blank"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr><td>  <asp:Label ID="Label3" runat="server" Text="Last Name:" ForeColor=Black 
                    Font-Size="10pt"></asp:Label></td>
     <td>
     <asp:TextBox ID="txtLname" runat="server" onKeyUp="validtext(this); return false;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
             runat="server" ControlToValidate="txtLname" 
             ErrorMessage="Field should not remain blank"></asp:RequiredFieldValidator>
     </td></tr>
     <tr>
     <td><asp:Label ID="Label4" runat="server" Text="Birth Date:" ForeColor="Black "
                    Font-Size="10pt"></asp:Label></td>
     <td>  <asp:DropDownList ID="lstDate" runat="server" Height="24px" 
             onselectedindexchanged="lstDate_SelectedIndexChanged">
                <asp:ListItem >1</asp:ListItem>
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
                   <asp:DropDownList ID="lstMonth" runat="server">
                <asp:ListItem >January</asp:ListItem>
                <asp:ListItem >February</asp:ListItem>
                <asp:ListItem >March</asp:ListItem>
                <asp:ListItem >April</asp:ListItem>
                <asp:ListItem >May</asp:ListItem>
                <asp:ListItem >June</asp:ListItem>
                <asp:ListItem >July</asp:ListItem>
                <asp:ListItem >August</asp:ListItem>
                <asp:ListItem >September</asp:ListItem>
                <asp:ListItem >October</asp:ListItem>
                <asp:ListItem >November</asp:ListItem>
                <asp:ListItem >December</asp:ListItem>
                </asp:DropDownList> 
                <asp:DropDownList ID="lstYear" runat="server" Height="22px">
                 <asp:ListItem >1969</asp:ListItem>
                <asp:ListItem >1970</asp:ListItem>
                <asp:ListItem >1971</asp:ListItem>
                <asp:ListItem >1972</asp:ListItem>
                <asp:ListItem >1973</asp:ListItem>
                <asp:ListItem >1974</asp:ListItem>
                <asp:ListItem >1975</asp:ListItem>
                <asp:ListItem >1976</asp:ListItem>
                <asp:ListItem >1977</asp:ListItem>
                <asp:ListItem >1978</asp:ListItem>
                <asp:ListItem >1979</asp:ListItem>
                <asp:ListItem >1980</asp:ListItem>
                <asp:ListItem >1981</asp:ListItem>
                <asp:ListItem >1982</asp:ListItem>
                <asp:ListItem >1983</asp:ListItem>
                <asp:ListItem >1984</asp:ListItem>
                <asp:ListItem >1985</asp:ListItem>
                <asp:ListItem >1986</asp:ListItem>
                <asp:ListItem >1987</asp:ListItem>
                <asp:ListItem >1988</asp:ListItem>
                <asp:ListItem >1989</asp:ListItem>
                <asp:ListItem >1990</asp:ListItem>
                <asp:ListItem >1991</asp:ListItem>
                <asp:ListItem >1992</asp:ListItem>
                <asp:ListItem >1993</asp:ListItem>
                <asp:ListItem >1994</asp:ListItem>
                <asp:ListItem >1995</asp:ListItem>
                <asp:ListItem >1996</asp:ListItem>
                <asp:ListItem >1997</asp:ListItem>
                <asp:ListItem >1998</asp:ListItem>
                <asp:ListItem >1999</asp:ListItem>
                <asp:ListItem >2000</asp:ListItem>
                </asp:DropDownList> </td>
     </tr>
       <tr>
            <td align="right">
                <asp:Label ID="Label12" runat="server" Text="Gender:" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="Male" Selected="True">Male</asp:ListItem>
                    <asp:ListItem Value ="Female">Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="panel2" runat ="server" GroupingText ="Contact Detail">
    <table >
    <tr>
    <td> <asp:Label ID="Label1" runat="server" Text="Address:"  ForeColor="Black" ></asp:Label></td>
    <td> <asp:TextBox ID="txtAdd" runat="server" Height="54px" TextMode ="MultiLine" ></asp:TextBox></td>
    </tr>
    <tr>
    <td>  <asp:Label ID="Label5" runat="server" Text="City:" ForeColor="Black"></asp:Label></td>
    <td> <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtCity" 
            ErrorMessage="Field shouldnot be blank"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>  <asp:Label ID="Label11" runat="server" Text="Pincode:" ForeColor="Black"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtPcode" runat="server" onKeyUp="validnum(this); return false;" 
 ></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtPcode" ErrorMessage="Enter only 6digit number" 
                    ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        </td>
    </tr>
     <tr >
            <td align="right">
                <asp:Label ID="Label6" runat="server" Text="Phone No:" ForeColor="Black"></asp:Label>
            </td>
            <td >
            &nbsp;<asp:TextBox ID="txtPno" runat="server" onKeyUp="validnum(this); return false;" 
></asp:TextBox>
            </td>
        </tr>
        <tr >
            <td align="right">
                <asp:Label ID="Label13" runat="server" Text="Mobile No:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
               <%-- <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="txtCellno" ErrorMessage="*" 
                    onservervalidate="CustomValidator1_ServerValidate1">*</asp:CustomValidator>--%>
&nbsp;<asp:TextBox ID="txtCellno" runat="server" ontextchanged="txtCellno_TextChanged" 
                    style="margin-left: 0px" Width="118px" onKeyUp="validnum(this); return false;" 
></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtCellno" ErrorMessage="Enter 10 digit no." 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr >
            <td align="right">
                <asp:Label ID="Label14" runat="server" Text="Email ID:" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtMailid" runat="server"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtMailid" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtMailid" ErrorMessage="Field shouldnot be blank" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="panel3" runat ="server"  GroupingText ="Comment">
    <table>
     <tr >
            <td class="style3" align="right">
                <asp:Label ID="Label7" runat="server" Text="Type your QUESTION Here:" ForeColor="Black"></asp:Label>
            </td>
            <td >
              <asp:TextBox ID="txtComment" runat ="server" TextMode ="MultiLine" Height="85px" 
                    Width="248px"  ></asp:TextBox>
            </td>
            
        </tr>
        <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" ForeColor="Black" 
                    Text="If You want to apply For Job of FACULTY in KNOWLEDG INSTITUTE then Update Your Resume Here:"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
            </td>
        </tr>
        </table>
    </asp:Panel>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <tr>
            <td colspan="2" style="padding-left: 100px; color: #FFFFFF;">
             &nbsp;<asp:Button ID="cmdSubmit" runat="server" Text="Submit"
                  style="width: 61px" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" onclick="cmdSubmit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" onclick="btnCancel_Click" />
            </td>
        </tr>
     <%--<table class="style1" style="background-color :#EDEBEC">
        <tr class="style8">
            <td class="style10" align="right">
                <asp:Label ID="Label2" runat="server" Text="First Name:" Font-Size="10pt" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtFname" runat="server"   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFname" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                    ControlToValidate="txtLname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="style9">
            <td align="right"><asp:Label ID="Label1" runat="server" Text="Birth Date:" ForeColor=Black 
                    Font-Size="10pt"></asp:Label>
            </td>
            <td class="style5">
               
             
              
                <asp:ListBox ID="lstDate" runat="server" Height="24px">
                <asp:ListItem >1</asp:ListItem>
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
                </asp:ListBox>
                   <asp:DropDownList ID="lstMonth" runat="server">
                <asp:ListItem >January</asp:ListItem>
                <asp:ListItem >February</asp:ListItem>
                <asp:ListItem >March</asp:ListItem>
                <asp:ListItem >April</asp:ListItem>
                <asp:ListItem >May</asp:ListItem>
                <asp:ListItem >June</asp:ListItem>
                <asp:ListItem >July</asp:ListItem>
                <asp:ListItem >August</asp:ListItem>
                <asp:ListItem >September</asp:ListItem>
                <asp:ListItem >October</asp:ListItem>
                <asp:ListItem >November</asp:ListItem>
                <asp:ListItem >December</asp:ListItem>
                </asp:DropDownList> 
                <asp:ListBox ID="lstYear" runat="server" Height="24px">
                 <asp:ListItem >1969</asp:ListItem>
                <asp:ListItem >1970</asp:ListItem>
                <asp:ListItem >1971</asp:ListItem>
                <asp:ListItem >1972</asp:ListItem>
                <asp:ListItem >1973</asp:ListItem>
                <asp:ListItem >1974</asp:ListItem>
                <asp:ListItem >1975</asp:ListItem>
                
                <asp:ListItem >1976</asp:ListItem>
                <asp:ListItem >1977</asp:ListItem>
                <asp:ListItem >1978</asp:ListItem>
                
                <asp:ListItem >1979</asp:ListItem>
                <asp:ListItem >1980</asp:ListItem>
                <asp:ListItem >1981</asp:ListItem>
                <asp:ListItem >1982</asp:ListItem>
                <asp:ListItem >1983</asp:ListItem>
                <asp:ListItem >1984</asp:ListItem>
                <asp:ListItem >1985</asp:ListItem>
                <asp:ListItem >1986</asp:ListItem>
                <asp:ListItem >1987</asp:ListItem>
                <asp:ListItem >1988</asp:ListItem>
                <asp:ListItem >1989</asp:ListItem>
                <asp:ListItem >1990</asp:ListItem>
                <asp:ListItem >1991</asp:ListItem>
                <asp:ListItem >1992</asp:ListItem>
                <asp:ListItem >1993</asp:ListItem>
                <asp:ListItem >1994</asp:ListItem>
                <asp:ListItem >1995</asp:ListItem>
                <asp:ListItem >1996</asp:ListItem>
                <asp:ListItem >1997</asp:ListItem>
                <asp:ListItem >1998</asp:ListItem>
                <asp:ListItem >1999</asp:ListItem>
                <asp:ListItem >2000</asp:ListItem>
                </asp:ListBox> 
            </td>
        </tr>
        <tr class ="style8 ">
            <td align="right">
                <asp:Label ID="Label4" runat="server" Text="Address:"  ForeColor="Black" ></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtAdd" runat="server" Height="54px" TextMode ="MultiLine" ></asp:TextBox>
            &nbsp;&nbsp;
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right" class="style10">
                <asp:Label ID="Label5" runat="server" Text="City:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class ="style8 ">
            <td align="right" class="style11">
                <asp:Label ID="Label11" runat="server" Text="Pincode:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtPcode" runat="server"  onkeypress="return checkDigit(event);" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtPcode" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label6" runat="server" Text="Phone No:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtPno" runat="server" onkeypress="return checkDigit(event);"></asp:TextBox>
            &nbsp;<asp:Label ID="lblphno" runat="server" ForeColor="Red" 
                    Text="Please Enter Mobile no or Phone no" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr class ="style8 ">
            <td align="right">
                <asp:Label ID="Label13" runat="server" Text="Mobile No" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtCellno" runat="server" Height="22px" Width="128px" onkeypress="return checkDigit(event);"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="txtCellno" ErrorMessage="*" 
                    onservervalidate="CustomValidator1_ServerValidate1">*</asp:CustomValidator>
&nbsp;</td>
        </tr>
        <tr class ="style9 ">
            <td align="right">
                <asp:Label ID="Label12" runat="server" Text="Gender:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style5">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="0">Female</asp:ListItem>
                    <asp:ListItem Value ="1">Male</asp:ListItem>
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
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter 
                valid id</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class ="style9 ">
            <td class="style3" align="right">
                <asp:Label ID="Label15" runat="server" Text="Course Name:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="cmbCrsname" runat="server" 
                    onselectedindexchanged="cmbCrsname_SelectedIndexChanged" 
                    ontextchanged="cmbCrsname_TextChanged" AutoPostBack="True">
                </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="cmbCrsname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr class ="style9 ">
            <td class="style3" align="right">
                <asp:Label ID="Label8" runat="server" Text="Sub Courses:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="cmbSubcrs" runat="server">
                </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="cmbCrsname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr class ="style9 ">
            <td class="style3" align="right">
                <asp:Label ID="Label7" runat="server" Text="Comment:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style6">
              <asp:TextBox ID="txtCommnet" runat ="server" TextMode ="MultiLine" Height="85px" 
                    Width="248px"  ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style7">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="padding-left: 100px; color: #FFFFFF;">
             <asp:Button ID="cmdSubmit" runat="server" Text="Submit" 
                    onclick="cmdSubmit_Click" style="width: 61px" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCnacel" runat="server" Text="Cancel" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" />
            </td>
        </tr>
    </table>--%>
</asp:Content>

