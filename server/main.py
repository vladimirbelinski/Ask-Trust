#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from bottle import run, get, post, view, request, redirect, route, static_file, template
import bottle_session
import bottle_redis
import bottle
import redis
from index import *
#from perguntas import *
from login import *

app = bottle.app()
plugin = bottle_session.SessionPlugin(cookie_lifetime=600)
app.install(plugin)

@bottle.route('/static/<path:path>')
def server_static(session,path):
    return static_file(path, root='static')

@bottle.view('exibicao')
def renderExibicao(question,date,user,idPerg,result, session):
    return dict(question = question, date = date, user = user, id = idPerg, answer = list(result), login = session.has_key('user'))

@bottle.route('/exibicao',method="GET")
@bottle.route('/exibicao', method="POST")
def exibicao(session):
    idPerg = request.query.id
    if idPerg == "":
        return redirect('login')
    resp = request.forms.resp
    if resp != "":
        resp = str(resp).replace("\'", "\'\'")
        c.execute("INSERT INTO  resposta(datahora, descricaoR, userid, idPerg) VALUES (now(), \'" + resp + "\', \'" + session['user_id'] + "\', " + idPerg + ");")
        conn.commit()
    c.execute("SELECT * FROM pergunta where idPerg = " + idPerg)
    result = c.fetchall()
    if len(result) != 1:
        return template('login')
    cpf = result[0][3]
    question = result[0][2]
    date = str(result[0][1])
    c.execute("SELECT email, nome FROM usuario where cpf = \'" + cpf + "\'")
    result = c.fetchall()
    user = result[0][1]
    c.execute("SELECT R.idresp, U.nome, R.descricaor, R.datahora FROM resposta as R join usuario as U on R.userid = U.cpf where R.idperg = " + idPerg)
    result = c.fetchall()
    return renderExibicao(question,date,user,idPerg,result, session)

@bottle.view('resposta')
def renderResposta():
    return {}

@bottle.route('/resposta',method="GET")
@bottle.route('/resposta', method="POST")
def resposta(session):
    resposta = request.forms.get("resp")
    print(resposta)
    return renderResposta()

bottle.debug(True)
bottle.run(app=app,host='localhost',port=8080)
