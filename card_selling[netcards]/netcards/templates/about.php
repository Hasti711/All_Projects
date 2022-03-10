<!doctype html>
{% load static %}
<html lang="zxx">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>NetCards</title>
  <link href="//fonts.googleapis.com/css2?family=Raleway:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Nunito:400,700&display=swap" rel="stylesheet">
  <!-- Template CSS -->
  <link rel="stylesheet" href="{% static 'assets/css/style-starter.css' %}">
  <link rel="icon" href="{% static 'assets/images/logo2.png' %}">
</head>

<body>
  {% include "header.php" %}
  <!-- /w3l-breadcrumb-->
  <section class="w3l-breadcrumb">
    <div class="container">
      <ul class="breadcrumbs-custom-path">
        <li><a href="/netcards/">Home</a></li>
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> About</li>
      </ul>
    </div>
  </section>
  <!-- //w3l-breadcrumb-->
  <section class="w3l-index3 bg-grey">
    <div class="midd-w3 py-5">
      <div class="container py-lg-5 py-md-3">
        <div class="row">
          <div class="col-lg-6 pr-lg-5">
            <img src="{% static 'assets/images/team4.jpg' %}" alt="" class="img-fluid radius-image">
          </div>
          <div class="col-lg-6 mt-lg-0 mt-md-5 mt-4 about-right-faq align-self">
            <h5 class="title-subhny">Who we are</h5>
            <h3 class="hny-title">Express yourself with the help of Cards</h3>
            <p class="mt-3">We, Hasti and Snehal Students of Dharmsinh Desai University, Nadiad studying in Semester IV are presenting our project. The Project is of making Cards. We make variety of cards such as bussiness cards, birthday cards etc. So join us and express you views without speaking. </p>
          </div>
          <div class="col-lg-6 mt-5 about-right-faq align-self order2">
            <h5 class="title-subhny">Why choose us</h5>
            <h3 class="hny-title">Customer satisfaction is our top priority</h3>
            <p class="mt-3">By choosing us, we assure you the best of best. Because the motto of Net cards is "Customer satisfaction is our top priority"</p>
          </div>
          <div class="col-lg-6 mt-md-5 mt-4 pl-lg-5">
            <img src="{% static 'assets/images/team2.jpg' %}" alt="" class="img-fluid radius-image">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- stats -->
  <!-- <section class="w3l-stats py-5" id="stats">
    <div class="gallery-inner container py-md-5 py-4">
      <div class="row stats-con">
        <div class="col-md-3 col-6 stats_info counter_grid">
          <p class="counter">2020</p>
          <h3>Happy Customers</h3>
        </div> -->
        <!--<div class="col-md-3 col-6 stats_info counter_grid1">
          <p class="counter">120</p>
          <h3>Wedding Albums</h3>
        </div>-->
        <!-- <div class="col-md-3 col-6 stats_info counter_grid1 mt-md-0 mt-5">
          <p class="counter">1500</p>
          <h3>Created Cards</h3>
        </div>
        <div class="col-md-3 col-6 stats_info counter_grid1 mt-md-0 mt-5">
          <p class="counter">120</p>
          <h3>Awards Won</h3>
        </div>
      </div>
    </div>
  </section> -->
  <!-- //stats -->
  <!-- middle -->
  <div class="middle py-5">
    <div class="container py-xl-5 py-lg-3">
      <div class="welcome-left text-center py-md-3">
        <h3 class="mb-4">Give Great Wishes of Born Day Through Our Cards</h3>

        <p class="text-italic">Are you planning a special event? We will make it a part of the history.</p>

        <a href="/netcards/mcards/" class="btn btn-style btn-primary mt-4">Start Buying Cards Now</a>
      </div>
    </div>
  </div>
  <!-- //middle -->
  <!--/team-->
  <section class="team-main text-center py-5">
    <div class="container py-md-5">
      <h3 class="hny-title">Our Team</h3>
      <!--<h3 class="hny-title">Photographers</h3>-->
      <div class="row mt-5">
        <div class="col-md-4 col-sm-6 team-gd">
          <div class="box16">
            <img src="{% static 'assets/images/team4.jpg' %}" alt=" " class="img-fluid radius-image">
            <div class="box-content">
              <h3 class="title-wthree">Hasti</h3>

              <ul class="social social_media_w3layouts text-center">

                <li><a href="https://www.instagram.com/parmar_hasti3/" class="find_facebook"><i class="fa fa-instagram"></i></a></li>

              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 team-gd">
          <div class="box16">
            <img src="{% static 'assets/images/team2.jpg' %}" alt=" " class="img-fluid radius-image">
            <div class="box-content">
              <h3 class="title-wthree">Snehal</h3>

              <ul class="social social_media_w3layouts text-center ">

                <li><a href="https://www.instagram.com/snnehhu/" class="find_dribbble"><i class="fa fa-instagram"></i></a></li>

              </ul>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
    </div>
  </section>
  <!--//team-->
{% include "footer.php" %}

  <!-- all js scripts and files here -->

  <script src="{% static 'assets/js/theme-change.js' %}"></script><!-- theme switch js (light and dark)-->
  <script src="{% static 'assets/js/jquery-3.3.1.min.js' %}"></script><!-- default jQuery -->
  <!-- //middle slider -->
  <!-- stats number counter-->
  <script src="{% static 'assets/js/jquery.waypoints.min.js' %}"></script>
  <script src="{% static 'assets/js/jquery.countup.js' %}"></script>
  <script>
    $('.counter').countUp();
  </script>
  <!-- //stats number counter -->

  <!-- disable body scroll which navbar is in active -->
  <script>
    $(function () {
      $('.navbar-toggler').click(function () {
        $('body').toggleClass('noscroll');
      })
    });
  </script>
  <!-- disable body scroll which navbar is in active -->

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

  <!-- bootstrap js -->

  <script src="{% static 'assets/js/bootstrap.min.js' %}"></script>

</body>

</html>