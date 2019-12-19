from django.core import serializers
from django.http import HttpResponse

def showNodeAsJSON(request, appname, modelname, nodeid):
    _imp = __import__(appname+'.models',globals(), locals(), [modelname])
    model = getattr(_imp, modelname)
    return HttpResponse(content=serializers.serialize("json", model.objects.filter(id=nodeid)), content_type="application/json")