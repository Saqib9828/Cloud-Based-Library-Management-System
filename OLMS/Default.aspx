<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="OLMS._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 108px;
        }
        .style3
        {
            width: 137px;
        }
        .menurit
        {
            height: 320px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="a" style="width: 100%; height: 512px; ">
    <div class="b" 
            
            style="width: 39%; height: 100%; float: left; border-right-style: solid; border-right-color: #FFA41C;">
            <br />

             <div class="toplinks" style="background-color: #2EE0B8; height: 35px;" 
                align="center">
            <h1 align="center" 
                style="color: #FFA41C; background-color: #000000; font-size: x-large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid;">
                LOGIN AS USER</h1>
       </div>
       <br />
       
       <table class="style1">
            <tr>
                <td align="right" class="style2" 
                    style="color: #000000; font-weight: bold; font-size: medium">
                    Use_ID:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" 
                    style="color: #000000; font-weight: bold; font-size: medium">
                    Password:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" 
                    style="color: #000000; font-weight: bold; font-size: medium">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="101px" 
                        Height="30px" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2" 
                    style="color: #000000; font-weight: bold; font-size: medium">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    <div class="menutop" 
         style="font-family: Arial; float: left; width: 100%; height: 70%; " 
         align="left">
        
       

            <div class="toplinks" style="background-color: #2EE0B8; height: 35px;" 
                align="center">
            <h1 align="center" 
                style="color: #FFA41C; background-color: #000000; font-size: x-large; font-weight: bolder; border-top-style: solid; border-bottom-style: solid;">
                QUICK LINKS</h1>
       </div>
     <div class="toplinks" align="center"><a href="admin/adminlogin.aspx">Admin Login</a></div>
     <div class="toplinks" align="center"><a href="signup.aspx">Register</a></div>
     <div class="toplinks" align="center"><a href="view_books.aspx">Books Records</a></div>
         <div class="toplinks" align="center"><a href="About.aspx">About</a></div>
    
    
    </div>





      </div>
    <div class="c" 
            style="width: 60%; height: 245px; float: left;"><br /><br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/m.jpg" Height="116%" 
            Width="100%" /><br />


             <p style="color: #000000; font-family: 'Arabic Typesetting'; font-size: xx-large"> The Principal Benefit of the Online Library will be to supplement the formal 
        education system by making knowledge available to anyone who can read and has 
        access.</p>
        </div>
    
    </div>
</asp:Content>
