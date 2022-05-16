<?php  
    $dbHost="localhost";  
    $dbName="connection";  
    $dbUser="root";      //by default root is user name.  
    $dbPassword="";     //password is blank by default  
    try{  
        $dbConn= new PDO("mysql:host=$dbHost;dbname=$dbName",$dbUser,$dbPassword);  
        $sql = "INSERT INTO employees_info (emp_name, email,salary) VALUES ('samar','sam@gmail.com','1000');";
        $dbConn->exec($sql);
        Echo "Successfully connected with connection database";  
    } catch(Exception $e){  
    Echo "Connection failed" . $e->getMessage();  
    }  
?>