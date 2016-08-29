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
@view('index')
def index():
    mk = 3

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

run(host = 'localhost', port='8080')
