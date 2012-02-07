from django.http import HttpResponse
from django.shortcuts import render_to_response
from datacollect.promptedtype.models import User

def index(request):
    user_name = 'Motherfucker'
    return render_to_response('promptedtype/index.html',{'user_name': user_name})

def process(request):
    if request.is_ajax():
        if request.method == 'GET':
            msg = "Received GET"
        elif request.method == 'POST':
            msg = request.POST
            print msg
            return HttpResponse(content='OK', status=200)
    else:
        msg = "No XHR"
    return HttpResponse(msg)
