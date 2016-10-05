buildMenu();
buildFooter();
buildLogin();
checkLoginError();
$(".button-collapse").sideNav();
$('.modal-trigger').leanModal();

function buildFooter() {
  document.getElementById('at-footer').innerHTML  = "<div id=\'at-login-modal\'></div> <footer class=\"page-footer grey lighten-3\">    <div class=\"container\">      <div class=\"row\">        <div class=\"col s12\">          <p class=\"grey-text text-darken-3\">Trabalho realizado para o Componente Curricular Planejamento e Gestão de Projetos pelos alunos: Alesom Zorzi, João Pedro Winckler Bernardi, Kétly Gonçalves Machado, Matheus Antonio Venancio Dall'Rosa e Vladimir Belinski. </p>        </div>      </div>    </div>    <div class=\"footer-copyright amber darken-3\">      <div class=\"container\">      © 2016 Todos os direitos reservados      </div>    </div>  </footer>";
}

function checkLoginError(){
  url = window.location.href.split('?');
  if(url.length == 2 && url[1] == "error=1"){
    $('#newlogin').openModal();
    $('.tooltipped').tooltip({position:'left',delay: 5000});
    Materialize.toast('Dados inválidos.', 500000);
  }
}

function buildMenu() {
  var li = document.getElementById('at-menu-li');
  if (li != null)
    li.innerHTML = "<a href=\"#\" class=\"brand-logo center\"><h5 class=\"grey-text text-lighten-5 logo_text\">Ask & Trust</h5></a>\
  <a href=\"#\" data-activates=\"mobile\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a>\
  <ul id=\"nav-mobile\" class=\"right hide-on-med-and-down\">\
    <li><a href=\"index\">Home</a></li>\
    <li><a href=\"perguntas\">Perguntas</a></li>\
    <li><a href=\"#newlogin\" class=\"modal-trigger\">Login</a></li>\
  </ul>\
  <ul class=\"side-nav\" id=\"mobile\">\
    <li><a href=\"index\">Home</a></li>\
    <li><a href=\"perguntas\">Perguntas</a></li>\
    <li><a href=\"#newlogin\" class=\"modal-trigger\">Login</a></li>\
  </ul>";

  var lo = document.getElementById('at-menu-lo');
  if (lo != null)
    lo.innerHTML = "<a href=\"#\" class=\"brand-logo center\"><h5 class=\"grey-text text-lighten-5 logo_text\">Ask & Trust</h5></a>\
  <a href=\"#\" data-activates=\"mobile\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a>\
  <ul id=\"nav-mobile\" class=\"right hide-on-med-and-down\">\
    <li><a href=\"index\">Home</a></li>\
    <li><a href=\"perguntas\">Perguntas</a></li>\
    <li><a href=\"http://localhost:8080/log_out\" class=\"modal-trigger\">Log out</a></li>\
  </ul>\
  <ul class=\"side-nav\" id=\"mobile\">\
    <li><a href=\"index\">Home</a></li>\
    <li><a href=\"perguntas\">Perguntas</a></li>\
    <li><a href=\"http://localhost:8080/log_out\" class=\"modal-trigger\">Log out</a></li>\
  </ul>";
}

function buildLogin() {
  document.getElementById('at-login-modal').innerHTML = "\
  <div id=\"newlogin\" class=\"modal\">\
    <div class=\"modal-content\">\
      <form action=\"auth\" method=\"POST\">\
        <div class=\"row\">\
          <div class=\"input-field col s12\">\
            <input id=\"username\" name=\"username\" type=\"text\" required=\"validate\">\
            <label for=\"username\">Email</label>\
          </div>\
          <div class=\"input-field col s12\">\
            <input id=\"password\" name=\"password\" type=\"password\" required=\"validate\">\
            <label for=\"password\">Senha</label>\
          </div>\
        </div>\
        <div class=\"row\">\
          <center>\
            <button class=\"btn waves-effect waves-light blue-grey darken-3 grey-text text-lighten-5\" type=\"submit\" name=\"action\">Login\
              <i class=\"material-icons right\">send</i>\
            </button>\
          </center>\
        </div>\
      </form>\
    </div>\
  </div>";
}
