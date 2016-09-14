from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session

@route('/static/<path:path>')
def server_static(path):
    return static_file(path, root='static')

@get('/')
@get('/login')
@view('login')
def index():
    return {}

@route('/login', method="POST")
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
@view('pergunta')
def pergunta():
    pergunta = request.forms.get("perg1")
    print(str(pergunta))
    return {}

@get('/resposta')
@view('resposta')
def resposta():
    resposta = request.forms.get("idResposta")
    print(resposta)
    return {}

run(host = 'localhost', port='8080')
