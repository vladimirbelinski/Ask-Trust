from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session


messages = "bom dia!"
nick = "auahsi"

@get('/')
@view('resposta')
def index():
    return {}


@route('/static/<filename>')
def server_static(filename):
    print(filename)
    return static_file(filename, root='./static/')


run(host = 'localhost', port='8080')
