from django.shortcuts import render

def showJSTree(request, appname, modelname):
    _imp = __import__(appname+'.models',globals(), locals(), [modelname])
    model = getattr(_imp, modelname)
    return render(request, "jsTree.html", {'appname':appname, 'treemodelname':treemodelname, 'leafmodelname':leafmodelname})