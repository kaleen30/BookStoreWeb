<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content4" ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
    <div align="center">
        <center></center>
            <h1 align="center">Search By Book Name or Author</h1>
            <table class="style1">
                <tr>
                    <td align="center">
                        <asp:Label ID="LabelWelcome" runat="server" Text="Welcome..."></asp:Label>
                        <asp:Button ID="Logout" runat="server" onclick="Logout_Click" Text="Logout" /><br />
                    </td>
                </tr>
        </table>
            Search:<asp:TextBox ID="TextSearch" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonSearch"
                runat="server" Text="Search" onclick="ButtonSearch_Click" />
                <hr />
            <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" 
            EmptyDataText="No records Found!" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Width="808px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="BookName" HeaderText="BookName" 
                        SortExpression="BookName" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" 
                        SortExpression="Rating" />
                    <asp:BoundField DataField="Author" HeaderText="Author" 
                        SortExpression="Author" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </center>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT [BookName], [Rating], [Author] FROM [Books]">
    </asp:SqlDataSource>

    </asp:Content>

<asp:Content ID="Content5" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>


