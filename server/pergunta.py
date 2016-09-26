from bottle import run, get, post, view, request, redirect, route, static_file
from connect import *

def pegcoisas(conn, c):
    c.execute("SELECT * FROM pergunta")
    palavra = c.fetchall()
    return palavra

@get('/pergunta')
@route('/pergunta', method="POST")
@view('pergunta')
def pergunta():
    pergunta = request.forms.get("perg")
    perg = str(pergunta)
    c.execute("INSERT INTO  pergunta(datahora, descricaop, userid) VALUES (now(), '{0}', 1);" .format(perg))
    conn.commit()
    return dict(palavra = pegcoisas(conn, c))
