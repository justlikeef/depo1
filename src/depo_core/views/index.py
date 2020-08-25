from django.http import HttpResponse
from depo_cmdb.models import ConfigItemTree

def index(request):
    configItemTree = ConfigItemTree.get_tree()
    return HttpResponse(configItemTree)