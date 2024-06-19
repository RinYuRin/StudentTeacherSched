<?php
session_start();

error_reporting(E_ALL);
ini_set('display_errors', 1);

if (!isset($_SESSION['admin_id'])) {
    header("Location: dashboard.html");
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

$sql = "SELECT teacher_name, COUNT(*) as student_count FROM student_selected_schedule 
        INNER JOIN teacher_sched ON student_selected_schedule.schedule_id = teacher_sched.id
        GROUP BY teacher_name";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $teacherNames = [];
    $studentCounts = [];
    while ($row = $result->fetch_assoc()) {
        $teacherNames[] = $row['teacher_name'];
        $studentCounts[] = $row['student_count'];
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="./css/testadmin.css">
    <title>Admin Dashboard</title>
</head>

<body>
    <div class="container">
        <h1>Admin Dashboard</h1>

        <canvas id="teacherScheduleChart"></canvas>

        <script>
            var ctx = document.getElementById('teacherScheduleChart').getContext('2d');
            var teacherScheduleChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: <?php echo json_encode($teacherNames); ?>,
                    datasets: [{
                        label: 'Number of Students',
                        data: <?php echo json_encode($studentCounts); ?>,
                        backgroundColor: '#434343',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>
    </div>
</body>

</html>
