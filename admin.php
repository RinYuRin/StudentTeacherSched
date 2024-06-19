<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();

if (isset($_SESSION['admin_id'])) {
    header("Location: admin.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $hardcoded_username = 'admin';
    $hardcoded_password = 'admin';

    if ($username === $hardcoded_username && $password === $hardcoded_password) {
        $_SESSION['admin_id'] = 1;
        header("Location: dashboard.html");
        exit();
    } else {
        $error_message = "Invalid username or password";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="admin.css">
</head>

<body>

        <?php if (isset($error_message)): ?>
            <p style="color: red;"><?php echo $error_message; ?></p>
        <?php endif; ?>

        <form action="" method="post">
        <div class="container1">
        <div class="wrapper">
        <div class="title"><span>Admin</span></div>
        <div class="row">
            <input type="text" name="username" id="username" placeholder="username" required>
        </div>
        <div class="row">   
            <input type="password" name="password" id="password" placeholder="password" required>
        </div>
        <div class="row-button">    
        <input type="submit" value="Login">
        </div>
    
    </div>
        </div>
        </form>
</body>

</html>

