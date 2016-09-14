from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session

messages = "bom dia!"
nick = "auahsi"

@route('/static/<filename>')
def server_static(filename):
    print(filename)
    return static_file(filename, root='./static/')

@get('/')
@view('pergunta')
def index():
    return {}

run(host = 'localhost', port='8080')
