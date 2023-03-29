<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>My First Bootstrap Page</h1>
  <p>Resize this responsive page to see the effect!</p> 
  <a href="{{ url('/data' ) }}" class="btn btn-secondary ml-2" title="Kembali">
      Kembali
  </a>
</div>
  
<div class="container">
  <div class="row">
    <div class="col-md-8">
      {!! $datas->description !!}
    </div>
  </div>
</div>

<script type="text/javascript">
  $(document).ready(function(){

      function getId(url) {
          var regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
          var match = url.match(regExp);

          if (match && match[2].length == 11) {
              return match[2];
          } else {
              return 'error';
          }
      }

      var countOembed = $("oembed");
      var countFigure = $("figure");
      var countLength = $(countOembed).length;
      
      for (let i = 0; i < countLength; i++) {
        var myId = getId($(countOembed[i]).attr("url"));
        $(countFigure[i]).append('<iframe width="560" height="315" src="//www.youtube.com/embed/' + myId + '" frameborder="0" allowfullscreen></iframe>')
      }
  });


</script>

</body>
</html>
