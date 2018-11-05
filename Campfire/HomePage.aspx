<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Campfire.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/HomePage.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <script>
        $(header).ready(function () {
            $(this).scrollTop(0);
        });
    </script>

    <div id="wrapper">
        <div id="header">
                <div id="scrollbutton">
                    <input type="submit" onclick="topFunction()" id="scrollBtn" title="Go to top" value="Top" />
                </div>
        </div>
    </div>

    <div id="frame3">   
        <div id="review-container">
            <p>&nbsp;</p>
            <!--1-->
            <img src="image1.jpg" width="150" height="150" class="photo" />
            <p>Lorem Ipsum Lorem Ipsum</p>
            <h3>Game 1</h3>

            <p>&nbsp;</p>
            <!--2-->
            <img src="image2.jpg" width="150" height="150" class="photo" />
            <p>Lorem Ipsum Lorem Ipsum</p>
            <h3>Game 2</h3>

            <p>&nbsp;</p>
            <!--3-->
            <img src="image3.jpg" width="150" height="150" class="photo" />
            <p>Lorem Ipsum Lorem Ipsum</p>
            <h3>Game 3</h3>
        </div>
    </div>
</asp:Content>