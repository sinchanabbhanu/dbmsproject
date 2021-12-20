<?php 
session_start();

?>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Learn marketing strategy, Our Courses, ​Drive Your Career Forward">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Page 3</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Page-3.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.29.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Page 3">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body">
    <section class="u-clearfix u-palette-5-dark-3 u-section-1" id="sec-f200">
      <div class="u-align-center u-container-style u-expanded-width u-group u-palette-5-light-1 u-shape-rectangle u-group-1">
        <div class="u-container-layout u-valign-middle u-container-layout-1">
          <h1 class="u-text u-text-default u-text-1">nmam Institute of technology</h1>
        </div>
        
       <div id="mySidenav" class="sidenav">
         <a href="#" id="about">Log Out</a>
       </div>
  
</div>  
      </div>
      <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1"></div>
      </div>
      <h1 class="u-align-center u-text u-text-default u-text-2"><span style="font-weight: 700;">
          <span style="font-style: italic;"></span>
        </span>Student Details 
      </h1>
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
      </div>
    </section>
    <section class="u-align-center u-clearfix u-palette-1-light-2 u-section-2" id="sec-6b89">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-default u-text-1">
          <span style="font-weight: 700; font-style: italic;">fee details</span>
          <span style="font-weight: 700;">
            <span style="font-style: italic;"></span>
          </span>
        </h1>
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