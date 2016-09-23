from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session
from pergunta import *
import psycopg2

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
    idPerg = request.query.id
    if idPerg == "":
        return template('login')
    #pergunta = request.forms.get("perg")
    #perg = str(pergunta)
    #c.execute("INSERT INTO  pergunta(datahora, descricaop, userid) VALUES (now(), '{0}', 1);" .format(perg))
    #conn.commit()
    c.execute("SELECT * FROM pergunta where idPerg = " + idPerg)
    result = c.fetchall()
    result = str(result).split(', \'')
    question = result[1].replace("\'", "")
    date = result[0].split("(")[2].replace(")", "").split(", ")
    date = date[2] + '-' + date[1] + '-' + date[0];
    cpf = result[2].replace(")]", "")
    c.execute("SELECT email, nome FROM usuario where cpf = \'" + cpf)
    result = c.fetchall()
    print(result)
    return dict(question = question, date = date, id = idPerg)

@get('/pergunta')
@route('/pergunta', method="POST")
@view('pergunta')
def pergunta():
    pergunta = request.forms.get("perg")
    perg = str(pergunta)
    c.execute("INSERT INTO  pergunta(datahora, descricaop, userid) VALUES (now(), '{0}', 1);" .format(perg))
    conn.commit()
    return dict(palavra = pegcoisas(conn, c))

@get('/resposta')
@route('/resposta', method="POST")
@view('resposta')
def resposta():
    resposta = request.forms.get("resp")
    print(resposta)
    return {}

run(host = 'localhost', port='8080')
