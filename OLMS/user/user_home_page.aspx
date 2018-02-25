<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="user_home_page.aspx.cs" Inherits="OLMS.user.user_home_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<h1 align="center" 
    style="color: #0000FF; background-color: #FFFFFF; font-size: xx-large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid; border-top-width: medium; border-bottom-width: medium; border-color: #0000FF">Welcome User</h1>
<br />

<p align="center">
    <asp:Image ID="Image2" runat="server" Width="563px" BorderColor="#3333CC" 
        BorderStyle="Solid" Height="305px" ImageUrl="~/Styles/e-library.jpg" />
</p>
<br />
</asp:Content>
