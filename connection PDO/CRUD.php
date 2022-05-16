<?php  
    $dbHost="localhost";  
    $dbName="connection";  
    $dbUser="root";      //by default root is user name.  
    $dbPassword="";     //password is blank by default  
    try{  

        $dbConn= new PDO("mysql:host=$dbHost;dbname=$dbName",$dbUser,$dbPassword);  
        $sql = "INSERT INTO employees_info (emp_name, email,salary) VALUES ('samar','sam@gmail.com','1000');";
        $sql1= "DELETE FROM employees_info WHERE id='31';";
        $sql2="UPDATE employees_info SET salary ='1000' WHERE id='26';";
        $sql3="CREATE TABLE namename(first_name VARCHAR(255) NOT NULL,last_name VARCHAR(255) NOT NULL );";
        $sql4 = "INSERT INTO namename (first_name,last_name) VALUES ('samar','alkhamis');";
        $sql5="SELECT * FROM employees_info
        INNER JOIN namename ON employees_info.emp_name=namename.first_name;";

        $dbConn->exec($sql);
        $dbConn->exec($sql1);
        $dbConn->exec($sql2);
        $dbConn->exec($sql3);
        $dbConn->exec($sql4);
        echo "<br> Successfully connected with connection database";
        $names=$dbConn->query($sql5);
        foreach ($names as $row) {
        print $row["emp_name"] . " --- " . $row["first_name"] . "<br/>";
          }
    }catch(PDOException $e){  
    Echo "Connection failed" . $e->getMessage();  
    }  
?>