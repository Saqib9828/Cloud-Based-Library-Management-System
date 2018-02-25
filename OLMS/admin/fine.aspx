<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="fine.aspx.cs" Inherits="OLMS.admin.fine" %>
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
    .style15
    {
        width: 178px;
        height: 28px;
    }
    .style16
    {
        width: 389px;
        height: 28px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div align=center>
        <span class="style14">Total Fine</span><table 
        class="style11">
            <tr>
                <td align="right" class="style12">
                    Fine Per Day(Rs)</td>
                <td class="style13">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style15">
                    Number of Days</td>
                <td class="style16">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                     Total Fine(Rs.)</td>
                <td class="style13">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Andalus" 
                        Font-Size="XX-Large" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                &nbsp;</td>
                <td class="style13" align="left">
                    <asp:Button ID="Button1" runat="server" Height="31px" Text="Show Total Fine" 
                    Width="176px" Font-Bold="True" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <p >
    </p>
 
</asp:Content>
