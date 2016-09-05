from bottle import run, get, post, view, request, redirect, route
import json
import requests

import bottle_session

@get('/')
@view('login')
def index():
    return {}

run(host = 'localhost', port='8000')
