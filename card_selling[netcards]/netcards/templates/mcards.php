<!DOCTYPE html>
{% load static %}
<html>
<head>
	<title>NetCards</title>
  <link rel="icon" href="{% static 'assets/images/logo2.png' %}">
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
<section class="w3l-bottom-grids-6 py-5">
    <div class="container pt-lg-3 pb-lg-5 py-md-4">
      <div class="grids-area-hny main-cont-wthree-fea row">
        <!--<div class="col-lg-3 col-md-6 grids-feature mt-md-5 mt-4">
          <div class="area-box">
            <span class="fa fa-bar-chart" ></span>
            <h4><a href="cards.php?mc=Business Cards" class="title-head">
                Business Cards
            </h4>
            </a>
          </div>

          cards.php?mc=Birthday Wishing Cards
        </div>-->
        <div class="col-lg-3 col-md-6 grids-feature mt-md-5 mt-4">
          <div class="area-box">
            <span class="fa fa-clone"></span>
            <h4><a href="{% url 'cards' 'Birthday Wishing Cards' %}" class="title-head">Birthday Wishing Cards
            </a>
            </h4>
          </div>
        </div>
        <!--<div class="col-lg-3 col-md-6 grids-feature mt-md-5 mt-4">
          <div class="area-box">
            <span class="fa fa-user-circle-o"></span>    <span class="fa fa-user-circle-o"></span>
            <h4><a href="cards.php?mc=Wedding Cards" class="title-head">Wedding Cards</h4>
            </a>
          </div>
        </div>-->
        <div class="col-lg-3 col-md-6 grids-feature mt-md-5 mt-4">
          <div class="area-box">
            <span class="fa fa-pencil-square-o"></span>
            <h4><a href="{% url 'cards' 'Greeting Giving Cards' %}" class="title-head">Greeting Giving Cards</h4>
            </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 grids-feature mt-md-5 mt-4">
          <div class="area-box">
            <span class="fa fa-thumbs-up"></span>  <span class="fa fa-thumbs-down"></span>
            <h4><a href="{% url 'cards' 'Motivation Quotes Cards' %}" class="title-head">
                Motivation Quotes Cards
              </h4>
              </a>
          </div>
        </div>
        <!--<div class="col-lg-3 col-md-6 grids-feature mt-md-5 mt-4">
          <div class="area-box">
            <span class="fa fa-users"></span>
            <h4><a href="cards.php?mc=House Warming Cards" class="title-head">
             House Warming Cards </h4>
            </a>
          </div>
        </div>-->
        <div class="col-lg-3 col-md-6 grids-feature mt-md-5 mt-4">
          <div class="area-box">
            <span class="fa fa-vcard"></span>
            <h4><a href="{% url 'cards' 'Various Occasional Cards' %}" class="title-head">Various Occasional Cards</h4>
            </a>
          </div>
        </div>
        <!--<div class="col-lg-3 col-md-6 grids-feature mt-md-5 mt-4">
          <div class="area-box">
            <span class="fa fa-shower"></span>
            <h4><a href="cards.php?mc=Baby Shower Cards" class="title-head">Baby Shower Cards</h4>
          </a>
          </div>
        </div>-->
      </div>
    </div>
  </section>

</body>
</html>

{% include "footer.php" %}