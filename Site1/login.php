<?php

 session_start();
 
    $username = $_POST['username'];
    $password = $_POST['password'];

    $con = mysqli_connect("localhost", "root", "", "dbms");

    if (!$con) {
       die( " Connection failed. Please try again: Error: " . mysqli_connect_error() );
    }

    //to check if the username exists in the database

    $username_existance_query = "SELECT upassword,usn from login where usn = '".$username."';";
    $query = mysqli_query($con, $username_existance_query);

    $query_result = mysqli_fetch_array($query);
    // echo "$query_result[upassword] ";
    if ($query_result['usn']== 'admin' and $query_result['upassword']  == $password )

    {
        $_SESSION['username']=$username;
         header('Location: newadmin.html');
         mysqli_close($con);
    }

    elseif($query_result['upassword']  == $password)
    {
        $_SESSION['username']=$username;
        header('Location: newstudent.php');  
        mysqli_close($con);
    }
    

    else {
        echo "Login failed. Please try again: Error: ";
    }

    mysqli_close($con);


?>