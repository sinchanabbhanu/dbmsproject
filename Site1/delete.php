<?php
   
   $con = mysqli_connect("localhost", "root", "", "dbms");

   if (!$con) {
     die(" Connection failed. Please try again: Error: " . mysqli_connect_error());
   }

   $usn =  $_REQUEST['usn'];

  

           $sql = array("login","status","user_details");
           foreach($sql as $table) {
           $query = "DELETE FROM $table WHERE usn = '$usn'";
           mysqli_query($con,$query);
          }

   if (mysqli_query($con, $query)) {
    header('Location: deletesucc.html');
  }
   else {
    echo "Error: " . $query . "<br>" . mysqli_error($con);
  }
  
  mysqli_close($con);
  ?>