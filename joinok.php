<?php
include("config.php");
$username = "";
$userid = "";
$userpw = "";
$phone = "";
$mail = "";

if( isset($_POST['username']) ) {
 $username = $_POST['username'];
}
if( isset($_POST['userid']) ) {
 $userid = $_POST['userid'];
}
if( isset($_POST['userpw']) ) {
 $userpw = $_POST['userpw'];
}
if( isset($_POST['phone']) ) {
    $phone = $_POST['phone'];
}
if( isset($_POST['mail']) ) {
    $mail = $_POST['mail'];
}
if( $username && $userid && $userpw && $phone && $mail ) {
 $sql = "INSERT INTO cu SET ";
 $sql .= "username='{$username}'";
 $sql .= ", userid='{$userid}'";
 $sql .= ", userpw='{$userpw}'";
 $sql .= ", phone='{$phone}'";
 $sql .= ", mail='{$mail}'";

 $db->query($sql);
}
header("Location: ./");
