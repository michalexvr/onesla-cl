<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="../../favicon.ico">-->

    <title>Coming soon</title>

    <!-- Bootstrap core CSS -->
    <link href="{{url('/assets/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="{{url('/assets/css/ie10-viewport-bug-workaround.css')}}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="{{url('/css/cover.css')}}" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="{{url('/assets/js/ie-emulation-modes-warning.js')}}"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .ovall{
           background-color: #009999;
           padding-top: 10px;
           padding-bottom: 10px;
           display: none;
        }
    </style>
  </head>

  <body>
      <div class="ovall">
          <b>Gracias!</b>, has quedado suscrito a nuestra lista, te estaremos informando el lanzamiento y novedades!.
      </div>
    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <!--<h3 class="masthead-brand">OneSLA.com</h3>-->
              <!--
              <nav>
                <ul class="nav masthead-nav">
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="#">Features</a></li>
                  <li><a href="#">Contact</a></li>
                </ul>
              </nav>
              -->
            </div>
          </div>

          <div class="inner cover">
            <h1 class="cover-heading"><b>OneSLA.com</b></h1>
            <p class="lead">Estamos trabajando en algo sorprendente, prontamente novedades!</p>
            <p class="lead">
                <form action="#" id="elform" method="POST">
                {{csrf_field()}}                
                    <div class="input-group col-lg-6" style="margin: auto;">
                        <input type="text" class="form-control" name="mail" id="mail" aria-label="..." placeholder="Ingresa tu email"  style="background-color: #229954; border: solid 1px #abb2b9; color:#FFF;">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-default" aria-label="Help" id="send"  style="background-color: #229954; border: solid 1px #abb2b9; color: #FFF;">
                                Suscríbete
                            </button>
                        </div>
                    </div>
               </form>
            </p>
          </div>
          <div class="mastfoot">
            <div class="inner" id="footer">
              <!--<p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
            </div>
          </div>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="{{ url('/assets/js/vendor/jquery.min.js') }}"><\/script>')</script>
    <script src="{{url('/assets/bootstrap/js/bootstrap.min.js')}}"></script>
    
    <script>
     $("#send").click(function(){
         $.post("{{ url('post') }}",$("#elform").serialize(), function(result){
             $(".ovall").show();
             $(".ovall").html("<b>Mensaje: </b>"+result);
         });
     });
    </script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="{{url('/assets/js/ie10-viewport-bug-workaround.js')}}"></script>
  </body>
</html>