<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/> -->

    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>

  <body>

    <nav>
      <div class="nav-wrapper blue-grey darken-3">
        <a href="#" class="brand-logo center"><h5 class="grey-text text-lighten-5 logo_text">Ask & Trust</h5></a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
          <li><a href="#newlogin" class="modal-trigger">Login</a></li>
        </ul>
      </div>
    </nav>

    <div class="slider">
      <ul class="slides">
        <li>
          <img src="/static/menu_bg.png" alt="Imagem Fundo Menu Biblioteca e Ponte" height="5%" width="100%">
          <div class="caption center-align">
            <br><br>
            <h1 class="blue-grey-text text-darken-3 menu_text">ASK & TRUST</h1>
            <h4 class="blue-grey-text text-darken-3 menu_text">UM SISTEMA PARA TUTORIA ACADÊMICA</h4>
          </div>
        </li>
      </ul>
    </div>

    <div id="newlogin" class="modal">
      <div class="modal-content">
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

    <div class="container">
      <div class="row">
        %for p in palavra:
        <div class="col s12">
          <div class="card grey lighten-5">
            <div class="card-content blue-grey-text text-darken-3">
              <span class="card-title">Pergunta ID#{{p[0]}}</span>
              <a href="exibicao?id={{p[0]}}" class="amber-text text-darken-3"><p class="bigtext">{{p[1]}}</p></a>
            </div>
          </div>
        </div>
        %end
      </div>
    </div>
    <div id="at-footer"></div>
    <script type="text/javascript" async src="/static/menu.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/materialize.min.js"></script>
    <script>
      $(document).ready(function(){
        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
        $('.modal-trigger').leanModal();
      });
    </script>
  </body>

</html>
