<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

       <asp:Content ID="Content1" ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
        
       
           <div align="center" style="font-weight: bold; font-size: large;">
    
        LOGIN PAGE</div>
    <table class="style1" align="center">
        <tr>
            <td align="right" class="style2">
                User Name</td>
            <td>
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="User Name is required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Password</td>
            <td>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="Password is required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style1">
                </td>
            <td class="style1">
                <asp:Button ID="Button_Login" runat="server" onclick="Button_Login_Click" 
                    Text="Login" Width="113px" />
&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New User Resgister here</asp:HyperLink>
            </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td align="right" class="style3">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
    </table>
     </asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style1
    {
        height: 33px;
    }
</style>
</asp:Content>



