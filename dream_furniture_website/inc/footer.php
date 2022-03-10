	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /> <!-- Testimonials js-->
	<link rel="stylesheet" href="css/lightbox.css">  
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/test.css">

	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,700i,800,900" rel="stylesheet">
	<!-- //web-fonts -->
		  	<!-- scripts -->
	<script src="js/jquery.min.js"></script>
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="list">
				<ul class="social-footer-icons">
					<li>Dream Furniture</li>
					<li>
					<a href="#"><span class="fa fa-dribbble" aria-hidden="true"></span></a>
					<a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a>
					<a href="#"><span class="fa fa-vk" aria-hidden="true"></span></a>
					<a href="#"><span class="fa fa-pinterest-p" aria-hidden="true"></span></a>
					<a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
					</li>
				</ul>
				<ul class="address">
					<li> Sophia Road </li>
					<li> 1594 Nicolas </li>
					<li> I N D I A </li>
				</ul>
				
				<ul class="email">
					<li>+91 358 649 4885</li>
					<li><a href="mailto:service@decorate.com">service@dreamfurniture.com</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //footer -->
  	<!-- scripts -->
	
	<script src="js/bootstrap.min.js"></script>

	<script src="js/jquery.flexslider.js"></script>
	
	<!--Start-slider-script-->
	<script type="text/javascript">

	$(window).load(function(){
		$('.flexslider').flexslider({
		animation: "slide",
		start: function(slider){
			$('body').removeClass('loading');
		}
		});
	});
	</script>

	<!--End-slider-script-->
	
	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear'
				};
			*/

			$().UItoTop({ easingType: 'easeOutQuart' });

			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- smooth scrolling -->

<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
</body>
</html>