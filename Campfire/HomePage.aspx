<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Campfire.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/backtotop.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="CSS/HomePage.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="main">

        <script> //for slideshow
            var slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
              showSlides(slideIndex += n);
            }

            function currentSlide(n) {
              showSlides(slideIndex = n);
            }

            function showSlides(n) {
              var i;
              var slides = document.getElementsByClassName("mySlides");
              var dots = document.getElementsByClassName("dot");
                if (n > slides.length) { slideIndex = 1; }    
                if (n < 1) { slideIndex = slides.length; }
              for (i = 0; i < slides.length; i++) {
                  slides[i].style.display = "none";  
              }
              for (i = 0; i < dots.length; i++) {
                  dots[i].className = dots[i].className.replace(" active", "");
              }
              slides[slideIndex-1].style.display = "block";  
              dots[slideIndex-1].className += " active";
            }
        </script>

        <script> //for refresh to top
            $(header).ready(function () {
                $(this).scrollTop(0);
            });
        </script>
    
        <div id="wrapper">
            <div id="header">
                <div class="scrollUp">
                    <input type="submit" class="scrollButton" title="Top" value="Top"/>
                </div>
            </div>
        </div>

        <!--Schedule list tab-->
        <div class="leftcontainer">
            <div class="row">
                <div class="col-sm-1">
                    <table style="border-collapse: collapse; width:100%;">
                        <tr style="font-style:oblique;">
                            <th>Schedules</th>
                            <th><input type="button" /></th>
                        </tr>
                        <tr>
                            <th><input type="button" value="Schedule1" /></th>
                            <th><input type="button" value="Delete"/></th>
                        </tr>
                        <tr>
                            <th><input type="button" value="Schedule2" /></th>
                            <th><input type="button" value="Delete"/></th>
                        </tr>
                        <tr>
                            <th><input type="button" value="Schedule3" /></th>
                            <th><input type="button" value="Delete"/></th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <div class="middlecontainer"> 
            <!--Featured Activities--->
            <div class="slideshow-container">
                    <div class="mySlides fade">
                        <div class="numText">1 / 3</div>
                        <img src="images/image1.jpg" style="width:100%"/>"
                        <div class="text">Caption Text</div>
                    </div>
                    <div class="mySlides fade">
                        <div class="numText">2 / 3</div>
                        <img src="images/image2.jpg" style="width:100%"/>"
                        <div class="text">Caption Text</div>
                    </div>
                    <div class="mySlides fade">
                        <div class="numText">3 / 3</div>
                        <img src="images/image3.jpg" style="width:100%"/>"
                        <div class="text">Caption Text</div>
                    </div>
                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </div>
            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              <span class="dot" onclick="currentSlide(3)"></span> 
            </div>

            <!--Featured Schedules--->
            <div class="slideshow-container">
                    <div class="mySlides fade">
                        <div class="numText">1 / 3</div>
                        <img src="images/image1.jpg" style="width:100%"/>"
                        <div class="text">Caption Text</div>
                    </div>
                    <div class="mySlides fade">
                        <div class="numText">2 / 3</div>
                        <img src="images/image2.jpg" style="width:100%"/>"
                        <div class="text">Caption Text</div>
                    </div>
                    <div class="mySlides fade">
                        <div class="numText">3 / 3</div>
                        <img src="images/image3.jpg" style="width:100%"/>"
                        <div class="text">Caption Text</div>
                    </div>
                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </div>
            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              <span class="dot" onclick="currentSlide(3)"></span> 
            </div>

            <!--Other Games--->
            <div class="row">
                <div class="col-md-3">
                    <table style="width:100%">
                        <tr>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image1.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 1</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image1.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 1</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image1.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 1</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                            <td>
                                <p>&nbsp;</p>
                                <img src="image2.jpg" width="150" height="150" class="photo" />
                                <p>Lorem Ipsum Lorem Ipsum</p>
                                <h3>Featured Game 2</h3>
                            </td>
                        </tr>
                    </table>
                </div>

        </div>

        <!--Category bar-->
        <div class="rightcontainer">
            <div class="row">
                <div class="col-sm-12">
                    <h2>Categories</h2>
                    <div class="buttonCat">
                        <input type="submit" class="btn1" value="Action" />
                    </div>
                    <div class="buttonCat">
                        <input type="submit" class="btn2" value="Adventure" />
                    </div>
                    <div class="buttonCat">
                        <input type="submit" class="btn3" value="Rhythm" />
                    </div>
                </div>
            </div>
        </div>

        <script>
                window.onbeforeunload = function () {
                    window.scrollTo(0, 0);
                };
            </script>
        </div>
    </div>
</asp:Content>