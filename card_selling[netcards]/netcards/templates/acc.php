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
    <!-- banner -->
    <section class="w3l-breadcrumb">
    <div class="container">
      <ul class="breadcrumbs-custom-path">
        <li><a href="/netcards/">Home</a></li>
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Account</li>
      </ul>
    </div>
  </section>
  <section class="bannerhny w3pvt-banner" id="home">
  <table>
  <tr>
    {% if not request.session.user %}
  <td>
          <div class="container">
    <div class="banner-info text-center mx-auto">
                <div class="w3pvt-logo align-self">
                <h3>Sign up</h3>
                <form action="/netcards/signup" method="post" style="display: inherit;">{% csrf_token %}
                <input placeholder="name" type="text" name="cname" style="height: 30px; margin-left: 0px;"><br/><br/>
                    <input placeholder="password" type="password" name="cpass" style="height: 30px;"><br><br>
                    <input placeholder="email" type="email" name="cemail" style="height: 30px;"><br><br>
                    <input placeholder="contact" type="contact" name="ccontact" maxlength="10" style="height: 30px;"><br><br>
                    <h4><input type="submit" value="Sign Up Now" class="" style="height: 30px;width: 170px; color: white; background-color: #f71735 ;"></h4></form><br><br>
                    </form>
                </div>
        </div> 
    </div>
        </td>
        <td>
        <div class="container">
            <div class="banner-info text-center mx-auto">
                <div class="w3pvt-logo align-self">
                <h3>Log In</h3>
                <form action="/netcards/loginview/" method="post" style="display: inherit;">
                    {% csrf_token %}
                    <input placeholder="email" type="email" name="cemail" style="height: 30px;">
                    <br><br>
                    <input placeholder="password" type="password" name="cpass" style="height: 30px;">
                    <br><br>
                    <h4><input type="submit" value="Log In Now" class="" style="height: 30px;width: 170px; color: white; background-color: #f71735 ;"></h4>
                    </form>
                </div>
            </div>
            </div>
        </td>
    </td>
        {% else %}
        <td>
        <div class="container">
            <div class="banner-info text-center mx-auto">
                <div class="w3pvt-logo align-self">
                <form action="/netcards/logoutview/" method="post" style="display: inherit;">
                    {% csrf_token %}
                    <h4><input type="submit" value="Log Out" style=" background-color: #f71735 ;"></h4>
                    </form>
                </div>
            </div>
            </div>
        {% endif %}
        </tr>        
        </table>
    </section>
    
    <!-- //banner -->
    {% include "footer.php" %}
</body>
</html>