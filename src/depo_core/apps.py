from django.apps import AppConfig
from django.utils.translation import gettext_lazy as _

class DepoCoreConfig(AppConfig):
    name = 'depo_core'
    verbose_name = _("System Configuration")
