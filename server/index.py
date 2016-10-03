from bottle import run, get, post, view, request, redirect, route, static_file, template
import bottle_session
import bottle_redis
import bottle
from connect import *

@bottle.view('index')
<<<<<<< HEAD
def renderIndex(data, error):
    return dict(palavra = data, error = error)
=======
def renderIndex(data,session):
    return dict(palavra = data,session = session)
>>>>>>> e9ee6701f4b6c536c6ae3be87edd0f1d2769e551

@bottle.route('/')
@bottle.route('/index')
def index(session):
    error = request.forms.error
    c.execute("SELECT idperg, descricaop FROM pergunta ORDER BY idperg DESC LIMIT 5")
<<<<<<< HEAD
    return renderIndex(c.fetchall(), error);
=======
    return renderIndex(c.fetchall(),session);
>>>>>>> e9ee6701f4b6c536c6ae3be87edd0f1d2769e551
