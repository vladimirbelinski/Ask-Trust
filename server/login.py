from bottle import run, get, post, view, request, redirect, route
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

run(host = 'localhost', port='8080')
