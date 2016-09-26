from bottle import run, get, post, view, request, redirect, route, static_file, template
import bottle_session
from connect import *
from perguntas import *

@get('/login')
@view('login')
def index():
    return {}

@route('/auth',method="POST")
def formAuth():
    username = request.forms.get("username")
    password = request.forms.get("password")
    query = "SELECT * FROM usuario WHERE email = \'%s\' AND senha = \'%s\'"%(username,password)
    c.execute(query)
    result = c.fetchall()
    return redirect('/perguntas') if c.rowcount > 0 else redirect('/login')

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static/')
