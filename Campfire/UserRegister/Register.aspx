<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Campfire.UserRegister.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="UserRegister_ss.css" type="text/css" />
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
        padding-right:110px;
        padding-left:110px;
    }
    .auto-style9 {
        font-family: "Segoe UI";
        font-size: large;
    }
    .textbox {
    border-radius:5px;
    }
    
    .auto-style10 {
        width: 380px;
    }
    .submitbutton {
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
    .auto-style11 {
        height: 20px;
        width: 120px;
    }
    .auto-style12 {
        height: 20px;
        width: 566px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p class="registerheader"><span class="auto-style7">Register</span></p>
    <p class="tablep">
    <table class="w-100" width=100% border="0" style="border:none;">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_username" runat="server" Text="Username" CssClass="auto-style9"></asp:Label>
                :</td>
            <td class="auto-style4">
                <asp:TextBox ID="tb_username" runat="server" cssclass="textbox" Width="380px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"><p>
                <asp:RequiredFieldValidator ID="rfv_username" runat="server" ControlToValidate="tb_username" ErrorMessage="Please Enter A Valid Username">Please choose a display Username</asp:RequiredFieldValidator>
                </p></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_email" runat="server" Text="Email Address" CssClass="auto-style9"></asp:Label>
                :</td>
            <td class="auto-style4">
                <input type="email" runat="server" id="email_Email" style="border-radius:5px;" class="auto-style10"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"><p>
                <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="email_Email" ErrorMessage="RequiredFieldValidator">Please enter a valid Email Address</asp:RequiredFieldValidator>
                </p></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_password" runat="server" Text="Enter Password" CssClass="auto-style9"></asp:Label>
                :</td>
            <td class="auto-style4">
                <asp:TextBox ID="tb_password" runat="server" cssclass="textbox" Width="380px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"><p>
                <asp:RequiredFieldValidator ID="rfv_password" runat="server" ControlToValidate="tb_password" ErrorMessage="Please Input A Valid Password">Please enter password</asp:RequiredFieldValidator>
                </p></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_password2" runat="server" Text="Re-Enter Password" CssClass="auto-style9"></asp:Label>
                :</td>
            <td class="auto-style4">
                <asp:TextBox ID="tb_password2" runat="server" cssclass="textbox" Width="380px"></asp:TextBox>
                <asp:CompareValidator ID="cv_password2" runat="server" ControlToCompare="tb_password" ControlToValidate="tb_password2" ErrorMessage="Passwords Do Not Match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"><p>
                <asp:RequiredFieldValidator ID="rfv_password2" runat="server" ControlToValidate="tb_password2" ErrorMessage="Please Re-Enter Password">Please re-enter password</asp:RequiredFieldValidator>
                </p></td>
        </tr>
    </table>
    </p>
    <p class="submit"><asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" cssclass="submitbutton"/></p>
</asp:Content>

