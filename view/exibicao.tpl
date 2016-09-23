<!DOCTYPE html>
<html>

  <head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/static/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>

  <body>

    <div class="container">

      <div class="row">
        <div class="col s12 m6">
          <div class="card grey lighten-5">
            <div class="card-content blue-grey-text text-darken-3">
              <span class="card-title right">#{{id}}</span> <!--informação deve ser extraída da base de dados-->
              <p class="blue-grey-text text-lighten-3"><font size="1">Por Anônimo em {{date}}</font></p>
              <p>{{question}}</p> <!--informação deve ser extraída da base de dados-->
            </div>
            <div class="card-action">
              <a href="#"><div class="right">Responder</div></a>
            </div>
          </div>
        </div>
      </div>

    </div>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/materialize.min.js"></script>

  </body>

</html>
