<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="utf-8">
  </head>
  <body>

    <div class="container">
      <div class="row">
        <div class="col s6 offset-s3">
          <div class="card grey lighten-5">
            <div class="card-content">
              <p>
                {{auth_error}}
              </p>
            </div>
            <div class="card-content blue-grey-text text-darken-3">
              <span class="card-title">Login</span>
              <form action="auth" method="POST">
                <div class="row">
                  <div class="input-field col s12">
                    <input id="username" name="username" type="text" required="validate">
                    <label for="username">Email</label>
                  </div>
                  <div class="input-field col s12">
                    <input id="password" name="password" type="password" required="validate">
                    <label for="password">Senha</label>
                  </div>
                </div>
                <div class="row">
                  <center>
                    <button class="btn waves-effect waves-light blue-grey darken-3 grey-text text-lighten-5" type="submit" name="action">Login
                      <i class="material-icons right">send</i>
                    </button>
                  </center>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div id="at-footer"></div>
    <script type="text/javascript" async src="/static/menu.js"></script>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/materialize.min.js"></script>

  </body>

</html>
