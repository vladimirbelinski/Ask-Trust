import bottle_session
import bottle

app = bottle.app()
plugin = bottle_session.SessionPlugin(cookie_lifetime=600)
app.install(plugin)

@bottle.route('/')
def index(session):
    user_name = session.get('name')
    if user_name is not None:
        return "Hello, %s"%user_name
    else:
        return "I don't recognize you."

@bottle.route('/set/:user_name')
def set_name(session,user_name=None):
    if user_name is not None:
        session['name']=user_name
        return "I recognize you now."
    else:
        return "What was that?"

bottle.debug(True)
bottle.run(app=app,host='localhost',port=8081)
