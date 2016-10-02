from bottle import run, get, post, view, request, redirect, route, static_file, template
import bottle_session
import bottle_redis
import bottle
from connect import *

@bottle.view('index')
def renderIndex(data):
    return dict(palavra = data)

@bottle.route('/')
@bottle.route('/index')
def index(session):
    c.execute("SELECT idperg, descricaop FROM pergunta ORDER BY idperg DESC LIMIT 5")
    return renderIndex(c.fetchall());
