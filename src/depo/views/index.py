from django.http import HttpResponse
from depo.models import ConfigItemTree

def index(request):
    configItemTree = ConfigItemTree.get_tree()
    return HttpResponse(configItemTree)