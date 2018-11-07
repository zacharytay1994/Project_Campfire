<%@ Page Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Campfire.UserRegister.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 150px;
            text-align: right;
        }
        .auto-style4 {
            width: 45px;
        }
        .auto-style5 {
            width: 304px;
        }
        .auto-style6 {
            width: 274px;
            text-align: center;
            margin-left: 40px;
        }
        .auto-style7 {
            width: 690px;
        }
        .auto-style8 {
            font-size: medium;
            color: #0000FF;
            text-decoration: underline;
        }
        .auto-style9 {
            width: 150px;
            text-align: right;
            height: 31px;
        }
        .auto-style10 {
            width: 45px;
            height: 31px;
        }
        .auto-style11 {
            width: 274px;
            height: 31px;
        }
        .auto-style12 {
            width: 690px;
            height: 31px;
        }
        .auto-style13 {
            width: 274px;
            height: 31px;
            text-align: center;
        }
        .auto-style14 {
            width: 150px;
            text-align: right;
            height: 33px;
        }
        .auto-style15 {
            width: 45px;
            height: 33px;
        }
        .auto-style16 {
            width: 304px;
            height: 33px;
        }
        .auto-style17 {
            height: 33px;
        }
        .auto-style18 {
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">Email:</td>
                <td class="auto-style15"></td>
                <td class="auto-style16" colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" colspan="2">
                    <asp:TextBox ID="txtPw" runat="server" Width="264px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style18"></asp:Label>
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style8" NavigateUrl="Register.aspx">Don&#39;t have an account? Sign Up here!</asp:HyperLink>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
