from bottle import run, get, post, view, request, redirect, route, static_file, template
import bottle_session
import bottle_redis
import bottle
from connect import *
from perguntas import *

@bottle.route('/log_out')
def log_out(session):
    if session.has_key('user'):
        del session['user']
    if session.has_key('user_id'):
        del session['user_id']
    return redirect("/index")

@bottle.route('/auth',method="POST")
def formAuth(session):
    username = request.forms.get("username")
    password = request.forms.get("password")
    query = "SELECT * FROM usuario WHERE email = \'%s\' AND senha = \'%s\'"%(username,password)
    c.execute(query)
    result = c.fetchall()
    if c.rowcount > 0:
        session['user'] = username
        session['user_id'] = result[0][0]
        return redirect('/perguntas')
    return redirect("/index?error=1")

@bottle.route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static/')
