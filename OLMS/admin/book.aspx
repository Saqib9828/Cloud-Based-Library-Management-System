<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="OLMS.admin.book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
 <div class="toplinks" style="background-color: #2EE0B8; height: 35px;" 
                align="center">
            <h1 align="center" 
                style="color: #FFA41C; background-color: #000000; font-size: x-large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid;">
                Books records</h1>
       </div><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataKeyNames="book_id" 
        DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%">
        <Columns>
            <asp:BoundField DataField="book_id" HeaderText="Book Assessor No." 
                InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                SortExpression="book_name" />
            <asp:BoundField DataField="author" HeaderText="author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="Issue_Status" HeaderText="Issue_Status" 
                SortExpression="Issue_Status" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
</asp:Content>
