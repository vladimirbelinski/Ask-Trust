from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session


messages = "bom dia!"
nick = "auahsi"

@get('/')
@view('exibicao')
def index():
    return {}

run(host = 'localhost', port='8080')
