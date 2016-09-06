from bottle import run, get, post, view, request, redirect, route, static_file
import bottle_session

@get('/')
@view('login')
def index():
    return {}

@route('/login',method="POST")
def formAuth():
    postdata = request.body.read()
    username = request.forms.get("username")
    password = request.forms.get("password")
    return "username: " + username + "<br/>" + "password: " + password

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static/')

run(host = 'localhost', port='8080')
