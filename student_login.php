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

    $sql = "SELECT * FROM student_info WHERE student_id = '$student_id'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        $_SESSION['student_id'] = $student_id;
        echo "Login successful!";
        header("Location: select_teacher_schedule.php");
        exit();
    } else {
        echo "User not found";
        echo "<form action='index.html' method='get'>";
        echo "<input type='submit' value='Go Back'>";
        echo "</form>";
    }
}

$conn->close();
?>
