<?php
//return total number of ibank client
include('admin/conf/config.php');
$result = "SELECT count(*) FROM iB_clients";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($iBClients);
$stmt->fetch();
$stmt->close();

//return total number of iBank Staffs
$result = "SELECT count(*) FROM iB_staff";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($iBStaffs);
$stmt->fetch();
$stmt->close();

//return total number of iBank Account Types
$result = "SELECT count(*) FROM iB_ekub_types";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($iB_AccsType);
$stmt->fetch();
$stmt->close();

//return total number of iBank Accounts
$result = "SELECT count(*) FROM iB_EkubAccounts";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($iB_Accs);
$stmt->fetch();
$stmt->close();

//return total number of iBank Deposits
$result = "SELECT SUM(transaction_amt) FROM iB_Transactions WHERE  tr_type = 'Deposit' ";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($iB_deposits);
$stmt->fetch();
$stmt->close();

//return total number of iBank Withdrawals
$result = "SELECT SUM(transaction_amt) FROM iB_Transactions WHERE  tr_type = 'Withdrawal' ";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($iB_withdrawal);
$stmt->fetch();
$stmt->close();



//return total number of iBank Transfers
$result = "SELECT SUM(transaction_amt) FROM iB_Transactions WHERE  tr_type = 'Transfer' ";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($iB_Transfers);
$stmt->fetch();
$stmt->close();

//return total number of  iBank initial cash->balances
$result = "SELECT SUM(transaction_amt) FROM iB_Transactions ";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($acc_amt);
$stmt->fetch();
$stmt->close();
//Get the remaining money in the accounts
$TotalBalInAccount = ($iB_deposits)  - (($iB_withdrawal) + ($iB_Transfers));


//ibank money in the wallet
$result = "SELECT SUM(transaction_amt) FROM iB_Transactions ";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($new_amt);
$stmt->fetch();
$stmt->close();
//Withdrawal Computations

/*
$ret11 = "SELECT * FROM ib_systemsettings ";
$stmt11= $mysqli->prepare($ret11);
$stmt11->execute(); //ok
$res11= $stmt11->get_result();
$sys11 = $res11->fetch_object()) ;
 */
?>
  <?php //echo $sys->sys_name; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>
    <?ph //echo $sys->sys_name; ?>
    </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition">

  <!-- Content Wrapper. Contains page content -->
  <div class="content">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
 <div class="row mb-2">
   <div class="col-8">
     <h1 class="m-0">KFS  <?ph //echo $sys[`sys_name`]; ?></h1>
   </div><!-- /.col -->
  <div class="col-4 float-right">
          <div class="btn-group text-sm float-right BADGE-DANGER">

<a href="admin/pages_index.php" class="btn btn-info">Admin</a>
<a href="Staff/pages_staff_index.php" class="btn btn-info">Staff</a>
<a href="Client/pages_client_index.php" class="btn btn-info">Client</a>
<a class="btn btn-info" href="client/pages_client_signup.php" target="_blank">Join</a>

</div>
   </div><!-- /.col -->
   
 
 
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        

   
 <?php
//echo md5(123456);
$result = "SELECT count(*) FROM iB_clients";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($iBClients);
$stmt->fetch();
$stmt->close();
 ?>
        
                  
                  
                  
                  
                  
                  
                  


 
    <div class="row">
<div class="col -">
  <!-- USERS LIST -->
  <div class="card">
    <div class="card-header">
      <h3 class="card-title"> Members</h3>

      <div class="card-tools">
 <span class="badge badge-danger"><?php echo $iBClients; ?> Members</span>
 <button type="button" class="btn btn-tool" data-card-widget="collapse">
   <i class="fas fa-minus"></i>
 </button>
 <button type="button" class="btn btn-tool" data-card-widget="remove">
   <i class="fas fa-times"></i>
 </button>
      </div>
    </div>
    <!-- /.card-header -->
    <div class="card-body p-0">
      <ul class="users-list clearfix">
 <?php
$ret = "SELECT * FROM  iB_clients";
      $stmt = $mysqli->prepare($ret);
      $stmt->execute(); //ok
      $res = $stmt->get_result();
      $cnt = 1;
      
$date2 = date('Y-m-d');
      while ($row = $res->fetch_object()) {
$date1=date('Y-m-d', strtotime($row->created));
//Set the current date
$today = date('Y-m-d');

//Assign a date in 'Y-m-d' format
$futureDate = "2023-05-30";

//Calculate the date difference based on timestamp values
$difference = strtotime($today) - strtotime($date1);

//Calculate difference in days
$days = abs($difference/(60 * 60)/24);

//Print the date difference in days


      //  for($i=1;$i<10;$i++){
   echo '<li>
   <img width=75px hieght=128 src="admin/dist/img/'.$row->profile_pic.'" alt="User Image"  class="img-size-50 mr-3 img-circle">
   <a class="users-list-name" href="#">'.$row->name .'</a>
   <span class="users-list-date">'.$days  .' Days Ago</span>
 </li>
 ';
 }
 ?>
  
      </ul>
      <!-- /.users-list -->
    </div>
    <!-- /.card-body -->
    <div class="card-footer text-center">
      <a href="javascript:">View All clients</a>
    </div>
    <!-- /.card-footer -->
  </div>
  <!--/.card -->
</div>
 
</div>







   <section class="content">
 <div class="container-fluid">
   <!-- Info boxes -->
   <div class="row">

     <!-- ./ iBank Clients -->
     <div class="col-12 col-sm-6 col-md-3">
<div class="info-box">
  <span class="info-box-icon bg-info elevation-1"><i class="fas fa-users"></i></span>
  <div class="info-box-content">
    <span class="info-box-text">Clients</span>
    <span class="info-box-number">
      <?php echo $iBClients; ?>
    </span>
  </div>
</div>
     </div>
     <!-- ./ iBank Clients -->

     <!--iBank Staffs-->
     <div class="col-12 col-sm-6 col-md-3">
<div class="info-box mb-3">
  <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-user-tie"></i></span>

  <div class="info-box-content">
    <span class="info-box-text">Staffs</span>
    <span class="info-box-number">
      <?php echo $iBStaffs; ?>
    </span>
  </div>
</div>
     </div>
     <!-- ./ iBank Staffs-->

     <!-- fix for small devices only -->
     <div class="clearfix hidden-md-up"></div>

     <!--Ibank Acc types-->
     <div class="col-12 col-sm-6 col-md-3">
<div class="info-box mb-3">
  <span class="info-box-icon bg-success elevation-1"><i class="fas fa-briefcase"></i></span>
  <div class="info-box-content">
    <span class="info-box-text">Account Types</span>
    <span class="info-box-number"><?php echo $iB_AccsType; ?></span>
  </div>
</div>
     </div>
     <!-- /.iBank Acc types -->

     <!--iBank Accounts-->
     <div class="col-12 col-sm-6 col-md-3">
<div class="info-box mb-3">
  <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>
  <div class="info-box-content">
    <span class="info-box-text">Accounts</span>
    <span class="info-box-number"><?php echo $iB_Accs; ?></span>
  </div>
</div>
     </div>
     <!-- iBank Acc-->
   </div>

   <div class="row">
     <!--iBank Deposits -->
     <div class="col-12 col-sm-6 col-md-3">
<div class="info-box">
  <span class="info-box-icon bg-info elevation-1"><i class="fas fa-upload"></i></span>
  <div class="info-box-content">
    <span class="info-box-text">Deposits</span>
    <span class="info-box-number">
      ETB <?php echo $iB_deposits; ?>
    </span>
  </div>
</div>
     </div>
     <!----./ iBank Deposits-->

     <!--iBank Withdrwals-->
     <div class="col-12 col-sm-6 col-md-3">
<div class="info-box mb-3">
  <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-download"></i></span>

  <div class="info-box-content">
    <span class="info-box-text">Withdrawals</span>
    <span class="info-box-number">ETB <?php echo $iB_withdrawal; ?> </span>
  </div>
</div>
     </div>
     <!-- Withdrawals-->

     <!-- fix for small devices only -->
     <div class="clearfix hidden-md-up"></div>

     <!--Transfers-->
     <div class="col-12 col-sm-6 col-md-3">
<div class="info-box mb-3">
  <span class="info-box-icon bg-success elevation-1"><i class="fas fa-random"></i></span>
  <div class="info-box-content">
    <span class="info-box-text">Transfers</span>
    <span class="info-box-number">ETB <?php echo $iB_Transfers; ?></span>
  </div>
</div>
     </div>
     <!-- /.Transfers-->

     <!--Balances-->
     <div class="col-12 col-sm-6 col-md-3">
<div class="info-box mb-3">
  <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-money-bill-alt"></i></span>
  <div class="info-box-content">
    <span class="info-box-text">Wallet Balance</span>
    <span class="info-box-number">ETB <?php echo $TotalBalInAccount; ?></span>
  </div>
</div>
     </div>
     <!-- ./Balances-->
   </div>

   <div class="row">
     <div class="col-md-12">
<div class="card">
  <div class="card-header">
    <h5 class="card-title">Advanced Analytics</h5>
    <div class="card-tools">
      <button type="button" class="btn btn-tool" data-card-widget="collapse">
 <i class="fas fa-minus"></i>
      </button>
      <button type="button" class="btn btn-tool" data-card-widget="remove">
 <i class="fas fa-times"></i>
      </button>
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <div class="row">
      <div class="col-md-6">
 <div class="chart">
   <!-- Transaction Donought chart Canvas -->
   <div id="PieChart" class="col-md-6" style="height: 400px; max-width: 500px; margin: 0px auto;"></div>
 </div>
 <!-- /.chart-responsive -->
      </div>
      <hr>
      <div class="col-md-6">
 <div class="chart">
   <div id="AccountsPerAccountCategories" class="col-md-6" style="height: 400px; max-width: 500px; margin: 0px auto;"></div>
 </div>
 <!-- /.chart-responsive -->
      </div>

      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div>
  <!-- ./card-body -->
  <div class="card-footer">
    <div class="row">
      <div class="col-sm-3 col-6">
 <div class="description-block border-right">
   <h5 class="description-header">ETB <?php echo $iB_deposits; ?></h5>
   <span class="description-text">TOTAL DEPOSITS</span>
 </div>
 <!-- /.description-block -->
      </div>
      <!-- /.col -->
      <div class="col-sm-3 col-6">
 <div class="description-block border-right">
   <h5 class="description-header">ETB <?php echo $iB_withdrawal; ?></h5>
   <span class="description-text">TOTAL WITHDRAWALS</span>
 </div>
 <!-- /.description-block -->
      </div>
      <!-- /.col -->
      <div class="col-sm-3 col-6">
 <div class="description-block border-right">
   <h5 class="description-header">ETB <?php echo $iB_Transfers; ?> </h5>
   <span class="description-text">TOTAL TRANSFERS</span>
 </div>
 <!-- /.description-block -->
      </div>
      <!-- /.col -->
      <div class="col-sm-3 col-6">
 <div class="description-block">
   <h5 class="description-header">ETB <?php echo $TotalBalInAccount; ?> </h5>
   <span class="description-text">TOTAL MONEY IN Account</span>
 </div>
 <!-- /.description-block -->
      </div>
    </div>
    <!-- /.row -->
  </div>
  <!-- /.card-footer -->
</div>
<!-- /.card -->
     </div>
     <!-- /.col -->
   </div>
   <!-- /.row -->

   <!-- Main row -->
   <div class="row">
     <!-- Left col -->
     <div class="col-md-12">
<!-- TABLE: Transactions -->
<div class="card">
  <div class="card-header border-transparent">
    <h3 class="card-title">Latest Transactions</h3>

    <div class="card-tools">
      <button type="button" class="btn btn-tool" data-card-widget="collapse">
 <i class="fas fa-minus"></i>
      </button>
      <button type="button" class="btn btn-tool" data-card-widget="remove">
 <i class="fas fa-times"></i>
      </button>
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body p-0">
    <div   class="table-responsive text-sm">
      <table id="example1"  class="table m-0">
 <thead>
   <tr class="text-sm">
     <th>NO</th>
     <th>Acc NO</th>
     <th>Type</th>
     <th>Amount</th>
     <th>AccOwner</th>
     <th>Time</th>
   </tr>
 </thead>
 <tbody>
   <?php
   //Get latest transactions 
   $ret = "SELECT * FROM `iB_Transactions` ORDER BY `iB_Transactions`.`created_at` DESC ";
   $stmt = $mysqli->prepare($ret);
   $stmt->execute(); //ok
   $res = $stmt->get_result();
   $cnt = 1;
   while ($row = $res->fetch_object()) {
	   IF($cnt>15){
		   BREAK;
	   }
		   
     /* Trim Transaction Timestamp to 
*  User Uderstandable Formart  DD-MM-YYYY :
*/
     $transTstamp = $row->created_at;
     //Perfom some lil magic here
     if ($row->tr_type == 'Deposit') {
$alertClass = "<span class='badge badge-success'>$row->tr_type</span>";
     } elseif ($row->tr_type == 'Withdrawal') {
$alertClass = "<span class='badge badge-danger'>$row->tr_type</span>";
     } else {
$alertClass = "<span class='badge badge-warning'>$row->tr_type</span>";
     }
   ?>
     <tr>
<td><?php echo $cnt; ?></a></td>
<td><?php echo $row->account_number; ?></td>
<td><?php echo $alertClass; ?></td>
<td>ETB <?php echo $row->transaction_amt; ?></td>
<td><?php echo $row->client_name; ?></td>
<td><?php echo date("d-M-Y h:m:s ", strtotime($transTstamp)); ?></td>
     </tr>

   <?php $cnt++; } ?>

 </tbody>
      </table>
    </div>
    <!-- /.table-responsive -->
  </div>
  <!-- /.card-body -->
  <div class="card-footer clearfix">
    <a href="pages_transactions_engine.php" class="btn btn-sm btn-info float-left">View All</a>
  </div>
  <!-- /.card-footer -->
</div>
<!-- /.card -->
     </div>
     <!-- /.col -->
   </div>
   <!-- /.row -->
 </div>
 <!--/. container-fluid -->
      </section>





 


   <!-- /.col -->
 </div>
 <!-- /.row -->
      </div><!--/. container-fluid>
  <!-- /.content-wrapper -->

</div>
  <!-- Main Footer -->


<?php include("include/foot.php"); ?>
  <!-- jQuery Mapael -->
  <script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
  <script src="plugins/raphael/raphael.min.js"></script>
  <script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
  <script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
  <!-- ChartJS --><!-- DataTables -->
  <script src="plugins/datatables/jquery.dataTables.js"></script>
  <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
  <!-- AdminLTE App -->
  <script src="plugins/chart.js/Chart.min.js"></script>

  <!-- PAGE SCRIPTS -->
  <script src="dist/js/pages/dashboard2.js"></script>

  <!--Load Canvas JS -->
  <script src="plugins/canvasjs.min.js"></script>
  <!--Load Few Charts-->
  <script>
    window.onload = function() {

      var Piechart = new CanvasJS.Chart("PieChart", {
 exportEnabled: false,
 animationEnabled: true,
 title: {
   text: "Accounts Per Acc Types "
 },
 legend: {
   cursor: "pointer",
   itemclick: explodePie
 },
 data: [{
   type: "pie",
   showInLegend: true,
   toolTipContent: "{name}: <strong>{y}%</strong>",
   indexLabel: "{name} - {y}%",
   dataPoints: [{
y: <?php
    //return total number of accounts opened under savings acc type
    $result = "SELECT count(*) FROM iB_EkubAccounts WHERE  acc_type =32 ";
    $stmt = $mysqli->prepare($result);
    $stmt->execute();
    $stmt->bind_result($savings);
    $stmt->fetch();
    $stmt->close();
    echo $savings;
    ?>,
name: "የቀን ባለ 100",
exploded: true
     },

     {
y: <?php
    //return total number of accounts opened under  Retirement  acc type
    $result = "SELECT count(*) FROM iB_EkubAccounts WHERE  acc_type =33";
    $stmt = $mysqli->prepare($result);
    $stmt->execute();
    $stmt->bind_result($Retirement);
    $stmt->fetch();
    $stmt->close();
    echo $Retirement;
    ?>,
name: "የቀን ባለ 200",
exploded: true
     },

     {
y: <?php
    //return total number of accounts opened under  Recurring deposit  acc type
    $result = "SELECT count(*) FROM iB_EkubAccounts WHERE  acc_type =34";
    $stmt = $mysqli->prepare($result);
    $stmt->execute();
    $stmt->bind_result($Recurring);
    $stmt->fetch();
    $stmt->close();
    echo $Recurring;
    ?>,
name: "የቀን ባለ 400",
exploded: true
     },

     {
y: <?php
    //return total number of accounts opened under  Fixed Deposit Account deposit  acc type
    $result = "SELECT count(*) FROM iB_EkubAccounts WHERE  acc_type =35 ";
    $stmt = $mysqli->prepare($result);
    $stmt->execute();
    $stmt->bind_result($Fixed);
    $stmt->fetch();
    $stmt->close();
    echo $Fixed;
    ?>,
name: "የቀን ባለ 500",
exploded: true
     },
   ]
 }]
      });

      var AccChart = new CanvasJS.Chart("AccountsPerAccountCategories", {
 exportEnabled: false,
 animationEnabled: true,
 title: {
   text: "Transactions"
 },
 legend: {
   cursor: "pointer",
   itemclick: explodePie
 },
 data: [{
   type: "pie",
   showInLegend: true,
   toolTipContent: "{name}: <strong>{y}%</strong>",
   indexLabel: "{name} - {y}%",
   dataPoints: [{
y: <?php
    //return total number of transactions under  Withdrawals
    $result = "SELECT count(*) FROM iB_Transactions WHERE  tr_type ='Withdrawal' ";
    $stmt = $mysqli->prepare($result);
    $stmt->execute();
    $stmt->bind_result($Withdrawals);
    $stmt->fetch();
    $stmt->close();
    echo $Withdrawals;
    ?>,
name: "Withdrawals",
exploded: true
     },

     {
y: <?php
    //return total number of transactions under  Deposits
    $result = "SELECT count(*) FROM iB_Transactions WHERE  tr_type ='Deposit' ";
    $stmt = $mysqli->prepare($result);
    $stmt->execute();
    $stmt->bind_result($Deposits);
    $stmt->fetch();
    $stmt->close();
    echo $Deposits;
    ?>,
name: "Deposits",
exploded: true
     },

     {
y: <?php
    //return total number of transactions under  Deposits
    $result = "SELECT count(*) FROM iB_Transactions WHERE  tr_type ='Transfer' ";
    $stmt = $mysqli->prepare($result);
    $stmt->execute();
    $stmt->bind_result($Transfers);
    $stmt->fetch();
    $stmt->close();
    echo $Transfers;
    ?>,
name: "Transfers",
exploded: true
     }

   ]
 }]
      });
      Piechart.render();
      AccChart.render();
    }

    function explodePie(e) {
      if (typeof(e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
 e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
      } else {
 e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
      }
      e.chart.render();

    }
  </script>

  <script>
    $(function() {
      $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
      });
    });
  </script>
    <!-- Data Tables V2.01 -->
  <!-- NOTE TO Use Copy CSV Excel PDF Print Options You Must Include These Files  -->
  <script src="plugins/datatable/button-ext/dataTables.buttons.min.js"></script>
  <script src="plugins/datatable/button-ext/jszip.min.js"></script>
  <script src="plugins/datatable/button-ext/buttons.html5.min.js"></script>
  <script src="plugins/datatable/button-ext/buttons.print.min.js"></script>
  <script>
    $('#export').DataTable({
      dom: '<"row"<"col-md-12"<"row"<"col-md-6"B><"col-md-6"f> > ><"col-md-12"rt> <"col-md-12"<"row"<"col-md-5"i><"col-md-7"p>>> >',
      buttons: {
        buttons: [{
            extend: 'copy',
            className: 'btn'
          },
          {
            extend: 'csv',
            className: 'btn'
          },
          {
            extend: 'excel',
            className: 'btn'
          },
          {
            extend: 'print',
            className: 'btn'
          }
        ]
      },
      "oLanguage": {
        "oPaginate": {
          "sPrevious": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>',
          "sNext": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>'
        },
        "sInfo": "Showing page _PAGE_ of _PAGES_",
        "sSearch": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>',
        "sSearchPlaceholder": "Search...",
        "sLengthMenu": "Results :  _MENU_",
      },
      "stripeClasses": [],
      "lengthMenu": [7, 10, 20, 50],
      "pageLength": 7
    });
  </script>