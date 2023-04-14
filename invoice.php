<?php
//include "../config/connect.php";
include('admin/conf/config.php');
/* Persisit System Settings On Brand */
$ret = "SELECT * FROM `iB_SystemSettings` ";
$stmt = $mysqli->prepare($ret);
$stmt->execute(); //ok
$res = $stmt->get_result();
$auth = $res->fetch_object();
$stmt->close();
$id=0;
$total=0;
if(isset($_GET['id'])){
$id=intval($_GET['id']);
}
else{
$id=17;
}
$date=date("D d-m-Y");

//return total number of ibank clients
$result = "SELECT sum(transaction_amt) FROM iB_Transactions WHERE client_id=$id And tr_type = 'Deposit'";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($DepositAmount);
$stmt->fetch();
$stmt->close();

$result = "SELECT sum(transaction_amt) FROM iB_Transactions WHERE client_id=$id And tr_type = 'Withdraw'";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($WithdrawAmount);
$stmt->fetch();
$stmt->close();

$result = "SELECT sum(transaction_amt) FROM iB_Transactions WHERE client_id=$id And tr_type = 'Transfer'";
$stmt = $mysqli->prepare($result);
$stmt->execute();
$stmt->bind_result($TransferAmount);
$stmt->fetch();
$stmt->close();

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
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body>
<div class="wrapper">
  <!-- Main content -->
  <section class="invoice">
    <!-- title row -->
    <div class="row">
      <div class="col-12">
        <h2 class="page-header text-center">
<img src="admin/dist/img/<?php echo $auth->sys_logo; ?>" alt=" Logo" width=50 class="brand-image img-circle elevation-3" style="opacity: .8">

 <?php echo $auth->sys_name; ?>
          <small class="float-right">Date: <?php echo $date; ?></small>
        </h2>
      </div>
      <!-- /.col -->
    </div>
    <!-- info row -->
    <div class="row invoice-info">

      <!-- /.col -->
      <div class="col-sm-1 invoice-col"></div>
	  
	   <div class="col-sm-6 invoice-col">
        
      
        
        <address>
               <?php
                    $ret7 = "SELECT * FROM  iB_clients where client_id=$id";
                    $stmt7 = $mysqli->prepare($ret7);
                    $stmt7->execute(); //ok
                    $res7= $stmt7->get_result();
                    $cnt7 = 1;
                  $row7 = $res7->fetch_object();

                    ?>
          TO: <strong><?php echo $row7->name; ?></strong><br>
<?php echo $row7->address; ?>, Ethiopia<br>
          Phone: <?php echo $row7->phone; ?><br>
          Email: <?php echo $row7->email; ?>
          <?php  ?>
        </address>
      </div>
      <!-- /.col -->
	  <?php
                        //PHP function to generate random account number
$length = 10;
$_transcode =  substr(str_shuffle('0123456789'), 1, $length);
$_transcode2 =  substr(str_shuffle('0123456789'), 1, 5);
      
	  ?>
      <div class="col-sm-4 invoice-col">
        <b>Invoice #<?php echo $_transcode; ?></b><br>
        <br>
        <b>Order ID:</b> <?php echo $_transcode2; ?><br>
        <b>Payment Due:</b> <?php echo $date; ?><br>
        <b>Account:</b> <?php echo $row7->client_number; ?>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Table row -->
    <div class="row">
      <div class="col-12 table-responsive">
        <table class="table table-striped">
          <thead>
          <tr>
            <th>ID</th>
            <th>ClientID</th>
            <th>Code</th>
            <th>Type</th>
           <th>Amount</th>
            <th>Date</th>
          </tr>
          </thead>
          <tbody>
       
               <?php
                    $ret78 = "SELECT * FROM  iB_Transactions where client_id=$id";
                    $stmt78 = $mysqli->prepare($ret78);
                    $stmt78->execute(); //ok
                    $res78= $stmt78->get_result();
                    $cnt78= 1;
                    while ($row78= $res78->fetch_object()) {
$transTstamp = $row78->created_at;
       ?>
   <tr>
       <td> <?php echo $row78->tr_id; ?></td>
            <td><?php echo $row78->client_id; ?></td>
            <td><?php echo $row78->tr_code; ?></td>
<td><?php echo $row78->tr_type; ?></td>
            <td><?php echo $row78->transaction_amt; ?></td>
            <td><font size=2><?php echo date("d-m-Y", strtotime($transTstamp)); ?></font></td>
   </tr>
<?php 
$cnt78++;
} ?>
       
          </tbody>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <div class="row">
 <div class="col-2"></div>
      <!-- /.col -->
      <div class="col-8">
        <p class="lead"><?php echo $date; ?></p>

        <div class="table-responsive">
          <table class="table">
            <tr>
              <th style="width:50%">Subtotal:</th>
              <td><?php echo number_format($DepositAmount+$WithdrawAmount+$TransferAmount,2);?></td>
            </tr>
            <tr>
              <th>Deposit:</th>
              <td><?php  echo $DepositAmount;  ?></td>
            </tr>
            <tr>
              <th>Withdraw:</th>
              <td><?php  echo intval($WithdrawAmount);  ?></td>
            </tr>
			    <tr>
              <th>Transfer:</th>
              <td><?php  echo intval($TransferAmount);  ?></td>
            </tr>
            <tr>
              <th>Total:</th>
              <td><?php echo number_format($DepositAmount-$WithdrawAmount-$TransferAmount,2);?></td>
            </tr>
          </table>
        </div>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- ./wrapper -->
<!-- Page specific script -->
<script>
  window.addEventListener("load", window.print());
</script>
</body>
</html>
