from bottle import run, get, post, view, request, redirect, route, static_file
from connect import *

@get('/')
@get('/index')
@view('index')
def index():
    c.execute("SELECT idperg, descricaop FROM pergunta")
    palavra = c.fetchall()
    return dict(palavra = palavra)
