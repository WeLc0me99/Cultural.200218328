<?php
// Database connection parameters
$servername = "localhost"; 
$username = "root1"; // Replace 'root1' with your database username
$password = "1234"; // Replace 'your_password' with your database password
$dbname = "user_comments"; 

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Insert user comment into the database
$name = $_POST['name'];
$comment = $_POST['comment'];

$sql = "INSERT INTO comments (name, comment) VALUES ('$name', '$comment')";

if ($conn->query($sql) === TRUE) {
    echo "New comment added successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 


    