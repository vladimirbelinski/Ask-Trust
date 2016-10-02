from bottle import run, get, post, view, request, redirect, route, static_file, template
import bottle_session
import bottle_redis
import bottle
from connect import *
from perguntas import *

@bottle.view('login')
def renderLogin(error):
    return dict(auth_error = error)

@bottle.route('/login')
def index():
    return renderLogin("")

@bottle.route('/auth',method="POST")
def formAuth(session):
    username = request.forms.get("username")
    password = request.forms.get("password")
    query = "SELECT * FROM usuario WHERE email = \'%s\' AND senha = \'%s\'"%(username,password)
    c.execute(query)
    result = c.fetchall()
    if c.rowcount > 0:
        session['user'] = username
        return redirect('/perguntas')
    return renderLogin("Usuário e senha inválidos.")

@bottle.route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static/')
