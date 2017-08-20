# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.http.response import HttpResponse


def test(request, *args, **kwargs):
    return HttpResponse('OK' + str(args) + str(kwargs))
