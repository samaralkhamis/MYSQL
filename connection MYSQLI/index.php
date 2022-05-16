<?php
     include_once './config/conection.php';
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
   
    <?php
    if(isset($_post['submit'])){
    $name= $_POST['name'] ;
    $email=$_POST['email'];
    $salary=$_POST['salary'];



    $sql= " INSERT INTO employees_info (emp_name, email ,salary )
    VALUES ('$name','$email','$salary'); ";

    if(mysqli_query($conn , $sql)){
        echo 'new record created sucessfuly ';
    }else{
        echo "error:".$sql."<br>".mysqli_error($conn);
    }
    

    mysqli_close($conn);
}
    ?>

</body>
</html>