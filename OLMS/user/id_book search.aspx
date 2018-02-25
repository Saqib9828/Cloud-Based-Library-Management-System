<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="id_book search.aspx.cs" Inherits="OLMS.user.id_book_search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<h1 align="center" style="background-color: #FF9900; font-size: large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid">book search</h1>
<br />
<p align="center">Enter Book Assessor no.</p>
<p align="center">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator id="RegularExpressionValidator1"
                   ControlToValidate="TextBox1"
                   ValidationExpression="\d+"
                   Display="Static"
                   EnableClientScript="true"
                   ErrorMessage="Please enter numbers only"
                   runat="server"/>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Search" /><br />
</p>
<p align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" 
        CellPadding="4" DataKeyNames="book_id" DataSourceID="SqlDataSource2" 
        ForeColor="Black" BorderStyle="Solid" CellSpacing="2" Width="100%">
        <Columns>
            <asp:BoundField DataField="book_id" HeaderText="book_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="book_id" />
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
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" 
            HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [book] WHERE ([book_id] = @book_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="book_id" 
                PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
