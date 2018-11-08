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

        <asp:CheckBoxList ID="cbl_categories" runat="server" OnSelectedIndexChanged="cbl_categories_SelectedIndexChanged" RepeatDirection="Horizontal" AutoPostBack="True">
            <asp:ListItem Value="a">CategoryOne</asp:ListItem>
            <asp:ListItem Value="b">CategoryTwo</asp:ListItem>
            <asp:ListItem Value="c">CategoryThree</asp:ListItem>
            <asp:ListItem Value="d">CategoryFour</asp:ListItem>
        </asp:CheckBoxList>
        &nbsp;Please Select Categories to Display<br />

    </div>
    <div class="container">
        <div class="row">
            <div onclick="redirect(this.id)" class="col-md-3" id="1">
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
                    <tr>
                        <td>Category:</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="lbl_3"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div onclick="redirect(this.id)" class="col-md-3" id="2">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Category:</td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="lbl_3"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
             <div onclick="redirect(3)" class="col-md-3">
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
                    <tr>
                        <td>Category:</td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="lbl_3"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
             <div onclick="redirect(4)" class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Category:</td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="lbl_3"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div onclick="redirect(5)" class="col-md-3">
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
                    <tr>
                        <td>Category:</td>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="lbl_3"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
             <div onclick="redirect(6)" class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label17" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Category:</td>
                        <td>
                            <asp:Label ID="Label18" runat="server" Text="lbl_3"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
             <div onclick="redirect(7)" class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label19" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label20" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Category:</td>
                        <td>
                            <asp:Label ID="Label21" runat="server" Text="lbl_3"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div onclick="redirect(8)" class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:Label ID="Label22" runat="server" Text="lbl_1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label23" runat="server" Text="lbl_2"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Category:</td>
                        <td>
                            <asp:Label ID="Label24" runat="server" Text="lbl_3"></asp:Label>
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
        <br />
        <asp:Label ID="lblID" runat="server"></asp:Label>
        <br />
    </div>
    
   
    <script type="text/javascript">
        function redirect(divID) {
            
            var actID = <%= retrieveID() %>; //Call .cs function
            window.location = '../ActivityDesc/ActivityDesc.aspx' + actID; return false; //Redirect
        }
    </script>
</asp:Content>
