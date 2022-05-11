<?php

session_start() ;
function isAdmin() {
  return $_SESSION["user"]["role"] == 2 ;
}

if (!isAdmin()) {
  header("Location: forbidden.php") ;
}

require_once 'header.php';
require_once '../db.php';

?>
<!-- main-->
<h2>Dashboard</h2>

<div class="cardmain">
  
  <div class="card" style="float:left; margin:10px;">
    <h3>No of Products</h3>      
    <h1>
      <?php
      $count=0;
      $sql = "select * from product";
      $stmt = $db->query($sql);
      $count = $stmt->rowCount();
      echo $count;
      ?>
    </h1>
  </div>
  
  <div class="card" style="float:left; margin:10px;">
    <h3>No of Customers</h3>      
    <h1>
      <?php
      $count=0;
      $sql = "select * from users where role = 0";
      $stmt = $db->query($sql);
      $count = $stmt->rowCount();
        echo $count;
      ?>
    </h1>
  </div>

  <div class="card" style="float:left; margin:10px;">
    <h3>No of Sales</h3>      
    <h1>
      <?php
      $count=0;
      $sql = "select * from orders";
      $stmt = $db->query($sql);
      $count = $stmt->rowCount();
      echo $count;
      ?>
    </h1>
  </div>
  
  <div class="card" style="float:left; margin:10px;">
    <h3>No of Feedback</h3>      
    <h1>
      <?php
      $count=0;
      $sql = "select * from comment";
      $stmt = $db->query($sql);
      $count = $stmt->rowCount();
      echo $count;
      ?>
    </h1>
  </div>

  <div class="card" style="float:left; margin:10px;">
    <h3>No of Ratings</h3>      
    <h1>
      <?php
      $count=0;
      $sql = "select * from rating";
      $stmt = $db->query($sql);
      $count = $stmt->rowCount();
      echo $count;
      ?>
    </h1>
  </div>
</div>
<!-- main -->
<br><br>

<?php

require_once 'footer.php';

?>

</html>
