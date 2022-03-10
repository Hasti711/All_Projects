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

  <section class="team-main text-center py-5">
    <div class="container py-md-5">
      <h3 class="hny-title">{{mch}}</h3>
      <!-- python codeing to fetch images from database -->
      <div class="row mt-5">
      {% for card in mc %}
        <div class="col-md-4 col-sm-6 team-gd">
        <a href="{% url 'cdetails' card.cdid mch %}">
          <div class="box16">
            <img src="{% static card.cdimg %}" alt="card images" class="img-fluid radius-image">
          </div>
          </a>
        </div>
        {% endfor %}
      </div>
    </div>
  </section>
{% include "footer.php" %}
</body>
</html>