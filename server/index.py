from bottle import run, get, post, view, request, redirect, route, static_file
from connect import *

@get('/')
@get('/index')
@view('index')
def index():
    c.execute("SELECT idperg, descricaop FROM pergunta ORDER BY idperg DESC LIMIT 5")
    palavra = c.fetchall()
    return dict(palavra = palavra)
