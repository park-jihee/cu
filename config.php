<?php
//세션 시작,항상 맨 윗줄
session_start();

//예외처리, 에러발생하면 다른 조치
try { 
    $db = new PDO("mysql:host=localhost; dbname=cuweb; charset=utf8", "root", "");
} catch(PDOException $error) {
    echo "DB Error";
    exit;
}

$login = false;
$loginid = "";
$loginname = "";

if( isset($_SESSION['loginid']) ) {
    $loginid = $_SESSION['loginid'];
}
if( isset($_SESSION['loginname']) ) {
    $loginname = $_SESSION['loginname'];
}
if( $loginid && $loginname ) {
    $login = true;
}