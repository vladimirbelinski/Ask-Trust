<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title> Ask&Trust </title>

    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>

  <body>
    <div class="row">
      <div class="col s12 m5">
        <div class="card-panel blue-grey darken-3">
          <span class="white-text">
            %for p in palavra:
              {{p}}
            %end
          </span>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/materialize.min.js"></script>
  </body>

</html>

<!-- <div class="container">
  <div class="row">
    <div class="col s6">

      <div class="card grey lighten-5">

        <div class="card-content blue-grey-text text-darken-3">

          <span class="card-title">Criar Pergunta</span>

          <form action="pergunta" method="post">

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

    </div>
  </div>
</div> -->
