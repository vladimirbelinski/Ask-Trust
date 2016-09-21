from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session
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
    return {}


@get('/pergunta')
@route('/pergunta', method="POST")
@view('pergunta')
def pergunta():
    pergunta = request.forms.get("perg")
    perg = str(pergunta)
    c.execute("INSERT INTO  pergunta(datahora, descricaop, userid) VALUES (now(), '{0}', 1);" .format(perg))
    conn.commit()
    c.execute("SELECT * FROM pergunta")
    palavra = c.fetchall()
    return dict(palavra = palavra)

@get('/resposta')
@route('/resposta', method="POST")
@view('resposta')
def resposta():
    resposta = request.forms.get("resp")
    print(resposta)
    return {}



run(host = 'localhost', port='8080')
