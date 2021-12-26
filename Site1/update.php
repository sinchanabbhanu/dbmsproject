<?php
   
   $con = mysqli_connect("localhost", "root", "", "dbms");

   if (!$con) {
     die(" Connection failed. Please try again: Error: " . mysqli_connect_error());
   }

   $usn =  $_REQUEST['usn'];

   $sql= "UPDATE status SET paidstatus = 'paid' WHERE usn = '$usn';";

   if (mysqli_query($con, $sql)) {
    header('Location: updatesucc.html');
  }
   else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
  }
  
  mysqli_close($con);
  ?>