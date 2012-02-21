<<<<<<< HEAD
from django.http import HttpResponse
from django.shortcuts import render_to_response
from datacollect.promptedtype.models import User

def index(request):
    user_name = 'Motherfucker'
    return render_to_response('mouseinteraction/index.html',{'user_name': user_name})

def doubleclick(request):
    user_name = 'Motherfucker'
    return render_to_response('mouseinteraction/doubleclick.html',{'user_name': user_name})


=======
# Create your views here.
>>>>>>> edde8bbeee022329c6a366df4d5f5cccf5fe7888
