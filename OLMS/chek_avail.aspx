<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chek_avail.aspx.cs" Inherits="OLMS.chek_avail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<h1 align="center" 
    style="color: #0000FF; background-color: #FFFFFF; font-size: xx-large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid; border-top-width: medium; border-bottom-width: medium; border-color: #0000FF">Check Availability</h1>
<br />
<p align="center" style="color: #000000; font-size: large">First of all check your availability. If you are a student of our University, then you will go to the next step.<br />
Enter Your Enrollment No.<br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
    <asp:Button ID="Button1" runat="server" Text="Check Now" 
        onclick="Button1_Click" /><br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>
