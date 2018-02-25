<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_book.aspx.cs" Inherits="OLMS.admin.add_book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">

        .style11
    {
        width: 49%;
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
        <span class="style14">Add New Book</span><table 
        class="style11">
            <tr>
                <td align="right" class="style12">
                    Book Name</td>
                <td class="style13">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    Book Author </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    Publisher</td>
                <td class="style13">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    Book Type</td>
                <td class="style13">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="123px">
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
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                &nbsp;</td>
                <td class="style13" align="left">
                    <asp:Button ID="Button1" runat="server" Height="31px" Text="Add" 
                    Width="93px" Font-Bold="True" onclick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <p >
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
