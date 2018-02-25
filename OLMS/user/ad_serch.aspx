<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="ad_serch.aspx.cs" Inherits="OLMS.user.ad_serch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<h1 align="center" 
    style="color: #0000FF; background-color: #FFFFFF; font-size: xx-large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid; border-top-width: medium; border-bottom-width: medium; border-color: #0000FF">
    Advance search</h1>
<br />
<br />
<p align="center">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="Button1" runat="server" Text="Search" /></p>
    <br />
    <p align="center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            DataKeyNames="book_id" DataSourceID="SqlDataSource1" ForeColor="Black" 
            Width="100%">
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
            SelectCommand="SELECT * FROM [book] WHERE (([author] LIKE '%' + @author + '%') OR ([book_name] LIKE '%' + @book_name + '%') OR ([publisher] LIKE '%' + @publisher + '%') OR ([type] LIKE '%' + @type + '%'))">
            <SelectParameters>
                
                <asp:ControlParameter ControlID="TextBox1" Name="author" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="book_name" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="publisher" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="type" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
