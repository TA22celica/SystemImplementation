<!DOCTYPE html>
<html>
<head>
  <title>Guitar Shop</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>

  <div id="main">

    <!-- header - start-->
    <div style="float:left; width: 650px;">
      <a href="index.php"><img src="http://localhost/SystemImplementation/Photos/indiana_university_logo.png" alt="" width="300px" border-radius: "11px";/></a>
      <p>Welcome to IU Guitar Shop!</p>

    </div>
    
    <div style="clear:both"></div>
    <hr>
    <?php

    if (!empty($_SESSION["user"])) {
      echo "<b>".$_SESSION["user"]["fullname"]."</b>" ;

      if (isAdmin()) {
        echo " | <a href='./admin/index.php'>Admin Panel</a>" ;
      }
      echo " | <a href='shoppingcart.php'>View Cart</a>" ;
      echo " | <a href='info.php'>Profile Information</a>" ;
      echo " | <a href='preorders.php'>Orders</a>" ;
      echo " | <a href='logout.php'>Logout</a>" ;
    }
    else{
      echo "<a href='addUser.php'>Register</a>" ;
      echo " | <a href='login.php'>Login</a>" ;
    }

    ?>
    <br>
    <hr>
    <!-- header - end-->
