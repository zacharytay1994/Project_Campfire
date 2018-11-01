<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="ActivityAdd.aspx.cs" Inherits="Campfire.ActivityAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF66CC;
            line-height: 150%;
            text-align: left;
        }
        .auto-style2 {
            font-family: Arial;
            font-size: smaller;
        }
        .auto-style3 {
            height: 3px;
        }
        .auto-style4 {
            width: 294px;
        }
        .auto-style5 {
            font-family: "Segoe UI";
            color: #000000;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style6 {
            width: 294px;
            font-family: "Segoe UI";
            color: #000000;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 294px;
            font-family: "Segoe UI";
            color: #000000;
            height: 26px;
        }
        .auto-style10 {
            width: 1100px;
            height: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <span class="auto-style2"><strong>Add Activity:</strong></span><table class="w-100">
            <tr>
                <td class="auto-style3" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style4"><span class="auto-style5">Activity Name:</span></td>
                <td>
                    <input id="Text1" type="text" /><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Things you need:</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">Rules:</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">Description:</td>
                <td class="auto-style8">
                    <textarea id="TextArea1" class="auto-style10" name="S1"></textarea><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Picture Upload:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
