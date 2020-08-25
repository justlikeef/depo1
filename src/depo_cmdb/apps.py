from django.apps import AppConfig
from django.utils.translation import gettext_lazy as _

class DepoCmdbConfig(AppConfig):
    name = 'depo_cmdb'
    verbose_name = _("Configuration Management Database")
