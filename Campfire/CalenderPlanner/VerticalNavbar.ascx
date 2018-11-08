<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VerticalNavbar.ascx.cs" Inherits="Campfire.CalenderPlanner.VerticalNavbar" %>
<nav class="navbar navbar-expand-md bg-light navbar-light">
    <!-- The brand(or icon) of the navbar -->
    <%--<a class="navbar-brand" href="#" style="font-size: 32px; font-weight: bold; color: red;">Campfire
    </a>--%>
    <!-- Toggle/collapsible Button, also known as hamburger button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navBar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Links in the navbar, displayed as drop-down list when collapsed -->
    <div class="collapse navbar-collapse" id="navBar">
        <!-- Links that are aligned to the left, mr-auto: right margin auto-adjusted -->
        <ul>
          <li><h1>Menu</h1></li>
          <li><a href="#home">Home</a></li>
          <li><a href="#news">News</a></li>
          <li><a href="#contact">Contact</a></li>
          <li><a href="#about">About</a></li>
        </ul>
    </div>
</nav>