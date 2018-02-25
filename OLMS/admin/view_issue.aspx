<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="view_issue.aspx.cs" Inherits="OLMS.admin.view_issue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
 <div class="toplinks" style="background-color: #2EE0B8; height: 35px;" 
                align="center">
            <h1 align="center" 
                style="color: #FFA41C; background-color: #000000; font-size: x-large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid;">
                View issue books</h1>
       </div><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
        BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Book_id" HeaderText="Book Assessor no." 
                SortExpression="Book_id" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                SortExpression="book_name" />
            <asp:BoundField DataField="member_id" HeaderText="member_id" 
                SortExpression="member_id" />
            <asp:BoundField DataField="member_name" HeaderText="member_name" 
                SortExpression="member_name" />
            <asp:BoundField DataField="date_of_issue" HeaderText="date_of_issue" 
                SortExpression="date_of_issue" />
            <asp:BoundField DataField="date_of_return" HeaderText="date_of_return" 
                SortExpression="date_of_return" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [issue_book_data]"></asp:SqlDataSource>
</asp:Content>
