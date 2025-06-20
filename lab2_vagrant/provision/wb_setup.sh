#!/bin/bash

{
  echo '<?php'
  echo '$host = "192.168.50.11";'
  echo '$user = "vagrant_test";'
  echo '$pass = "Tusur123";'
  echo '$db = "testdb";'
  echo 
  echo '$conn = new mysqli($host, $user, $pass, $db);'
  echo 
  echo 'if ($conn->connect_error) {'
  echo ' die("Connection failed: " . $conn->connect_error);'
  echo '}'
  echo 'echo "Connected to MySQL successfully!";'
  echo '?>'
} > /var/www/html/test_db.php
