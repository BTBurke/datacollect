from django.conf.urls.defaults import *

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Example:
    (r'^test1/process/$', 'datacollect.promptedtype.views.process'),
    (r'^test1/$', 'datacollect.promptedtype.views.index'),
    (r'^test4/doubleclick/$',
        'datacollect.mouseinteraction.views.doubleclick'),
    (r'^test4/$', 'datacollect.mouseinteraction.views.index'),
    # to INSTALLED_APPS to enable admin documentation:
    # (r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # (r'^admin/', include(admin.site.urls)),
)
