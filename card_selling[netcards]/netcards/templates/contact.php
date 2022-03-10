<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
{% load static %}
<html lang="zxx">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>NetCards </title>
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
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Contact</li>
      </ul>
    </div>
  </section>
  <!-- //w3l-breadcrumb-->
    <!-- contact1 -->
    <div class="w3l-contact-10 py-5" id="contact">
        <div class="form-41-mian pt-lg-4 pt-md-3 pb-4">
            <div class="container">
                <div class="heading text-center mx-auto">
                    <h5 class="title-subhny text-center mb-2">Contact With Us</h5>
                    <h3 class="hny-title mb-2">Get in Touch with Us </h3>
                    <p class="mb-5">If you have a question regarding our services, feel free
                        to contact us using the form below.</p>
                </div>
                <div class="row">

    
                    <div class="col-lg-4 contacts-5-grid-main section-gap mb-lg-0 mb-4 pr-lg-5">
                        <div class="contacts-5-grid">
                            <div class="map-content-5">
                                <section class="tab-content">
                                    <div class="contact-type">
                                        <div class="address-grid mb-3">
                                            <span
                                                class="pos-icon">
                                                <span class="fa fa-map"></span>
                                            </span>
                                            <div class="ad-right">
                                            <h6>Address</h6>
                                            <p>College Rd, Chalali, Nadiad, Gujarat 387001</p>
                                            </div>
                                        </div>
                                        <div class="address-grid mb-3">
                                            <span class="pos-icon">
                                                <span class="fa fa-envelope">
    
                                                </span>
                                            </span>
                                            <div class="ad-right">
                                            <h6>Email</h6>
                                            <a href="mailto:mailone@example.com" class="link1">20ceubd025@ddu.ac.in</a>
                                            </div>
                                        </div>
                                        <div class="address-grid">
                                            <span
                                                class="pos-icon">
                                                <span class="fa fa-headphones"></span>
                                            </span>
                                            <div class="ad-right">
                                                <h6>Phone</h6>
                                                <a href="tel:+12 424-096-439" class="link1">+12 424-096-439</a>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 form-inner-cont">
                        <form action="{% url 'contact' %}" method="post" class="signin-form">{% csrf_token %}
                            <div class="form-grids">
                                <div class="form-input">
                                    <input type="text" name="w3lName" id="w3lName" placeholder="Enter your name *"
                                        required="" />
                                </div>
                                <div class="form-input">
                                    <input type="text" name="w3lSubject" id="w3lSubject" placeholder="Enter subject "
                                        required />
                                </div>
                                <div class="form-input">
                                    <input type="email" name="w3lSender" id="w3lSender" placeholder="Enter your email *"
                                        required />
                                </div>
                                <div class="form-input">
                                    <input type="text" name="w3lPhone" id="w3lPhone" placeholder="Enter your Phone Number *"
                                        required maxlength="10" />
                                </div>
                            </div>
                            <div class="form-input">
                                <textarea name="w3lMessage" id="w3lMessage" placeholder="Type your reviews here"
                                    required=""></textarea>
                            </div>
                            <div class="text-right">
                                <button class="btn btn-style btn-primary">Submit Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- //contacts-5-grid -->
        </div>
    </div>
    
<!--     <div class="contacts-sub-5">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387193.305935303!2d-74.25986548248684!3d40.69714941932609!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1563262564932!5m2!1sen!2sin"
            style="border:0" allowfullscreen></iframe>
    </div> -->
  {% include "footer.php" %}

  <!-- all js scripts and files here -->
  <script src="{% static 'assets/js/theme-change.js' %}"></script><!-- theme switch js (light and dark)-->
  <script src="{% static 'assets/js/jquery-3.3.1.min.js' %}"></script><!-- default jQuery -->
  <!-- //middle slider -->
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
  <script src="{%static 'assets/js/bootstrap.min.js' %}"></script>

</body>

</html>