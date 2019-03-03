<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content3" ContentPlaceHolderID=ContentPlaceHolder1 runat="server">

    <div style="background-image: none" align="center">
    
        <br />
    
        <table class="style1">
            <tr>
                <td align="center">
    
        <asp:Label ID="Label_Welcome" runat="server" ForeColor="Black" 
            Text="Welcome..."></asp:Label>
        <asp:Button ID="Button_Logout" runat="server" onclick="Button_Logout_Click" 
            Text="Logout" Width="133px" />
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Search.aspx">Search for item</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="SqlDataSourceBooks" ForeColor="#333333" GridLines="None" 
            Width="849px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="BookName" HeaderText="BookName" 
                    SortExpression="BookName" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="Rating" HeaderText="Rating" 
                    SortExpression="Rating" />
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
        <br />

        <asp:SqlDataSource ID="SqlDataSourceBooks" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
            SelectCommand="SELECT [BookName], [Author], [Rating] FROM [Books]">
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>


