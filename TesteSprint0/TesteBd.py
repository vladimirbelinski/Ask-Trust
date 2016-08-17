from bottle import run, get, post, view, request, redirect, route
import json
from threading import Thread
import requests
import time
from urllib3.exceptions import MaxRetryError
import sys
import psycopg2
import pprint


@get('/')
@view('index')
def index():
    return {'messages': messages, 'nick': nick}

@route('/<nick>')
@view('index')
def index(nick='Nobody'):
    return {'messages': messages, 'nick': nick}



print ("Content-type: text\html")

conn = psycopg2.connect("\
	dbname='askandtrust'\
	user='postgres'\
	host='localhost'\
	password='postgres'\
");
c = conn.cursor()
c.execute("SELECT * FROM tabela")
records = c.fetchall()
print(records)
