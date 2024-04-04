
<?php


// MySQL database connection
$servername = "localhost";
$username = "root1";
$password = "1234";
$dbname = "user_comments";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data
$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

// Prepare and bind SQL statement
$stmt = $conn->prepare("INSERT INTO user_submissions (name, email, message) VALUES (?, ? , ?)");
$stmt->bind_param("sss", $name, $email, $message);

// Execute the statement
if ($stmt->execute()) {
    // Data insertion successful
    echo "Your message has been received successfully.";
} else {
    // Data insertion failed
    echo "Error: " . $stmt->error;
}

// Close statement and connection
$stmt->close();
$conn->close();
?>








