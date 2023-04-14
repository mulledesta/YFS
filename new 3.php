<nav class="main-header navbar navbar-expand navbar-info
 navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
        <li class="nav-item">
    
        <div class="navbar-search-block">
          <form method ="GET" action ="pages_manage_ekub_openings.php" class="form-inline">
            <div class="input-group input-group-sm">
              <input name="search" class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
         
              </div>
            </div>
          </form>
        </div>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
		     <?php
        //code for summing up notifications
        $result = "SELECT count(*) FROM iB_notifications";
        $stmt = $mysqli->prepare($result);
        $stmt->execute();
        $stmt->bind_result($ntf);
        $stmt->fetch();
        $stmt->close();
        ?>
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <p class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge"><?php echo $ntf;?></span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
  <?php
        //code for summing up 
          $ret = "SELECT * FROM  iB_notifications ORDER BY created_at DESC ";
          $stmt = $mysqli->prepare($ret);
          $stmt->execute(); //ok
          $res = $stmt->get_result();
          $cnt = 1;
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
      $profile_picture = "<img src='dist/img/user_icon.png' width=30 class='img-circle elevation-2' alt='User Image'>";
    } else {
      $profile_picture = "<img src='dist/img/$pp' width=30 class='img-circle elevation-2' alt='User Image'>";
    }
  
    //set automatically logged in user default image if they have not updated their pics


            //Tim timestamp to DD-MM-YYY : HH:MM🧂 
            $notification_time = date('D  d-m-Y',strtotime($row->created_at));

          ?>
            <!-- Message Start -->
            <div class="media">
<?php echo $profile_picture; ?>
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  <?php echo $row->user; ?> 
               
                </h3>
                <p class="text-sm">
                  <font size=1.5>
				<?php echo $row->notification_details; ?>
				</font>
				</p>
<small class="badge badge-xs badge-warning text-sm text-muted"><i class="far fa-clock "></i>
<font size=1.5>
<?php echo $notification_time;?>
	</font>
</small>

              </div>
            </div>
			<a href="pages_dashboard.php?Clear_Notifications=
			<?php echo $row->notification_id; ?>
			" class="badge float-right badge-sm text-sm badge-danger">Clear</a>
  <?php  if($cnt>4){ break; }$cnt++; } ?>
			
			
            <!-- Message End -->
          </p>
          
      
          <a href="timeline.php" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
               <?php
               $qry2= $conn->query("SELECT * FROM `announcements` order by unix_timestamp(date_created) desc");
               $i=0;
while($row2 = $qry2->fetch_assoc()){
  $i++;
}
?>
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">            <?php echo $i; ?> </span>
        </a>
        


        
        <div class="dropdown-menu text-Purple  dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">
            <?php echo $i; ?> ማስታወቂያዎች 
          </span>
 
       <?php       
               $qry= $conn->query("SELECT * FROM `announcements` order by unix_timestamp(date_created) desc");
$date3=date('d-m-Y');


//Calculate difference in days

       while($row = $qry->fetch_assoc()):
         
     $from=intval($row['from']);
$to=intval($row['to']);

$ret31= "SELECT * FROM  iB_clients where client_id=$from ";
                    $stmt31= $mysqli->prepare($ret31);
                    $stmt31->execute(); //ok
                    $res31 = $stmt31->get_result();
                    $cnt = 1;
                    while ($row31 = $res31->fetch_object()) {
  $fromname=$row31->name;
                    }
                    
$ret313= "SELECT * FROM  iB_clients where client_id=$to ";
                    $stmt313= $mysqli->prepare($ret313);
                    $stmt313->execute(); //ok
                    $res313 = $stmt313->get_result();
                    $cnt = 1;
                    while ($row313 = $res313->fetch_object()) {
  $toname=$row313->name;
                    }
$date4=date('d-m-Y',strtotime($row['date_created']));
$difference = strtotime($date3) - strtotime($date4);
$days = abs($difference/(60 * 60)/24);
                    $row['announcement'] = strip_tags(stripslashes(html_entity_decode($row['announcement'])))
//
//$ddif=date_diff($date4,$date3);

                ?>
               <div class="callout callout-lg callout-danger">
<span class="tsxt-left badge-Purple text-sm">
  <font size=2>ለ: <?php echo $toname; ?> 
  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;
  ከ: <?php echo $fromname; ?> </font></span>
<p>
  <a href="announcements.php?id=<?php echo $row['id'] ?>" class="dropdown-item badge badge-pink text-sm"> <?php echo $row['title'] ?>!
<span class="float-right text-muted text-sm">
  <font size=1.5><?php echo $days; ?> days ago</font></span>
 </a></p>   


<span class="float-left text-danger text-md">
    <a href="announcements.php?id=<?php echo $row['id'] ?>" class="dropdown-item badge text-primary text-">  <i class="fas fa-eye fa-arrows-alt"></i>
<font size=1.5>  MARK AS READ </font>
    </a></span>
  
<span class="btn float-right text-danger btn-xs">
   <a href="pages_dashboard.php?Clear_announ=<?php echo $row['id'] ?>" class="dropdown-item badge text-pink text-sm">
  <i class="fas fa-trash fa-arrows-alt"></i>
<font size=1.5> DELETE </font></a>
 </span>
          <div class="dropdown-divider"></div>
                

         
      
   
                </div>
          
            <?php //echo $row['announcement'] ?>
          
      <?php endwhile; ?>
          
   
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>