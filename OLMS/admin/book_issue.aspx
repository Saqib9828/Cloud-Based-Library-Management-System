<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="book_issue.aspx.cs" Inherits="OLMS.admin.book_issue" %>
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
        height: 26px;
    }
    .style16
    {
        width: 389px;
        height: 26px;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div align=center>
        <span class="style14">Book Issue</span><table 
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
                        SelectCommand="SELECT DISTINCT [book_id] FROM [book]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    Book Name</td>
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
                        SelectCommand="SELECT DISTINCT [USRE_ID] FROM [users]"></asp:SqlDataSource>
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
                    Date of Issue</td>
                <td class="style13">
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="*">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style15">
                    Date of Return</td>
                <td class="style16">
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                &nbsp;</td>
                <td class="style13" align="left">
                    <asp:Button ID="Button1" runat="server" Height="31px" Text="Issue" 
                    Width="93px" Font-Bold="True" onclick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <p >
    </p>
 
</asp:Content>
