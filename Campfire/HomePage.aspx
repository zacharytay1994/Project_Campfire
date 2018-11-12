<%@ Page Title="" Language="C#" MasterPageFile="~/Campfire.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Campfire.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/backtotop.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="CSS/HomePage.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!--Schedule List-->
    <div class="row">
        <div class="col-sm-2"> 
            <div class="schedulelist">
                <table style="border-collapse: collapse; width:100%;">
                    <tr style="font-style:oblique;">
                    <th>Schedules</th>
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
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body2" runat="server">
    <div id="main">
        <!---Scripts--->
       
       
        <script>
            var slideIndex = [1,1];
            var slideId = ["mySlides1", "mySlides2"]
            showSlides(1, 0);
            showSlides(1, 1);

            function plusSlides(n, no) {
                showSlides(slideIndex[no] += n, no);
            }

            function showSlides(n, no) {
                var i;
                var x = document.getElementsByClassName(slideId[no]);
                if (n > x.length) {slideIndex[no] = 1}    
                if (n < 1) {slideIndex[no] = x.length}
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";  
                }
                x[slideIndex[no]-1].style.display = "block";  
            }
        </script>
        
        <script> 
            //Scroll to Top
            $(header).ready(function () {
                $(this).scrollTop(0);
            });
        </script>
        <div class="row">
            <div class="col-sm-8">
                <div class="scrollUp">
                    <input type="submit" class="scrollButton" value="Top" />
                </div>

                <div class="featured">
                    <!--Featured Activities-->
                    <div class="slideshow-container">
                        <div class="mySlides1">
                            <div class="numText">1 / 3</div>
                            <img src="images/image1.jpg" style="width:100%"/>
                            <br />
                            <div class="text">Caption Text</div>
                        </div>
                        <div class="mySlides1">
                            <div class="numText">2 / 3</div>
                            <img src="images/image2.jpg" style="width:100%"/>
                            <br />
                            <div class="text">Caption Text</div>
                        </div>
                        <div class="mySlides1">
                            <div class="numText">3 / 3</div>
                            <img src="images/image3.jpg" style="width:100%"/>
                            <br />
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
                    <br />

                    <!--Featured Schedules-->
                    <h2 style="text-align:center">Multiple Slideshows</h2>

<p>Slideshow 1:</p>
<div class="slideshow-container">
  <div class="mySlides1">
    <img src="image/image1.jpg" style="width:100%">
  </div>

  <div class="mySlides1">
    <img src="image/image2.jpg" style="width:100%">
  </div>

  <div class="mySlides1">
    <img src="image/image13.jpg" style="width:100%">
  </div>

  <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
</div>

<p>Slideshow 2:</p>
<div class="slideshow-container">
  <div class="mySlides2">
    <img src="img_band_chicago.jpg" style="width:100%">
  </div>

  <div class="mySlides2">
    <img src="img_band_la.jpg" style="width:100%">
  </div>

  <div class="mySlides2">
    <img src="img_band_ny.jpg" style="width:100%">
  </div>

  <a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 1)">&#10095;</a>
</div>

                <!--Other Games-->
                <div class="othergames">
                        <table>
                            <tr>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                                <td>
                                    <p>&nbsp;</p>
                                    <img src="image.jpg" width="150" height="150" class="photo" />
                                    <p>Lorem Ipsum Lorem Ipsum</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        <script>
            window.onbeforeunload = function () {
                window.scrollTo(0, 0);
            };
        </script>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body3" runat="server">
    <!--Category Bar-->
    <div class="row">
        <div class="col-sm-2">
            <div class="categories">
                <table class="buttonCat">
                    <tr>
                        <th>Categories</th>
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn1" value="Action" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn2" value="Adventure" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn3" value="Rhythm" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>