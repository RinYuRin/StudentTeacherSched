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

$existingSelections = getExistingSelections($conn, $student_id);

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['selected_teachers'])) {
    $selectedTeachers = $_POST['selected_teachers'];

    $conn->query("DELETE FROM student_selected_schedule WHERE student_id = '$student_id'");

    foreach ($selectedTeachers as $teacher) {
        $conn->query("INSERT INTO student_selected_schedule (student_id, schedule_id, selected) VALUES ('$student_id', '$teacher', 1)");
    }

    header("Location: student_dashboard.php");
    exit;
}

$scheduleData = readFromDatabase($conn);

function readFromDatabase($conn)
{
    $sql = "SELECT * FROM teacher_sched";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $schedules = [];
        while ($row = $result->fetch_assoc()) {
            $schedules[] = $row;
        }
        return $schedules;
    }

    return [];
}

function getExistingSelections($conn, $student_id)
{
    $sql = "SELECT schedule_id FROM student_selected_schedule WHERE student_id = '$student_id'";
    $result = $conn->query($sql);

    $existingSelections = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $existingSelections[] = $row['schedule_id'];
        }
    }

    return $existingSelections;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="selectsched.css">
    <title>Document</title>
</head>

<body>
    <div class="wrapper1">
            <header class="name">
                <div class="icon">
                    <a href="#"><img src="image/Logo.png" class="logo"></a>
                  </div>
                <ul class="NAV">
                    <il><a href="index.html">Home</a></il>
                    <il><a href="schedule.html">Schedule</a></il>
                    <il><a href="About.html">About</a></il>
                </ul>
            </header>
        </div>

    <div class="container">
        <h1>Select Teacher Schedule</h1>

        <form action="" method="post" id="scheduleForm">
            <table border="6" class="table">
                <thead>
                    <tr>
                        <th>Teacher</th>
                        <th>Subject</th>
                        <th>Section</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Select</th>
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
                            <td>
                                <label class="container1">
                                <input type="checkbox" class="teacherCheckbox" name="selected_teachers[]" value="<?php echo $schedule['id']; ?>" <?php echo in_array($schedule['id'], $existingSelections) ? 'checked' : ''; ?>>
                                <div class="checkmark"></div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <div class="button">
            <button type="submit" class="savebutton">Save</button>
            </div>
        </form>
            
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const checkboxes = document.querySelectorAll('.teacherCheckbox');

                checkboxes.forEach((checkbox) => {
                    checkbox.addEventListener('change', function () {
                        const teacherName = this.closest('tr').querySelector('td:first-child').textContent;

                        checkboxes.forEach((otherCheckbox) => {
                            const otherTeacherName = otherCheckbox.closest('tr').querySelector('td:first-child').textContent;

                            if (otherCheckbox !== this && otherTeacherName === teacherName) {
                                otherCheckbox.disabled = this.checked;
                            }
                        });
                    });
                });
            });
        </script>
    </div>
</body>

</html>
