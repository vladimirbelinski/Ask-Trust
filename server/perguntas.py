# -*- coding: utf-8 -*-
from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session
import bottle_redis
import bottle
from connect import *

@bottle.view('perguntas')
def renderIndex(palavra, session):
    return dict(palavra = palavra, login = session.has_key('user'))

@bottle.route('/perguntas',method="GET")
def index(session):
    perg = request.forms.perg
    if perg != "":
        perg = str(perg).replace("\'", "\'\'")
        c.execute("INSERT INTO pergunta(datahora, descricaop, userid) VALUES (now(), \'" + perg + "\', 1);");
        conn.commit()
    c.execute("SELECT P.idperg, P.descricaop, U.nome, P.dataHora FROM pergunta as P join usuario as U on P.userID = U.cpf")
    return renderIndex(c.fetchall(), session)
