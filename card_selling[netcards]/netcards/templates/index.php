<!doctype html>
{% load static %}
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="{% static 'assets/images/logo2.png' %}">
    <title>NetCards </title>
    <link href="//fonts.googleapis.com/css2?family=Raleway:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Nunito:400,700&display=swap" rel="stylesheet">

    <!-- Template CSS -->
    <link rel="stylesheet" href="{% static 'assets/css/style-starter.css' %}">
    
</head>

<body>
    {% include "header.php" %}
    <!-- banner -->
    <section class="bannerhny w3pvt-banner" id="home">
        <div class="container">
            <div class="banner-info text-center mx-auto">
                <div class="w3pvt-logo align-self">
                    <!-- <span class="fa fa-clone" aria-hidden="true" style="width: 50px"></span> -->
                    <h3>Invite for the moments that captivate your heart.</h3>
                    <form action="#" method="post" class="">
                        <!-- <input type="search" name="search" placeholder="Browse by Category..." required="">
                        <button type="submit" class="btn"><span class="fa fa-search" aria-hidden="true"></span></button> -->
                    </form>

                </div>
            </div>
        </div>
    </section>
    <!-- //banner -->
    <!--/gallery -->
    <section class="w3-gallery py-5">
        <div class="container py-md-5">
            <ul class="portfolio-categ filter mb-md-5 mb-4 p-0 justify-content-center">
                <li class="port-filter all active">
                    <a href="#">All</a>
                </li>
                <li class="cat-item-1">
                    <a href="#" title="Category 1">BirthDay Card</a>
                </li>
                <li class="cat-item-2">
                    <a href="#" title="Category 2">Thanks Giving Card</a>
                </li>
                <li class="cat-item-3">
                    <a href="#" title="Category 3">Wedding Card</a>
                </li>
                <li class="cat-item-4">
                    <a href="#" title="Category 4">Business Card</a>
                </li>
            </ul>
            <ul class="portfolio-area clearfix p-0 m-0">
                <li class="portfolio-item2 content" data-id="id-1" data-type="cat-item-1">
                    <span class="image-block">

                        <a class="image-zoom" href="{% static 'assets/images/ch13.png' %}" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="{% static 'assets/images/ch13.png' %}" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">BirthDay Card Sample</h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-2" data-type="cat-item-2">
                    <span class="image-block">

                        <a class="image-zoom" href="{% static 'assets/images/ch8.png' %}" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="{% static 'assets/images/ch8.png' %}" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Thanks Giving Card Sample</h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-3" data-type="cat-item-1">
                    <span class="image-block">

                        <a class="image-zoom" href="{% static 'assets/images/ch2.png' %}" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="{% static 'assets/images/ch2.png' %}" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">BirthDay Card Sample</h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-4" data-type="cat-item-3">
                    <span class="image-block">

                        <a class="image-zoom" href="{% static 'assets/images/ch5.png' %}" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="{% static 'assets/images/ch5.png' %}" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Wedding Card Sample</h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-5" data-type="cat-item-4">
                    <span class="image-block">

                        <a class="image-zoom" href="{% static 'assets/images/ch11.png' %}" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="{% static 'assets/images/ch11.png' %}" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Business Card Sample</h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-7" data-type="cat-item-3">
                    <span class="image-block">

                        <a class="image-zoom" href="{% static 'assets/images/ch6.png' %}" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="{% static 'assets/images/ch6.png' %}" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Wedding Card Sample</h3>

                            </div>
                        </a>
                    </span>
                </li>
               <!--  <li class="portfolio-item2 content" data-id="id-4" data-type="cat-item-3">
                    <span class="image-block">
                        <a class="image-zoom" href="assets/images/ch16.png" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="assets/images/ch16.png" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Wedding Card Sample</h3>
                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-5" data-type="cat-item-4">
                    <span class="image-block">

                        <a class="image-zoom" href="assets/images/ch12.png" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="assets/images/ch12.png" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Business Card Sample</h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-7" data-type="cat-item-3">
                    <span class="image-block">
                        <a class="image-zoom" href="assets/images/ch15.png" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="assets/images/ch15.png" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Wedding Card Sample</h3>
                            </div>
                        </a>
                    </span>
                </li> -->
            </ul>
            <!--end portfolio-area -->
        </div>
        <!-- //gallery container -->
    </section>
    <!-- //gallery-->

    <!-- testimonials -->
    <section class="w3l-clients-1" id="testimonials">
        <!-- /grids -->
        <div class="cusrtomer-layout py-5">
            <div class="container py-lg-5 py-md-4">
                <div class="heading align-self text-center">
                    <h5 class="title-subhny">Testimonials</h5>
                    <h3 class="hny-title">What our Clients say</h3>
                </div>
                <!-- /grids -->
                <div class="testimonial-row mt-5">
                    <div id="owl-demo1" class="owl-two owl-carousel owl-theme mb-md-3 mb-sm-5 mb-4">
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <div class="test-img">
                                        <img src="{% static 'assets/images/team1.jpg' %}" class="img-fluid" alt="client-img">
                                    </div>
                                    <blockquote>
                                        <q>Thanks to Netcards I was able to send a digital birthday card to a friend living abroad.</q>
                                    </blockquote>
                                    <div class="separatorhny"></div>
                                    <div class="testi-des">
                                        <div class="peopl align-self">
                                            <h3>Gloria Parker</h3>
                                            <p class="indentity">Friend</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <div class="test-img"><img src="{% static 'assets/images/team2.jpg' %}" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <blockquote>
                                        <q>I wanted to stick motivational quotes on my son's wall in a preety way. thanks net cards for providing the perfect solution</q>
                                    </blockquote>
                                    <div class="separatorhny"></div>
                                    <div class="testi-des">
                                        <div class="peopl align-self">
                                            <h3>Tommy sakura</h3>
                                            <p class="indentity">Mother</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--<div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <div class="test-img"><img src="{% static 'assets/images/team3.jpg' %}" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <blockquote>
                                        <q>Lorem ipsum dolor sit amet int consectetur adipisicing elit. Velita beatae
                                            laudantium Quas minima sunt natus tempore, maiores aliquid modi felis vitae
                                            facere aperiam sequi optio lacinia id ipsum non velit, culpa.
                                            voluptate rem ullam dolore nisi est quasi, doloribus tempora.</q>
                                    </blockquote>
                                    <div class="separatorhny"></div>
                                    <div class="testi-des">
                                        <div class="peopl align-self">
                                            <h3>Bruce Bailey </h3>
                                            <p class="indentity">Example Name </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <div class="test-img"><img src="{% static 'assets/images/team4.jpg' %}" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <blockquote>
                                        <q>Lorem ipsum dolor sit amet int consectetur adipisicing elit. Velita beatae
                                            laudantium Quas minima sunt natus tempore, maiores aliquid modi felis vitae
                                            facere aperiam sequi optio lacinia id ipsum non velit, culpa.
                                            voluptate rem ullam dolore nisi est quasi, doloribus tempora.</q>
                                    </blockquote>
                                    <div class="separatorhny"></div>
                                    <div class="testi-des">
                                        <div class="peopl align-self">
                                            <h3>Ruth Edwards</h3>
                                            <p class="indentity">Example Name </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                    </div>
                </div>
            </div>
            <!-- /grids -->
        </div>
        <!-- //grids -->
    </section>
    <!-- //testimonials -->
    <!-- middle slider -->
   <!--  <div class="projects" id="special">
        <div class="projects-grids">
            <div class="istagram-feeds">
                <div class="projects-w3l-grid-info">
                    <a href="#"><img src="assets/images/s1.jpg" class="img-fluid" alt="" />
                        <div class="content-overlay"></div>
                        <div class="content-details fadeIn-top">
                            <span class="fa fa-instagram"></span>
                        </div>
                    </a>
                </div>
                <div class="projects-w3l-grid-info">
                    <a href="#"><img src="assets/images/s2.jpg" class="img-fluid" alt="" />
                        <div class="content-overlay"></div>
                        <div class="content-details fadeIn-top">
                            <span class="fa fa-instagram"></span>
                        </div>
                    </a>
                </div>
                <div class="projects-w3l-grid-info">
                    <a href="#"><img src="assets/images/s3.jpg" class="img-fluid" alt="" />
                        <div class="content-overlay"></div>
                        <div class="content-details fadeIn-top">
                            <span class="fa fa-instagram"></span>
                        </div>
                    </a>
                </div>
                <div class="projects-w3l-grid-info">
                    <a href="#"><img src="assets/images/s4.jpg" class="img-fluid" alt="" />
                        <div class="content-overlay"></div>
                        <div class="content-details fadeIn-top">
                            <span class="fa fa-instagram"></span>
                        </div>
                    </a>
                </div>
                <div class="projects-w3l-grid-info">
                    <a href="#"><img src="assets/images/s5.jpg" class="img-fluid" alt="" />
                        <div class="content-overlay"></div>
                        <div class="content-details fadeIn-top">
                            <span class="fa fa-instagram"></span>
                        </div>
                    </a>
                </div>
                <div class="projects-w3l-grid-info">
                    <a href="#"><img src="assets/images/s1.jpg" class="img-fluid" alt="" />
                        <div class="content-overlay"></div>
                        <div class="content-details fadeIn-top">
                            <span class="fa fa-instagram"></span>
                        </div>
                    </a>
                </div>
                <div class="projects-w3l-grid-info">
                    <a href="#"><img src="assets/images/s3.jpg" class="img-fluid" alt="" />
                        <div class="content-overlay"></div>
                        <div class="content-details fadeIn-top">
                            <span class="fa fa-instagram"></span>
                        </div>
                    </a>
                </div>
                <div class="projects-w3l-grid-info">
                    <a href="#"><img src="assets/images/s2.jpg" class="img-fluid" alt="" />
                        <div class="content-overlay"></div>
                        <div class="content-details fadeIn-top">
                            <span class="fa fa-instagram"></span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    --> <!-- //middle slider -->
    
    {% include "footer.php" %}

    <!--<script src="assets/js/theme-change.js"></script> theme switch js (light and dark)-->

    <!--<script src="assets/js/jquery-3.3.1.min.js"></script> default jQuery -->
    <!--<script src="assets/js/owl.carousel.js"></script>-->
    <!-- script for tesimonials carousel slider -->
   <!-- <script>
        $(document).ready(function () {
            $("#owl-demo1").owlCarousel({
                loop: true,
                margin: 20,
                nav: false,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                        nav: false
                    },
                    1000: {
                        items: 1,
                        nav: false,
                        loop: false
                    }
                }
            })
        })
    </script>-->
    <!-- //script for tesimonials carousel slider -->
    <!-- disable body scroll which navbar is in active -->
   <!-- <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>-->
    <!-- disable body scroll which navbar is in active -->

    <!--/MENU-JS
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });
    </script>
    //MENU-JS-->
    <!-- jQuery-Photo-filter-lightbox-portfolio-plugin -->
<!--     <script src="assets/js/jquery-1.7.2.js"></script>
    <script src="assets/js/jquery.quicksand.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/jquery.prettyPhoto.js"></script>-->
    <!-- //jQuery-Photo-filter-lightbox-portfolio-plugin -->
    <!-- bootstrap js -->
    <!--<script src="assets/js/bootstrap.min.js"></script> -->

</body>

</html>