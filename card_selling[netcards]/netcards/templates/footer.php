<!DOCTYPE html>
<html>
<head>
	<title>NetCards</title>
</head>
<body>
<!-- footer-28 block -->
    <footer class="footer-28 py-5">
        <div class="container py-lg-3">
            <div class="w3l-forms-9 px-4" id="newsletter">
                <div class="main-w3 py-4">
                    <div class="container-fluid py-lg-3 py-2">
                        <div class="row align-items-center">
                            <div class="main-midd col-lg-6">
                                <h4 class="title-head">Subscribe to Website</h4>
                                <p>We’re a team of non-cynics who truly care for our work.</p>
                            </div>
                            <div class="main-midd-2 col-lg-6 mt-lg-0 mt-4">
                            {% if not request.session.subid %}
                                <form action="{% url 'sub' %}" method="POST" class="rightside-form"> {% csrf_token %}
                                    <input type="email" class="form-control" name="email"
                                        placeholder="Enter your email">
                                    <button class="btn" type="submit">Subscribe</button>
                                </form>
                            {% else %}
                            <form action="{% url 'sub' %}" method="POST" class="rightside-form"> {% csrf_token %}
                                    <button class="btn" type="submit">Unsubscribe</button>
                                </form>
                                {% endif %}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row footer-top-28">
                <div class="col-lg-6 footer-list-28 pr-lg-5 mt-5">
                    <h6 class="footer-title-28">Contact information</h6>
                    <p class="pr-lg-5">College Rd, Chalali, Nadiad, Gujarat 387001</p>

                    <div class="main-social-footer-28 mt-3">
                        <ul class="social-icons">
                            <li class="facebook">
                                <a href="https://www.facebook.com/ddu.nadiad" title="Facebook">
                                    <span class="fa fa-facebook" aria-hidden="true"></span>
                                </a>
                            </li>
                            <li class="twitter">
                                <a href="https://twitter.com/dduconnect?lang=en" title="Twitter">
                                    <span class="fa fa-twitter" aria-hidden="true"></span>
                                </a>
                            </li>
                            <li class="google">
                                <a href="https://www.ddu.ac.in/" title="Google">
                                    <span class="fa fa-google" aria-hidden="true"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-md-4 col-6 footer-list-28 mt-5">
                            <h6 class="footer-title-28">Useful links</h6>
                            <ul>
                                <li><a href="about.html">About us</a></li>
                                <li><a href="services.html">Services</a></li><!-- 
                                <li><a href="blog.html">Blog Posts</a></li>
                                <li><a href="#pricing">Pricing plans</a></li> -->
                            </ul>
                        </div><!-- 
                        <div class="col-md-4 col-6 footer-list-28 mt-5">
                            <h6 class="footer-title-28">Page links</h6>
                            <ul>
                                <li><a href="#">Why</a></li>
                                <li><a href="about.html">About us</a></li>
                                <li><a href="about.html">Photographers</a></li>
                                <li><a href="#pricing">Pricing plans</a></li>
                            </ul>
                        </div> -->
                        <div class="col-md-4 col-6 footer-list-28 mt-5">
                            <h6 class="footer-title-28">Help</h6>
                            <ul>
                                <li><a href="#privacy">Privacy policy</a></li>
                                <li><a href="#support"> Support</a></li>
                                <li><a href="#terms">Terms & conditions</a></li>
                                <li><a href="#license">License and uses</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <div class="midd-footer-28 align-center py-4 mt-5">
                <p class="copy-footer-28 text-center"> &copy; 2021 NetCards. All Rights Reserved</p>
            </div>
        </div>


        <!-- move top -->
        <button onclick="topFunction()" id="movetop" title="Go to top">
            &#10548;
        </button>
        <script>
            // When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function () {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    document.getElementById("movetop").style.display = "block";
                } else {
                    document.getElementById("movetop").style.display = "none";
                }
            }

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>
        <!-- /move top -->
        <!-- //footer-28 block -->
    </footer>
    <!-- all js scripts and files here -->
</body>
</html>