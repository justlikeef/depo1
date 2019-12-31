from django.contrib import admin
from treebeard.admin import TreeAdmin
from treebeard.forms import movenodeform_factory
from depo.models.ConfigItemTree import ConfigItemTree
from depo.models.ConfigItem import ConfigItem
from depo.models.ConfigItem import ConfigItemConfigItemRole
from depo.models.ConfigItemAttribute import ConfigItemAttribute
from depo.models.ConfigItemAttributeValue import ConfigItemAttributeValue
from depo.models.ConfigItemRole import ConfigItemRole

class ConfigItemAttributeAdmin(TreeAdmin):
    form = movenodeform_factory(ConfigItemAttribute)

class ConfigItemTreeAdmin(TreeAdmin):
    form = movenodeform_factory(ConfigItemTree)

class ConfigItemConfigItemRoleInline(admin.TabularInline):
    model = ConfigItemConfigItemRole

class ConfigItemAdmin(admin.ModelAdmin):
    inlines = (ConfigItemConfigItemRoleInline,)

class ConfigItemRoleAdmin(admin.ModelAdmin):
    inlines = (ConfigItemConfigItemRoleInline,)

# Register your models here.
admin.site.register(ConfigItemTree, ConfigItemTreeAdmin)
admin.site.register(ConfigItem, ConfigItemAdmin)
admin.site.register(ConfigItemAttribute, ConfigItemAttributeAdmin)
admin.site.register(ConfigItemAttributeValue)
admin.site.register(ConfigItemRole, ConfigItemRoleAdmin)
