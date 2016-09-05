from bottle import run, get, post, view, request, redirect, route
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

@get('/')
@view('exibicao')
def index():
    return {}

run(host = 'localhost', port='8080')
