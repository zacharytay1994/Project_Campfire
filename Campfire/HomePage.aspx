<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Campfire.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/backtotop.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
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
            <div class="scrollUp">
                <input type="submit" class="scrollButton" title="Top"/>
            </div>
        </div>
    </div>

    <div class="middlecontainer">   
        <div class="row">
            <div class="col-md-3">
                <table style="width:100%">
                    <tr>
                        <td>
                            <p>&nbsp;</p>
                            <!--1-->
                            <img src="image1.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 1</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>&nbsp;</p>
                            <!--1-->
                            <img src="image1.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 1</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>&nbsp;</p>
                            <!--1-->
                            <img src="image1.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 1</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                        <td>
                            <p>&nbsp;</p>
                            <!--2-->
                            <img src="image2.jpg" width="150" height="150" class="photo" />
                            <p>Lorem Ipsum Lorem Ipsum</p>
                            <h3>Featured Game 2</h3>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script>
            window.onbeforeunload = function () {
                window.scrollTo(0, 0);
            };
        </script>
    </div>
</asp:Content>