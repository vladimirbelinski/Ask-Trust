from bottle import run, get, post, view, request, response, redirect, route, static_file
import bottle_session
import psycopg2
from pergunta import *

conn = psycopg2.connect("\
	dbname='askandtrust'\
	user='postgres'\
	host='localhost'\
	password='postgres'\
");
c = conn.cursor()

@route('/static/<path:path>')
def server_static(path):
    return static_file(path, root='static')

@get('/')
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
    idPerg = request.query.id
    #pergunta = request.forms.get("perg")
    #perg = str(pergunta)
    #c.execute("INSERT INTO  pergunta(datahora, descricaop, userid) VALUES (now(), '{0}', 1);" .format(perg))
    #conn.commit()
    c.execute("SELECT * FROM pergunta where idPerg = " + idPerg)
    palavra = c.fetchall()
    palavra = str(palavra).split(', ')
    print(palavra);
    return dict(palavra = palavra)
    # pergunta = request.forms.get("perg")
    # print(str(pergunta))
    # return {}

@get('/resposta')
@route('/resposta', method="POST")
@view('resposta')
def resposta():
    resposta = request.forms.get("resp")
    print(resposta)
    return {}

run(host = 'localhost', port='8080')
