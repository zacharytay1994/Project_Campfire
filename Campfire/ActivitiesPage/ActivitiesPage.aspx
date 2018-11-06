<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="ActivitiesPage.aspx.cs" Inherits="Campfire.ActivitiesPage.ActivitiesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="ActivitiesPage_ss.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Features Item Here</h1>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <table style="width:100%">            
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
             <div class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
             <div class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
             <div class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
             <div class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="container">
        <asp:Button ID="btn_previous" runat="server" Text="Previous" OnClick="btn_previous_Click" />
        <asp:Button ID="btn_next" runat="server" Text="Next" OnClick="btn_next_Click" />
    &nbsp;Page:
        <asp:Label ID="lbl_pagenumber" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
