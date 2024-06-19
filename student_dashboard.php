<?php
session_start();

if (!isset($_SESSION['student_id'])) {
    header("Location: index.html");
    exit();
}

$db_host = 'localhost';
$db_user = 'root';
$db_password = '';
$db_name = 'student_schedss3';
$conn = new mysqli($db_host, $db_user, $db_password, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$student_id = $_SESSION['student_id'];

$sql = "SELECT teacher_sched.* FROM student_selected_schedule 
        INNER JOIN teacher_sched ON student_selected_schedule.schedule_id = teacher_sched.id
        WHERE student_selected_schedule.student_id = '$student_id'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $scheduleData = [];
    while ($row = $result->fetch_assoc()) {
        $scheduleData[] = $row;
    }
}

$sqlAllStudents = "SELECT student_selected_schedule.student_id, teacher_sched.* FROM student_selected_schedule 
                   INNER JOIN teacher_sched ON student_selected_schedule.schedule_id = teacher_sched.id
                   WHERE student_selected_schedule.student_id <> '$student_id'";

$resultAllStudents = $conn->query($sqlAllStudents);

$allStudentsScheduleData = []; 

if ($resultAllStudents->num_rows > 0) {
    while ($row = $resultAllStudents->fetch_assoc()) {
        $allStudentsScheduleData[] = $row;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/stdb.css">
    <title>User Dashboard</title>
</head>
<body>
    <div class="container">
        <h1>Your Schedule</h1>
        <h3>Student ID: <?php echo $student_id; ?></h3>

        <h2>Your Selected Teacher Schedules</h2>
        <table>
            <thead>
                <tr>
                    <th>Teacher</th>
                    <th>Subject</th>
                    <th>Section</th>
                    <th>Date</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($scheduleData as $schedule): ?>
                    <tr>
                        <td><?php echo $schedule['teacher_name']; ?></td>
                        <td><?php echo $schedule['subject']; ?></td>
                        <td><?php echo $schedule['section']; ?></td>
                        <td><?php echo $schedule['date']; ?></td>
                        <td><?php echo $schedule['time']; ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <form action="index.html">
            <input type="submit" name="submit" value="Go Back To Login">
        </form>
    </div>
</body>
</html>
