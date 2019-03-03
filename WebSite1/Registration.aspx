<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration"  MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID=ContentPlaceHolder1 runat="server">

    <div align="center" style="font-weight: bold">
    
        NEW USER
    
        REGISTRATION
    
    </div>
    <table class="style1" align="center">
        <tr>
            <td align="right" class="style5">
                User Name:</td>
            <td class="style7">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="User name is required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                Email:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="You must enter a valid email address" 
                    ControlToValidate="TextBoxEmail" ForeColor="#CC0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                Password:</td>
            <td class="style11">
                <asp:TextBox ID="TextBoxPass" runat="server" Height="22px" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxPass" ErrorMessage="Password is required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                Confirm Password:</td>
            <td class="style9">
                <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxRPass" ErrorMessage="Confirm password is required" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" 
                    ErrorMessage="Both passwords must be the same" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="Submit" runat="server" onclick="Submit_Click" Text="Submit" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
