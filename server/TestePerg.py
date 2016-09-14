from bottle import run, get, post, view, request, redirect, route, static_file
import json
from threading import Thread
import requests
import time
from urllib3.exceptions import MaxRetryError
import sys
import psycopg2
import pprint

messages = "bom dia!"
nick = "auahsi"

@route('/static/<filename>')
def server_static(filename):
    print(filename)
    return static_file(filename, root='./static/')

@get('/')
@view('pergunta')
def index():
    return {}

run(host = 'localhost', port='8080')
