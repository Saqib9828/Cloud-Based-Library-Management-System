<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="OLMS.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1 {
            width: 100%;
        }
        .style2
        {
        width: 431px;
    }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center" 
        style="color: #000000; background-color: #FFFFFF; font-weight: bold; font-size: large">
        About Us
    </h2>
    <br />
    <table class="style1">
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Image ID="Image3" runat="server" Height="53px" Width="57px" 
                    ImageUrl="~/Styles/icon/corpor1.png" />
            </td>
            <td style="color: #000000; font-size: medium">
                Saleem Ahmed<br />
                (Student),<br />
                D/o Computer Science,<br />
                Aligarh Muslim University,<br />
                Aligarh-202002.<br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Image ID="Image4" runat="server" Height="53px" Width="57px" 
                    ImageUrl="~/Styles/icon/IconAddress.png" />
            </td>
            <td style="color: #000000; font-size: medium">
                Room No-277,<br />
                HK Hostel,<br />
                Mohd Habib Hall,<br />
                A.M.U., Aligarh-202002.</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Image ID="Image5" runat="server" Height="53px" Width="57px" 
                    ImageUrl="~/Styles/icon/phone.png" />
            </td>
            <td style="color: #000000; font-size: medium">
                <br />
                +91-9548116548<br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Image ID="Image6" runat="server" Height="53px" Width="57px" 
                    ImageUrl="~/Styles/icon/Black.png" />
            </td>
            <td style="color: #000000; font-size: medium">
                <br />
                <a href="mailto:saleem786ahmd@gmail.com" style="color: #000000">saleem786ahmd@gmail.com</a><br />
                <br />
               <a href="mailto:akram74786@gmail.com" style="color: #000000">akram74786@gmail.com</a><br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
