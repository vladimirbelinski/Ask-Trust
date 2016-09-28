<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/> -->

    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>

  <body>

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
  </body>

</html>
