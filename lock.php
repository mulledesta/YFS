<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Lockscreen</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition lockscreen">
<!-- Automatic element centering -->
<div class="lockscreen-wrapper">
  <div class="lockscreen-logo">
    <a href="index2.html"><b>King</b>Finances</a>
  </div>
 
<div id="SR">A</div>
 <!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
     <div class="input-group input-group-lg">
                  <input type="text" name="live" id="live" class="form-control">
                  <span class="input-group-append btn btn-info btn-lg">
                      <i ID="i" class="fa fa-search "></i>
                
                  </span>
                </div>


  </div>

  <script type="text/javascript">
    $(document).ready(function(){
        $("#live").keyup(function(){
          var input =$(this).val();
         // alert(input);
         if (input != "") {
                 $.ajax({
                  url:"livesearch.php",
                  method:"POST",
                  data:{input:input},

                  success:function(data){
                    //alert(input);
                    $("$SR").html(data);
                                         }
                        });
           }
           else{
               $("$SR").css("display:none");
           }
        });
    });
   
  </script>

<!-- /.center -->


<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
