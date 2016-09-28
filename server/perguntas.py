# -*- coding: utf-8 -*-
from bottle import run, get, post, view, request, redirect, route, static_file
from connect import *

@get('/perguntas')
@route('/perguntas', method="POST")
@view('perguntas')
def index():
    perg = request.forms.perg
    if perg != "":
        perg = str(perg).replace("\'", "\'\'")
        c.execute("INSERT INTO   pergunta(datahora, descricaop, userid) VALUES (now(), \'" + perg + "\', 1);");
        conn.commit()
    c.execute("SELECT idperg, descricaop FROM pergunta")
    palavra = c.fetchall()
    return dict(palavra = palavra)
