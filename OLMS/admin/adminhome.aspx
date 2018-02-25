<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="OLMS.admin.adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1 align="center" style="color: #990000; font-weight: bolder; font-size: xx-large; font-family: Arial, Helvetica, sans-serif">Welcome Admin</h1>

<p></p>
<p align="center" 
        style="color: #000000; font-weight: bolder; font-size: x-large; font-style: inherit; text-decoration: none; font-family: Arial, Helvetica, sans-serif">
    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" NavigateUrl="~/admin/add_book.aspx">Book Add</asp:HyperLink>
    <br />
   <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Black" NavigateUrl="~/admin/book_issue.aspx">Book Issue</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black" NavigateUrl="~/admin/return_book.aspx">Book Return</asp:HyperLink>
    <br />
   <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="Black" NavigateUrl="~/admin/book.aspx">Book Record</asp:HyperLink>
    <br />
  
   <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="Black" NavigateUrl="~/admin/view_issue.aspx">Issue Detail</asp:HyperLink>
    <br />
   <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="Black" NavigateUrl="~/admin/member.aspx">Member Information</asp:HyperLink>
    <br />
   <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="Black" NavigateUrl="~/admin/fine.aspx">Fine</asp:HyperLink>
    <br />
   
    </p>

</asp:Content>
