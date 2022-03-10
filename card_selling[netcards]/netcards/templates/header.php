    <!DOCTYPE html>
    {% load static %}
    <html lang="zxx">
    <head>
        <title>NetCards</title>
         <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="{% static 'assets/images/logo2.png' %}">
    <title>NetCards</title>
    <link href="//fonts.googleapis.com/css2?family=Raleway:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Nunito:400,700&display=swap" rel="stylesheet">
    <!-- <link rel="stylesheet" href="assets/css/menu_style.css"> -->
    <!-- Template CSS -->
    <link rel="stylesheet" href="{% static 'assets/css/style-starter.css' %}">
    </head>
    <body>
    <!-- header -->
    <header id="site-header" class="w3l-header-4 fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg stroke">
                <h1> <a class="navbar-brand" href="http://127.0.0.1:8000/netcards/">
                        Net<span class="sub-spl">C</span>ards
                    </a></h1>
                <!-- if logo is image enable this   
        <a class="navbar-brand" href="#index.html">
            <img src="assets/images/logo2.png" alt="Your logo" title="Your logo" style="height:55px; width: 80px" />
        </a> -->
                <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                    data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                    </span>
                </button>

                <div class="collapse navbar-collapse " id="navbarTogglerDemo02">
                    <ul class="navbar-nav mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/netcards/">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/netcards/mcards/">Cards</a>
                            <!-- <div class="c_m">
                            <div class="d_down">
                                <button class="d_btn">Cards
                                <i class="fa fa-caret-down"></i>
                                </button>
                            <div class="d_down_content">
                                <a href="#" class="nav-link">Link 1</a>
                                <a href="#" class="nav-link">Link 2</a>
                                <a href="#" class="nav-link">Link 3</a>
                            </div>
                            </div> 
                        </div>-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/netcards/about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/netcards/services">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/netcards/acc/">Account</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/netcards/contact">Contact</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav search-right mt-lg-0 mt-2">
                        <li class="nav-item mr-3" title="Search"><a href="#search" class="btn search-search">
                                <span class="fa fa-search" aria-hidden="true"></span></a></li>
                        <li class="nav-item"><!-- <a href="#download" class="btn btn-primary d-none d-lg-block btn-style"></a> -->Click to Change Theme
                        </li>
                    </ul>

                    <!-- //toggle switch for light and dark theme -->
                    <!-- search popup -->
                    <div id="search" class="pop-overlay">
                        <div class="popup">
                            <form action="#" method="GET" class="d-sm-flex">
                                <input type="search" placeholder="Search.." name="search" required="required" autofocus>
                                <button type="submit">Search</button>
                                <a class="close" href="#url">&times;</a>
                            </form>
                        </div>
                    </div>
                    <!-- /search popup -->
                </div>
                <!-- toggle switch for light and dark theme -->
                <div class="mobile-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun" style="cursor: pointer !important;"></i>
                                    <i class="gg-moon" style="cursor: pointer !important;"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
            </nav>
        </div>
    </header>
    <!-- //header -->

    <script src="{% static 'assets/js/theme-change.js' %}"></script><!-- theme switch js (light and dark)-->

    <script src="{% static 'assets/js/jquery-3.3.1.min.js' %}"></script><!-- default jQuery -->
    <script src="{% static 'assets/js/owl.carousel.js' %}"></script>
    <!-- script for tesimonials carousel slider -->
    <script>
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
    </script>
    <!-- //script for tesimonials carousel slider -->
    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
        <!--/MENU-JS-->
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
    <!--//MENU-JS-->
    <script src="{% static 'assets/js/jquery-1.7.2.js' %}"></script>
    <script src="{% static 'assets/js/jquery.quicksand.js' %}"></script>
    <script src="{% static 'assets/js/script.js' %}"></script>
    <script src="{% static 'assets/js/jquery.prettyPhoto.js' %}"></script>
    <!-- //jQuery-Photo-filter-lightbox-portfolio-plugin -->
    <!-- bootstrap js -->
    <script src="{% static 'assets/js/bootstrap.min.js' %}"></script>
    </body>
    </html>