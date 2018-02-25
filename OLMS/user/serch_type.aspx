<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="serch_type.aspx.cs" Inherits="OLMS.user.serch_type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<h1 align="center" style="background-color: #FF9900; font-size: large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid">book search</h1>
<br />
<p align="center">Select Type</p>
<p align="center">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="123px" 
                        AutoPostBack="True">
                        <asp:ListItem>Art</asp:ListItem>
                        <asp:ListItem>Autobiographies</asp:ListItem>
                        <asp:ListItem>Biographies</asp:ListItem>
                        <asp:ListItem>Children&#39;s</asp:ListItem>
                        <asp:ListItem>Drama</asp:ListItem>
                        <asp:ListItem>Guide</asp:ListItem>
                        <asp:ListItem>History</asp:ListItem>
                        <asp:ListItem>Litrery</asp:ListItem>
                        <asp:ListItem>Math</asp:ListItem>
                        <asp:ListItem>Religious</asp:ListItem>
                        <asp:ListItem>Science</asp:ListItem>
                        <asp:ListItem>Science fiction</asp:ListItem>
                        <asp:ListItem>Other Books</asp:ListItem>
                    </asp:DropDownList>
</p>
<p align="center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="book_id" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="book_id" HeaderText="Book Assessor no." InsertVisible="False" 
                ReadOnly="True" SortExpression="book_id" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                SortExpression="book_name" />
            <asp:BoundField DataField="author" HeaderText="author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [book] WHERE ([type] = @type)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="type" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
