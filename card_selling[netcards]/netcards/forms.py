from django import forms
from django.forms import ModelForm
from netcards.models import client_details,payment
class signupform(ModelForm):
	class Meta:
		model = client_details
		fields = ['cname','cpass','cemail','ccontact']

class paymentform(ModelForm):
	class Meta:
		model = payment
		fields = ['cdid','cid','b_cdquantity','cdprice','totalprice','d_address']

class loginform(ModelForm):
	class Meta:
		model = client_details
		fields = ['cemail','cpass']