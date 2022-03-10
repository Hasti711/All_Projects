
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/font-awesome.css">
	<link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" /> <!-- Testimonials js-->
	<link rel="stylesheet" href="../css/lightbox.css">  
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/test.css">

	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,700i,800,900" rel="stylesheet">  
	  	<!-- scripts -->
	<script src="../js/jquery.min.js"></script>
</head>
<body>
	<!-- Contact -->
	<div class="contact" id="contact">
		<h3 class="center">Contact Us</h3>
		<div class="container">
			<div class="contact-me">
				<!--p>lorem ipsum Praesent in rutrum turpis. Sed aliquet ligula at nunc feugiat, ut porta arcu fermentum. Aliquam et libero at quam tristique consectetur ut non lectus.</p-->
				<form action="cp.php" method="post">	
					<ul class="input">
						<li><span class="fa fa-user-o" aria-hidden="true"></span>
							<input type="text" name="full-name" placeholder="Full Name" required>
						</li>
						<li><span class="fa fa-envelope-o" aria-hidden="true"></span>
							<input type="email" name="email" placeholder="Your E-mail" required>
						</li>
						<li><span class="fa fa-comments-o" aria-hidden="true"></span>
							<textarea cols="20" rows="5" name="message" placeholder="Your Message" required></textarea>
						</li>
					</ul>
					<input type="submit" value="send message" name="submit">
				</form>
			</div>
		</div>
	</div>
	<!-- //Contact -->
</body>
</html>