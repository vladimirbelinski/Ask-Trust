<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>


  <body>
    <nav>
      %if session.has_key('user'):
        <div id="at-menu-lo" class = "nav-wrapper blue-grey darken-3"></div>
      %else:
        <div id="at-menu-li" class = "nav-wrapper blue-grey darken-3"></div>
      %end
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

    <div class="container">
      <div class="row">
        %for p in palavra:
        <div class="col s12">
          <div class="card grey lighten-5">
            <div class="card-content blue-grey-text text-darken-3">
              <span class="card-title">Pergunta ID#{{p[0]}}</span>
              <a href="exibicao?id={{p[0]}}" class="amber-text text-darken-3"><p class="bigtext">
                %msg = p[1].split('<br>');
                %for l in msg:
                  {{l}}<br/>
                %end
              </p></a>
            </div>
          </div>
        </div>
        %end
      </div>
    </div>
    <div id="at-footer"></div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/materialize.min.js"></script>
    <script type="text/javascript" async src="/static/menu.js"></script>
  </body>

</html>
