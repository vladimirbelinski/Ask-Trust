<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Ask&Trust</title>
  </head>

  <body>

    <div class="container">
      <div class="row">
        <div class="col s12">
          <div class="card grey lighten-5">
            <div class="card-content blue-grey-text text-darken-3" style="word-wrap: break-word">
              <span class="card-title right">#{{id}}</span>
              <p class="blue-grey-text text-lighten-3"><font size="1">Por {{user}} em {{date}}</font></p>
              <p>{{question}}</p>
            </div>
            <div class="card-action">
              <a class="modal-trigger" href="#resp"><div class="right">Responder</div></a>
            </div>
            <!-- <div class="card-content blue-grey-text text-darken-3">
              <span class="card-title">Respostas</span>
            </div>
            <div class="card-content blue-grey-text text-darken-3">
              <p>Sim</p>
            </div>
            <div class="card-content blue-grey-text text-darken-3">
              <p>Não</p>
            </div> -->
          </div>
        </div>
        <div class="col s12">
          <div class="card grey lighten-5">
            <div class = "card-content blue-grey-text text-darken-3">
                <span class="card-title">Respostas</span>
                <table class="bordered highlight">
                  <tbody>
                    %for a in answer:
                    <tr>
                        <td>{{a}}</td>
                        <!-- <\td><i class="tiny material-icons">thumb_up</i></td> -->
                    </tr>
                    %end
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div id="resp" class="modal">
      <div class="modal-content">
        <form class="col s12">
          <div class="input-field col s12">
            <textarea id="textarea1" class="materialize-textarea" placeholder="Resposta"></textarea>
            <!-- <label for="textarea1">Textarea</label> -->
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Enviar</a>
      </div>
    </div>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/materialize.min.js"></script>
    <script> $(document).ready(function(){$('.modal-trigger').leanModal();});</script>
  </body>

</html>
