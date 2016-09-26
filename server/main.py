from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session
from index import *

@route('/static/<path:path>')
def server_static(path):
    return static_file(path, root='static')

@get('/login')
@view('login')
def index():
    return {}

@route('/auth', method="POST")
def formAuth():
    postdata = request.body.read()
    username = request.forms.get("username")
    password = request.forms.get("password")
    return "username: " + username + "<br/>" + "password: " + password


@get('/exibicao')
@view('exibicao')
def exibicao():
    return {}

@get('/pergunta')
@route('/pergunta', method="POST")
@view('pergunta')
def pergunta():
    pergunta = request.forms.get("perg")
    print(str(pergunta))
    return {}

@get('/resposta')
@route('/resposta', method="POST")
@view('resposta')
def resposta():
    resposta = request.forms.get("resp")
    print(resposta)
    return {}



run(host = 'localhost', port='8080')
