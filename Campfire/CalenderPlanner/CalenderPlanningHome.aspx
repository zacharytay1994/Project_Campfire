<%@ Page Title="" Language="C#" MasterPageFile="~/CalenderPlanner/CalenderPlanningNested.master" AutoEventWireup="true" CodeBehind="CalenderPlanningHome.aspx.cs" Inherits="Campfire.CalenderPlanner.CalenderPlanningHome" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>

    User ID:
    <asp:Label ID="lbl_userid" runat="server" Text="Label"></asp:Label>

</asp:Content>