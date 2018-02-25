﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="reques_book.aspx.cs" Inherits="OLMS.user.reques_book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style11
    {
        width: 59%;
        height: 152px;
        margin-left: 62px;
        margin-right: 0px;
        margin-bottom: 0px;
    }
    .style12
    {
            width: 178px;
        }
    .style13
    {
        width: 389px;
    }
        .style14
        {
            color: #990000;
            font-size: xx-large;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align=center>
        <span class="style14">Request for Book</span><table 
        class="style11">
            <tr>
                <td align="right" class="style12">
                    Book Assessor no.</td>
                <td class="style13">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="book_id" DataValueField="book_id" 
                        Height="23px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        Width="122px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [book_id] FROM [book] ORDER BY [book_id]"></asp:SqlDataSource>
                &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#66FF66" Height="32px" Width="88px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    Book Title</td>
                <td class="style13">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Width="116px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    Member ID </td>
                <td class="style13">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="USRE_ID" DataValueField="USRE_ID" 
                        Height="23px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                        Width="122px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [USRE_ID] FROM [users] ORDER BY [USRE_ID]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    Member Name</td>
                <td class="style13">
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Width="116px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    &nbsp;</td>
                <td class="style13" align="left">
                    <asp:Button ID="Button1" runat="server" Height="31px" Text="Send Request" 
                    Width="131px" Font-Bold="True" onclick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <p >
    </p>

</asp:Content>
