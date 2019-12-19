from django.core import serializers
from django.http import HttpResponse


def showTreeAsJSON(request, appname, modelname):
    _imp = __import__(appname+'.models',globals(), locals(), [modelname])
    model = getattr(_imp, modelname)
    return HttpResponse(content=serializers.serialize("json", model.objects.all()), content_type="application/json")