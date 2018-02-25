<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="member.aspx.cs" Inherits="OLMS.admin.member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
 <div class="toplinks" style="background-color: #2EE0B8; height: 35px;" 
                align="center">
            <h1 align="center" 
                style="color: #FFA41C; background-color: #000000; font-size: x-large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid;">
                member info</h1>
       </div><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
        BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="USRE_ID" HeaderText="USER_ID" 
                SortExpression="USRE_ID" />
            <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" 
                SortExpression="USER_NAME" />
            <asp:BoundField DataField="ADD" HeaderText="ADD" SortExpression="ADD" />
            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" 
                SortExpression="CONTACT" />
            <asp:BoundField DataField="EDUCATION" HeaderText="EDUCATION" 
                SortExpression="EDUCATION" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
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
        SelectCommand="SELECT [USRE_ID], [USER_NAME], [ADD], [CONTACT], [EDUCATION], [EMAIL] FROM [users]">
    </asp:SqlDataSource>
</asp:Content>
