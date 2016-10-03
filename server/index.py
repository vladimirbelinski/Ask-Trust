from bottle import run, get, post, view, request, redirect, route, static_file, template
import bottle_session
import bottle_redis
import bottle
from connect import *

@bottle.view('index')
def renderIndex(data, error):
    return dict(palavra = data, error = error)

@bottle.route('/')
@bottle.route('/index')
def index(session):
    error = request.forms.error
    c.execute("SELECT idperg, descricaop FROM pergunta ORDER BY idperg DESC LIMIT 5")
    return renderIndex(c.fetchall(), error);
