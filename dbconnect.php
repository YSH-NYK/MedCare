<?php
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "Medcare";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
?>