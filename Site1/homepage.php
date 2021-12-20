<?php 
session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">




</head>
<body>
    <section>
        <div class="section-1">
            <p>the header</p>
        </div>
    </section>
    <section>
        <table>
        <div class="student-details">
        <table class="table table-hover table-dark">
        <thread>
            <tr>
                 <th scope="col">Student Name</th>
                 <th scope="col">Parent Name</th>
                 <th scope="col">Register Number</th>
                 <th scope="col">Course</th>
                 <th scope="col">Category</th>
            </tr>
        </thread>
    <?php
   
     $con = mysqli_connect("localhost", "root", "", "dbms");

     if (!$con) {
         die(" Connection failed. Please try again: Error: " . mysqli_connect_error());
     }
     $name = $_SESSION['username'];
             $sql = "SELECT sname,pname,usn,cname,catname 
                    FROM user_details U, course C, category CAT
                     WHERE U.catid=CAT.catid and C.courseid = CAT.courseid and U.courseid=C.courseid and U.usn='$name';";

    $result = mysqli_query($con, $sql);
    while($row=mysqli_fetch_assoc($result))
    {
        ?>
        <tbody>
            <tr> 
           
           <td scope="row"><?php echo $row['sname']?></td>
           <td><?php echo $row['pname']?></td>
           <td><?php echo $row['usn']?></td>
           <td><?php echo $row['cname']?></td>
           <td><?php echo $row['catname']?></td>
      </tr>
    </tbody>
       
        
    <?php
            
    }
     
   ?>
        </div>
    </section>
    <section class="section-2">
        <div class="fee-details">
        <table class="table table-hover table-dark">
            <thread>
                <tr>
                   <th scope="col">Tuition Fees</th>
                   <th scope="col">Subscription</th>
                   <th scope="col">Exam Fees</th>
                   <th scope="col">Other Fees</th>
                   <th scope="col">Total</th>
                   </tr>
            </thread>
     <?php
   
     $con = mysqli_connect("localhost", "root", "", "dbms");

     if (!$con) {
         die(" Connection failed. Please try again: Error: " . mysqli_connect_error());
     }
  
     $name = $_SESSION['username'];
  
     $sql = "SELECT tfees,subs,efees,ofees,total 
            FROM fee_details F, user_details U, login L
             where L.usn=U.usn and F.catid=U.catid and U.courseid=F.courseid and L.usn='$name';";

    $result = mysqli_query($con, $sql);
    while($row=mysqli_fetch_assoc($result))
    {
        ?>
        <tbody>
        <tr> 
           
           <td scope="row"><?php echo $row['tfees']?></td>
           <td><?php echo $row['subs']?></td>
           <td><?php echo $row['efees']?></td>
           <td><?php echo $row['ofees']?></td>
           <td><?php echo $row['total']?></td>
      </tr>
        </tbody>
       
    <?php
            
    }
     
   ?>
        </div>
    </section>
</body>
</html>