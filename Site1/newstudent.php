<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Responsive Sticky Navbar</title>
      <link rel="stylesheet" href="style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link rel="stylesheet" href="newstudent.css">
   </head>
   <body>
      <div class="wrapper">
         <header>
            <nav>
               <div class="menu-icon">
                  <i class="fa fa-bars fa-2x"></i>
               </div>
               <div class="logo">
                  LOGO
               </div>
               <div class="menu">
                  <ul>
                    
                     <li><a href="logout.php">LOGOUT</a></li>
                  </ul>
               </div>
            </nav>
         </header>
         <div class="content">
           <div class="Student Details">
              <div class="heading">
                 <p>
                    Student Details
                 </p>
              </div>
              <table class="table table-hover table-dark">
               <thead>
                 <tr>
                   <th scope="col">USN</th>
                   <th scope="col">Student Name</th>
                   <th scope="col">Parent Name</th>
                   <th scope="col">Course Name</th>
                   <th scope="col">Category Name</th>
                   </tr>
               </thead>
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
                   <td scope="row"><?php echo $row['usn']?></td>
                   <td><?php echo $row['sname']?></td>
                   <td><?php echo $row['pname']?></td>
                   <td><?php echo $row['cname']?></td>
                   <td><?php echo $row['catname']?></td>
                  </tr>
               </tbody>
             </table>
             <?php
              }
              ?>

           </div>
           <div class="Fee Details">
            <div class="heading">
               <p>
                  Fee Details
               </p>
            </div>
            <table class="table table-hover table-dark">
             <thead>
               <tr>
                 <th scope="col">Tuition Fees</th>
                 <th scope="col">Subscription</th>
                 <th scope="col">Exam Fees</th>
                 <th scope="col">Other Fees</th>
                 <th scope="col">Total</th>
                 </tr>
             </thead>
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
           </table>
           <?php
             }
         ?>

         </div>

         </div>
      </div>
      <div class="payment status">
         <p>here the table </p>
      </div>
      <script>
           $(document).ready(function() {
            $(".menu-icon").on("click", function() {
                  $("nav ul").toggleClass("showing");
            });
      });

      // Scrolling Effect

      $(window).on("scroll", function() {
            if($(window).scrollTop()) {
                  $('nav').addClass('black');
            }

            else {
                  $('nav').removeClass('black');
            }
      })
      </script>
   </body>
</html>