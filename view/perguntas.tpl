<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/> -->

    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>

  <nav>
    %if login:
      <div id="at-menu-lo" class = "nav-wrapper blue-grey darken-3"></div>
    %else:
      <div id="at-menu-li" class = "nav-wrapper blue-grey darken-3"></div>
    %end
  </nav>

  <body>
    <div class="container">
      <div class="row">
        %for p in palavra:
        <div class="col s12">
          <div class="card grey lighten-5">
            <div class="card-content blue-grey-text text-darken-3">
              <span class="card-title">Pergunta ID#{{p[0]}}</span>
              %if login:
                <p class="blue-grey-text text-lighten-3"><font size="1">Por {{p[2]}} em {{p[3]}}</font></p>
              %end
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
      <!-- {{login}} -->
      %if login:
      <div class="fixed-action-btn click-to-toggle" style="bottom: 45px; right: 24px;">
       <a href="#novaperg" class="btn-floating btn-large amber darken-3 modal-trigger">
         <i class="large material-icons">add</i>
       </a>
      </div>
      %end
    </div>

    <div id="novaperg" class="modal">
      <div class="modal-content">
        <form action="perguntas" method="post">
          <div class="row">
            <div class="input-field col s12">
              <textarea id="idPergunta" name = "perg" class="materialize-textarea" required="validate"></textarea>
              <label for="idPergunta">Digite aqui sua pergunta:</label>
            </div>
          </div>
          <div class="row">
            <center>
              <button class="btn waves-effect waves-light blue-grey darken-3 grey-text text-lighten-5" type="submit" name="action">Perguntar
                <i class="material-icons right">send</i>
              </button>
            </center>
          </div>
        </form>
      </div>
    </div>
    <div id="at-footer"></div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/materialize.min.js"></script>
    <script type="text/javascript" async src="/static/menu.js"></script>
  </body>

</html>
