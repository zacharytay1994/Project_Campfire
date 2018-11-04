<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="ActivityAdd.aspx.cs" Inherits="Campfire.ActivityAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF66CC;
            line-height: 150%;
            text-align: left;
        }
        .auto-style3 {
            height: 3px;
        }
        .auto-style4 {
            width: 249px;
            height: 100px;
            font-weight: bold;
        }
        .auto-style5 {
            font-family: Arial, Helvetica, sans-serif;
            color: #000000;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
            font-size: xx-large;
            text-transform: uppercase;
        }
        .auto-style6 {
            width: 249px;
            font-family: Arial, Helvetica, sans-serif;
            color: #000000;
            font-weight: bold;
            font-size: xx-large;
            text-transform: uppercase;
        }
        .auto-style10 {
            width: 851px;
            height: 88px;
        }
        .auto-style15 {
            height: 100px;
        }
        .auto-style16 {
            width: 249px;
            font-family: Arial, Helvetica, sans-serif;
            color: #000000;
            height: 100px;
            font-size: xx-large;
            text-transform: uppercase;
            font-weight: bold;
        }
        .auto-style17 {
            width: 100%;
            height: 540px;
        }
        .auto-style18 {
            height: 3px;
            width: 900px;
        }
        .auto-style19 {
            height: 100px;
            width: 900px;
        }
        .auto-style20 {
            width: 900px;
        }
        .auto-style21 {
            width: 200px;
        }
        .auto-style22 {
            width: 200px;
            height: 100px;
            font-weight: bold;
        }
        .auto-style23 {
            width: 200px;
            font-family: Arial, Helvetica, sans-serif;
            color: #000000;
            height: 100px;
            font-size: xx-large;
            text-transform: uppercase;
            font-weight: bold;
        }
        .auto-style24 {
            width: 200px;
            font-family: Arial, Helvetica, sans-serif;
            color: #000000;
            font-weight: bold;
            font-size: xx-large;
            text-transform: uppercase;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <table class="auto-style17">
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td></td>
                <td class="auto-style18"></td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style4"><span class="auto-style5">Activity Name</span></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style16">Things you need</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style16">Rules</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style16">Description</td>
                <td class="auto-style19">
                    <textarea id="TextArea1" class="auto-style10" name="S1"></textarea> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style6">Picture Upload</td>
                <td class="auto-style20">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="192px" />
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
