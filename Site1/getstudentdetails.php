<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
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
  
             $sql = "SELECT sname,pname,usn,cname,catname 
                    FROM user_details U, course C, category CAT
                     WHERE U.catid=CAT.catid and C.courseid = CAT.courseid and U.courseid=C.courseid";

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
</body>
</html>