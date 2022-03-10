from django.shortcuts import render,redirect
from netcards.forms import signupform,paymentform,loginform
from netcards.models import client_details,card_details,payment
from django.http import HttpResponse
from django.contrib.auth import login,logout,authenticate
from django.contrib.auth.forms import AuthenticationForm
from django.contrib import messages
from django.conf import settings
from django.core.mail import send_mail

# Create your views here.
def index(request):
    return render(request,"index.php")

def mcards(request):
	return render(request,"mcards.php")

def about(request):
	return render(request,"about.php")

def services(request):
	return render(request,"services.php")

def acc(request):
	return render(request,"acc.php")

def contact(request):
	subject = 'Welcome to Netcards'
	unm = str(request.POST.get('w3lName',False))
	message = 'Hi '+unm+', thank you for your reviews from Netcards.'
	email_from = settings.EMAIL_HOST_USER
	recipient_list = [request.POST.get('w3lSender',False)]
	send_mail(subject,message,email_from,recipient_list)
	return render(request,"contact.php")

def signup(request):
	if request.method == 'POST':
		form = signupform(request.POST)
		if form.is_valid():
			form.save()
			request.session.__setitem__('user',request.POST.get('cemail', False))
			subject = 'Welcome to Netcards'
			message = 'Hi '+str(request.POST.get('cname',False))+', thank you for registering card(s) from Netcards.'
			email_from = settings.EMAIL_HOST_USER
			recipient_list = [request.POST.get('cemail',False)]
			send_mail(subject,message,email_from,recipient_list)
			return redirect('/netcards/acc/')
	else:
		form = signupform()
	return HttpResponse("Hello World")

def cdetails(request,card,mch):
	card1 = card_details.objects.filter(cdid = card)
	return render(request,"cdetails.php",{'card':card1,'mch':mch})

def payment1(request,cardid,mch2):
	if request.session.__contains__('user'):
		card2 = card_details.objects.get(cdid = cardid)
		cdqu = int(request.POST.get('Quantity',False))
		client = client_details.objects.get(cemail = request.session.__getitem__('user'))
		tprice = card2.cdprice * cdqu
		address = request.POST.get('address',False)
		obj = payment.objects.create(cdid = card2.cdid,cid = client.cid,b_cdquantity = cdqu,cdprice = card2.cdprice,totalprice = tprice,d_address = address)
		obj.save()
		request.session.__setitem__('pid_sess',obj.pid)
		return render(request,"payment.php",{'card2':obj,'mch2':mch2,'card3':card2})
	else:
		form = paymentform()
		return render(request,"acc.php")

def cards(request,mc):
	card = card_details.objects.filter(cdtype = mc)
	return render(request,"cards.php",{'mc':card,'mch':mc})

def logoutview(request):
	request.session.__delitem__('user')
	return redirect("/netcards/acc/")

def loginview(request):
	request.session.__setitem__('user',request.POST.get('cemail',False))
	return render(request,"acc.php")

def mailus(request):
	user = client_details.objects.get(cemail = request.session.__getitem__('user'))
	pay = payment.objects.get(pid = request.session.__getitem__('pid_sess'))
	card = card_details.objects.get(cdid = pay.cdid)
	p = str(pay.cdprice)
	q = str(pay.b_cdquantity)
	tp = str(pay.totalprice)
	subject = 'Welcome to Netcards'
	message = 'Hi '+user.cname+', thank you for buying card(s) from Netcards.\n'+' Card Name :- '+card.cdnm+'\n Card Type :- '+card.cdtype+'\n Card Price :- '+p+'\n Card Quantity :- '+q+'\n Card Totalprice :- '+tp+'\n Delivery Address :- '+pay.d_address
	email_from = settings.EMAIL_HOST_USER
	recipient_list = [user.cemail]
	send_mail( subject, message, email_from, recipient_list)
	return redirect('/netcards/')

def sub(request):
	if request.method == "POST":
		if not request.session.__contains__('subid'):
			email = request.POST['email']
			request.session.__setitem__('subid',email)
			subject = 'Welcome to Netcards'
			message = 'Hi, thank you for subscribing... get latest update from Netcards in this email.. start buying cards today...'
			email_from = settings.EMAIL_HOST_USER
			recipient_list = [email]
			send_mail(subject,message,email_from,recipient_list)
			return redirect('/netcards/')
		else:
			request.session.__delitem__('subid')
			return redirect('/netcards/')
	return HttpResponse("last")