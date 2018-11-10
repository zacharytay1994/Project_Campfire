<<<<<<< HEAD
﻿<%@ Page Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Campfire.UserRegister.Login" %>
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Campfire.Master" CodeBehind="Login.aspx.cs" Inherits="Campfire.UserRegister.Login" %>
>>>>>>> b998eed3aa10b0f21f3e803667b0a53557b2bc63

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UserLogin_ss.css" rel="stylesheet" />
    <style type="text/css">

        .auto-style4 {
            height: 30px;
            width: 566px;
        }
        .auto-style5 {
            height: 30px;
            width: 120px;
        }
        .auto-style7 {
            font-family: 'Microsoft YaHei';
            font-size: 30pt;
            font-weight:bold;
            color:white;
            border-style:solid;
            border-width:thin;
            border-color:white;
            padding-top:30px;
            padding-bottom:30px;
            padding-right:137px;
            padding-left:137px;
        }
        .auto-style9 {
            font-family: "Segoe UI";
            font-size: large;
        }
        .auto-style11 {
            height: 40px;
            width: 120px;
        }
        .auto-style12 {
            height: 40px;
            width: 566px;
        }
        .textbox {
            border-radius:5px;
        }
        .loginbutton {
            background-color:transparent;
            border-style:solid;
            border-width:thin;
            border-color:white;
            color:white;
            font-size:x-large;
            padding-top:7px;
            padding-bottom:7px;
            padding-left:14px;
            padding-right:14px;
        }
        .hypercss {
            color:white;
        }
        .hypercss:hover {
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <p class="loginheader"><span class="auto-style7">Login</span></p>
    <p class="loginp">
    <table class="w-100" width="100%" border="0" style="border:none;">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_Email" runat="server" CssClass="auto-style9" Text="Email :"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtEmail" runat="server" Width="380px" cssclass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_Password" runat="server" CssClass="auto-style9" Text="Password :"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPw" runat="server" Width="380px" cssclass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="lblMessage" runat="server" CssClass="auto-style18"></asp:Label>
            </td>
        </tr>
        </table>
    </p>
    <p class="login"><asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" cssclass="loginbutton"/></p>
    <p class="hlink"><asp:HyperLink ID="HyperLink1" runat="server" CssClass="hypercss" NavigateUrl="Register.aspx">Don&#39;t have an account? Sign Up here!</asp:HyperLink></p>
</asp:Content>
