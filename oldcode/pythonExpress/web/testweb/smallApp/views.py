
from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def helloWorld(request):
#	return HttpResponse("<h1>Hello World, ENJOY! Python Django Development.</h1>")
    return render(request, 'template.html')