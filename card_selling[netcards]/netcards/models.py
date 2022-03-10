from django.db import models

# Create your models here.
class client_details(models.Model):
    cid = models.AutoField(primary_key=True)
    cname = models.CharField(max_length=100)
    cpass = models.CharField(max_length=100)
    cemail = models.EmailField()
    ccontact = models.IntegerField()
    class Meta:
        db_table = "client_details"

class card_details(models.Model):
    cdid = models.AutoField(primary_key=True)
    cdnm = models.CharField(max_length=100)
    cdimg = models.CharField(max_length=100,default="")
    cdtype = models.CharField(max_length=100)
    cdprice = models.IntegerField()
    cdquantity = models.IntegerField()
    class Meta:
        db_table = "card_details"

class rate_review(models.Model):
    rrid = models.AutoField(primary_key=True)
    rate = models.IntegerField()
    review = models.CharField(max_length=100)
    cdid = models.IntegerField()
    cid = models.IntegerField()
    class Meta:
        db_table = "rt_n_rv"

class payment(models.Model):
    pid = models.AutoField(primary_key=True)
    cdid = models.IntegerField()
    cid = models.IntegerField()
    b_cdquantity = models.IntegerField()
    cdprice = models.IntegerField()
    totalprice = models.IntegerField()
    d_address = models.CharField(max_length=1000)
    class Meta:
        db_table = "payment"
