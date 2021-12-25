<?php
   
   $con = mysqli_connect("localhost", "root", "", "dbms");

   if (!$con) {
     die(" Connection failed. Please try again: Error: " . mysqli_connect_error());
   }
   $usn =  $_REQUEST['usn'];
   $password = $_REQUEST['password'];
   $sname =  $_REQUEST['sname'];
   $pname = $_REQUEST['pname'];
   $courseid = $_REQUEST['courseid'];
   $catid = $_REQUEST['catid'];
   $status = $_REQUEST['status'];

   $sql = "INSERT INTO login  VALUES ('$usn', '$password');";
   $sql .= "INSERT INTO status  VALUES ('$usn', '$status');";
   $sql .= "INSERT INTO user_details VALUES ('$sname','$pname','$usn','$courseid','$catid')";


   if (mysqli_multi_query($con, $sql)) {
    echo "New records created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
  }
  
  mysqli_close($con);
  ?>
  
  