<?php
session_start();

error_reporting(E_ALL);
ini_set('display_errors', 1);

$db_host = 'localhost';
$db_user = 'root';
$db_password = '';
$db_name = 'student_schedss3';

$conn = new mysqli($db_host, $db_user, $db_password, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $student_id = $_POST['student_id'];
    $email = $_POST['email'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $birthday = $_POST['birthday'];
    
    $sql = "INSERT INTO student_info (student_id, email, first_name, last_name, birthday) 
            VALUES ('$student_id', '$email', '$first_name', '$last_name', '$birthday')";

    if ($conn->query($sql) === TRUE) {
        echo "Registered successfully!";
        header("Location: index.html");
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
