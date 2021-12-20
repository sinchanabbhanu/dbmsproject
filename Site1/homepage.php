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
</head>
<body>
    <section>
        <div class="section-1">
            <p>the header</p>
        </div>
    </section>
    <section>
        <div class="student-details">
        <table border="1">
        <tr>
        <td>student name</td>
        <td>parent name</td>
        <td>usn</td>
        <td>course</td>
        <td>category</td>
        </tr>
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
        <tr> 
           
             <td><?php echo $row['sname']?></td>
             <td><?php echo $row['pname']?></td>
             <td><?php echo $row['usn']?></td>
             <td><?php echo $row['cname']?></td>
             <td><?php echo $row['catname']?></td>
        </tr>
    <?php
            
    }
     
   ?>
        </div>
    </section>
    <section>
        <div class="fee-details">
        <table border="1">
        <tr>
        <td>tuition fees</td>
        <td>subscription</td>
        <td>exam fees</td>
        <td>other fees</td>
        <td>total</td>
        </tr>
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
        <tr> 
           
             <td><?php echo $row['tfees']?></td>
             <td><?php echo $row['subs']?></td>
             <td><?php echo $row['efees']?></td>
             <td><?php echo $row['ofees']?></td>
             <td><?php echo $row['total']?></td>
        </tr>
    <?php
            
    }
     
   ?>
        </div>
    </section>
</body>
</html>