<?php
session_start();
include('admin/conf/config.php');
include('admin/conf/checklogin.php');
check_login();
$admin_id = $_SESSION['admin_id'];

//clear notifications and alert user that they are cleared
if (isset($_GET['Clear_Notifications'])) {
  $id = intval($_GET['Clear_Notifications']);
  $adn = "DELETE FROM  iB_notifications  WHERE notification_id = ?";
  $stmt = $mysqli->prepare($adn);
  $stmt->bind_param('i', $id);
  $stmt->execute();
  $stmt->close();

  if ($stmt) {
    $info = "Notifications Cleared";
  } else {
    $err = "Try Again Later";
  }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<?php include("admin/dist/_partials/head.php"); ?>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- AdminLTE css -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
    <?php include("admin/dist/_partials/nav.php"); ?>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <?php include("admin/dist/_partials/sidebar.php"); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Timeline</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Timeline</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
  <?php
        //code for summing up 
          $ret = "SELECT * FROM  iB_notifications ORDER BY created_at DESC ";
          $stmt = $mysqli->prepare($ret);
          $stmt->execute(); //ok
          $res = $stmt->get_result();
          $cnt = 1;
          ?>

        <!-- Timelime example  -->
        <div class="row">
<?php
          while ($row = $res->fetch_object()) {
			  $admin_id2 =$row->user;
  $ret11 = "SELECT * FROM  iB_clients  WHERE name = ? ";
  $stmt11 = $mysqli->prepare($ret11);
  $stmt11->bind_param('s', $admin_id2);
  $stmt11->execute(); //ok
  $res11 = $stmt11->get_result();
  $row11 = $res11->fetch_object();
  $pp=$row11->profile_pic;
   $profile_picture;
      if (  $pp == '') {
      $profile_picture = "<img src='admin/dist/img/user_icon.png' width=50 class='img-circle elevation-2' alt='User Image'>";
    } else {
      $profile_picture = "<img src='admin/dist/img/$pp' width=48 class='img-circle elevation-2' alt='User Image'>";
    }
  
    //set automatically logged in user default image if they have not updated their pics

$notification_time2 = date('h:i:s',strtotime($row->created_at));
            //Tim timestamp to DD-MM-YYY : HH:MM🧂 
            $notification_time = date('D  d-m-Y',strtotime($row->created_at));

          ?>
          <div class="col-md-12">
            <!-- The time line -->
            <div class="timeline">
              <!-- timeline time label -->
              <div class="time-label">
                <span class="bg-red">     
                <?php echo $notification_time; ?>
                </span>
              </div>
              <!-- /.timeline-label -->
              <!-- timeline item -->
              <div>
<?php echo $profile_picture; ?>
                <div class="timeline-item">
                  <span class="time"><i class="fas fa-clock"></i> <?php echo $notification_time2; ?></span>
                  <h3 class="timeline-header"><a href="#"><?php echo $row->user; ?>
                  </a> <?php echo $row->Type; ?></h3>

                  <div class="timeline-body">
<?php echo $row->notification_details; ?></div>
                  <div class="timeline-footer">
                    <a class="btn btn-primary btn-sm">Read more</a>
                    <a class="btn btn-danger btn-sm">Delete</a>
                  </div>
                </div>
              </div>
  
              <div>
      
              </div>
              <!-- END timeline item -->
              <!-- timeline item -->
              <div>
                
              </div>
    
            </div>
          </div>
          <?php } ?>
          <!-- /.col -->
        </div>
      </div>
      <!-- /.timeline -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

   <?php include("admin/dist/_partials/footer.php"); ?>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
