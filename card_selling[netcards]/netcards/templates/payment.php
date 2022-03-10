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
    <!-- <link rel="stylesheet" type="text/css" href="assets/css/mystyles.css"> -->
</head>

<body>
{% include "header.php" %}

<section class="w3l-breadcrumb">
    <div class="container">
      <ul class="breadcrumbs-custom-path">
        <li><a href="/netcards/">Home</a></li>
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Cards</li>
      </ul>
    </div>
  </section>

  <section class="team-main text-center py-5">
    <div class="container py-md-5">
      <h3 class="hny-title">{{mch2}}</h3>
      <!-- python codeing to fetch images from satabase -->
      <div class="row mt-5">
        <div class="col-md-4 col-sm-6 team-gd">          
        <ul class="portfolio-area clearfix p-0 m-0">
          <li class="portfolio-item2 content" data-id="id-1" data-type="cat-item-1">
          <span class="image-block">
          <a class="image-zoom" href="{% static card2.cdimg %}" data-gal="prettyPhoto[gallery]">
          <div class="content-overlay"></div>
            <img src="{% static card3.cdimg %}" alt="portfolio-img" class="img-fluid radius-image img-fluid w3layouts agileits"></a></span>
          </li>
        </ul>
        </div>
        <form action="{% url 'mailus' %}" style="text-align: left;" method="POST">{% csrf_token %}
        <br><br>
        <h5>Card Name :- {{card3.cdnm}}</h5><br>
        <h5>Card Type :- {{card3.cdtype}}</h5><br>
        <h5>Card Price :- {{card2.cdprice}}</h5><br>
        <h5>Card Quantity :- {{card2.b_cdquantity}}</h5><br>
        <h5>Total Price :- {{card2.totalprice}}</h5><br>
        <h5>Delivery Address :- {{card2.d_address}}</h5><br>
        <input type="submit" value="Confirm Buy Now" style="height: 30px;width: 170px; color: white; background-color: #f71735 ;">
         </ul>
         </form>
         </div>
        </div>
  </section>

{% include "footer.php" %}
</body>
</html>