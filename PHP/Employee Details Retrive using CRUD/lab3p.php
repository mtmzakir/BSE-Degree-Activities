<?php
    $con = mysqli_connect("localhost","root","","EMP_DB");

    if(!$con){
        die('Couldn\'t connect to Server'.mysql_error());
    }
    
    else{
        echo 'Connection Successfull.....';
        echo "<br/>";

        $sql = "INSERT INTO EMP_DEPT(EMP_DEPT,DEPT_TYPE,EMP_DEPT_NO)
        VALUES (
        '$_POST[emp_dept]',
        '$_POST[dept_type]',
        '$_POST[emp_dept_no]'
        )";
    }

    if(!mysqli_query($con,$sql)){

        die('Error'.mysql_error());
    }
    
    else{
        echo 'Your Record Added Successfully...';
    }
    mysqli_close($con);
?>