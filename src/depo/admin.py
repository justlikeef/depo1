from django.contrib import admin
from treebeard.admin import TreeAdmin
from treebeard.forms import movenodeform_factory
from depo.models import *

class ConfigItemAttributeAdmin(TreeAdmin):
    form = movenodeform_factory(ConfigItemAttribute)

class ConfigItemTreeAdmin(TreeAdmin):
    form = movenodeform_factory(ConfigItemTree)

admin.site.register(ConfigItemTree, ConfigItemTreeAdmin)
admin.site.register(ConfigItem)
admin.site.register(ConfigItemAttribute, ConfigItemAttributeAdmin)
admin.site.register(ConfigItemAttributeValue)
