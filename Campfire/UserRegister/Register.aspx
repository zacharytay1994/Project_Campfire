<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Campfire.UserRegister.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="UserRegister_ss.css" type="text/css" />
<style type="text/css">
    .auto-style1 {
        height: 62px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="w-100">
        <tr>
            <td>
                <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
                :</td>
            <td>
                <input type="text" title="Only Alphabets and Space Allowed" pattern="[A-Za-z]*" runat="server" id="txt_Name" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td id="t_name"><p>
                &nbsp;<asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_Name" ErrorMessage="Please Input Name">Please state your full name (e.g. Zachary Tay Zhao Yang)</asp:RequiredFieldValidator>
                            </p></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbl_username" runat="server" Text="Username"></asp:Label>
                :</td>
            <td class="auto-style1">
                <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><p>
                <asp:RequiredFieldValidator ID="rfv_username" runat="server" ControlToValidate="tb_username" ErrorMessage="Please Enter A Valid Username">Please choose a display Username</asp:RequiredFieldValidator>
                </p></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_email" runat="server" Text="Email Address"></asp:Label>
                :</td>
            <td>
                <input type="email" runat="server" id="email_Email" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"><p>
                <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="email_Email" ErrorMessage="RequiredFieldValidator">Please enter a valid Email Address</asp:RequiredFieldValidator>
                </p></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_password" runat="server" Text="Enter Password"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="tb_password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><p>
                <asp:RequiredFieldValidator ID="rfv_password" runat="server" ControlToValidate="tb_password" ErrorMessage="Please Input A Valid Password">Please enter password</asp:RequiredFieldValidator>
                </p></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_password2" runat="server" Text="Re-Enter Password"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="tb_password2" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="cv_password2" runat="server" ControlToCompare="tb_password" ControlToValidate="tb_password2" ErrorMessage="Passwords Do Not Match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><p>
                <asp:RequiredFieldValidator ID="rfv_password2" runat="server" ControlToValidate="tb_password2" ErrorMessage="Please Re-Enter Password">Please re-enter password</asp:RequiredFieldValidator>
                </p></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

