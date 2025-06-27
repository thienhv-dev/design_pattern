<?php
//phpinfo();

echo "<h1>Chào mừng đến với PHP Docker!</h1>";
echo "<p>PHP Version: " . phpversion() . "</p>";
echo "<p>Current Time: " . date('Y-m-d H:i:s') . "</p>";

// Test kết nối database
try {
    $host = 'db';
    $dbname = 'laravel_db';
    $username = 'laravel_user';
    $password = 'user_password';

    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    echo "<p style='color: green;'>✅ Kết nối database thành công!</p>";
} catch(PDOException $e) {
    echo "<p style='color: red;'>❌ Lỗi kết nối database: " . $e->getMessage() . "</p>";
}