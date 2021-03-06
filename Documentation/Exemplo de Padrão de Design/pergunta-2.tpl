<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="UTF-8"/>
  </head>

  <body>

    <div class="container">

      <div class="row">
        <div class="col s6">

          <div class="card grey lighten-5">

            <div class="card-content blue-grey-text text-darken-3">
              
              <span class="card-title activator blue-grey-text text-darken-3">Pergunta #128197<i class="material-icons right">mode_edit</i></span>

              <p>Eu sou um cartão muito simples. Eu sou bom para conter pequenas informações. Eu sou conveniente por que eu preciso de muito pouca marcação para ser usado efetivamente.</p>

            </div>

            <div class="card-reveal">
              <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
              <form>

                <div class="row">
                  <div class="input-field col s12">
                    <textarea id="idPergunta" class="materialize-textarea"></textarea>
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
    </div>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="materialize.min.js"></script>

  </body>

</html>
