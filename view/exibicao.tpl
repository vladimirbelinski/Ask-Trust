<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Ask&Trust</title>
  </head>

  <body>
    <nav>
      %if login:
        <div id="at-menu-lo" class = "nav-wrapper blue-grey darken-3"></div>
      %else:
        <div id="at-menu-li" class = "nav-wrapper blue-grey darken-3"></div>
      %end
    </nav>
    <div class="container">
      <div class="row">
        <div class="col s12">
          <div class="card grey lighten-5">
            <div class="card-content blue-grey-text text-darken-3" style="word-wrap: break-word">
              <span class="card-title right">#{{id}}</span>
              %if login:
              <p class="blue-grey-text text-lighten-3"><font size="1">Por {{user}} em {{date}}</font></p>
              %end
              <p>
                %msg = question.split('<br>');
                %for l in msg:
                  {{l}}<br/>
                %end
              </p>
            </div>
            %if login:
            <div class="card-action">
                <a class="modal-trigger" href="#resp"><div class="right">Responder</div></a>
            </div>
            %end
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
                <ul class="collapsible popout" data-collapsible="expandable">
                  %flag = 0
                  %for a in answer:
                  <li>
                    %if flag == 0:
                      <div class="collapsible-header active"><i class="material-icons">description</i>#{{a[0]}} Por {{a[1]}} em {{a[3]}}</div>
                      % flag = 1
                    %else:
                      <div class="collapsible-header"><i class="material-icons">description</i>#{{a[0]}} Por {{a[1]}} em {{a[3]}}</div>
                    %end
                    <div class="collapsible-body"><p>
                      %msg = a[2].split('<br>');
                      %for l in msg:
                        {{l}}<br/>
                      %end
                    </p></div>
                  </li>
                  %end
                </ul>
                <!-- <table class="bordered highlight">
                  <tbody>
                    %for a in answer:
                    <tr>
                        <td>{{a}}</td>
                        <\td><i class="tiny material-icons">thumb_up</i></td>
                    </tr>
                    %end
                  </tbody>
                </table> -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div id="resp" class="modal">
      <div class="modal-content">
        <form action="exibicao?id={{id}}" method="post">
          <div class="row">
            <div class="input-field col s12">
              <textarea id="resp" name = "resp" class="materialize-textarea" required="validate"></textarea>
              <label for="resp">Digite aqui sua resposta:</label>
            </div>
          </div>
          <div class="row">
            <center>
              <button class="btn waves-effect waves-light blue-grey darken-3 grey-text text-lighten-5" type="submit" name="action">Responder
                <i class="material-icons right">send</i>
              </button>
            </center>
          </div>
        </form>
      </div>
    </div>

    <footer>
      <div id="at-footer"></div>
    </footer>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/materialize.min.js"></script>
    <script type="text/javascript" async src="/static/menu.js"></script>
    <script>
    $(document).ready(function(){
      $('.modal-trigger').leanModal();
    });
    </script>
    <!-- <script type="text/javascript">
      function teste() {
        Materialize.toast('I am a toast!', 4000);

      }
    </script> -->
  </body>
</html>
