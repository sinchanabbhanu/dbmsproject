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
  
             $sql = "SELECT tfees,subs,efees,ofees,total 
                    FROM fee_details F";

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
</body>
</html>