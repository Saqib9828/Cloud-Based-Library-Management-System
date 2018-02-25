<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="OLMS.admin.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">

h1 {font-size:24px; font-weight:bold; font-style:italic; color:#96ff00;}

th {
	background: #090807;
	color: #fff;
	height: 3em;
	padding-left: 12px;
	padding-right: 12px;	
	text-align: left;
	border-left: 1px solid #211E20;
	border-right: 1px solid #211E20;
	border-bottom: 1px solid #211E20; 
	border-top: 2px solid #8EB200;
}
th strong {
	color: #fff;
}
        .style11
        {
        width: 162px;
    }
        .style12
        {
            color: #800000;
        }
    .style13
    {
        height: 26px;
    }
    .style14
    {
        width: 162px;
        height: 26px;
    }
    .style15
    {
        width: 128px;
        height: 26px;
    }
    .style16
    {
        width: 128px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="text">
        <h1 align="center">
            <span class="style12">Welcome.</span>.</h1>
        <table align="center">
            <tr>
                <th colspan="3" bgcolor="#66CCFF">
                    <strong>Admin Login.. </strong>
                </th>
            </tr>
            <tr>
                <td class="style13">
                    Admin-ID
                </td>
               
                <td class="style15">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
               
                <td class="style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="AdminID Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                
                <td class="style16">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                
                <td class="style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" onclick="Button1_Click" />
                 </td>   
                <td class="style16" >
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>   
                <td class="style11" >
                    &nbsp;</td><p></p>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>   
                <td class="style16" >
                    &nbsp;</td>   
                <td class="style11" >
                    &nbsp;</td>
            </tr>
        </table>
        <p>&nbsp;</p>
        <p></p>
        <p></p>
    </div>
</asp:Content>
