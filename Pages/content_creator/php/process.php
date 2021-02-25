<?php
session_start();

$mysqli = new mysqli('localhost','root','','form_builder') or die(mysqli_error($mysqli));
$firstname='';
$lastname='';
$email='';
$id=0;
$update=false;
$result=[];

if (isset($_POST['save'])){
    $firstname=$_POST['name'];
    $email=$_POST['email'];
    
    
$mysqli->query("INSERT INTO positions(name,email)VALUES('$firstname','$email')")or die($mysqli-> error);
    $_SESSION['message'] ="record has been saved";
    $_SESSION['msg_type'] ="success";
    header("location: emails.php");

}
if (isset($_GET['delete'])){
    $id = $_GET['delete'];
    $mysqli->query("DELETE FROM positions WHERE id=$id") or die($mysqli->error);
    $_SESSION['message'] ="record has been deleted";
    $_SESSION['msg_type'] ="danger";
header("location: emails.php");
}
if(isset($_GET['edit'])){
    $id = $_GET['edit'];
    $update=true;
    $result = $mysqli-> query("SELECT * FROM positions WHERE id=$id") or die($mysqli->error());
    if($result->num_rows){
        $row = $result->fetch_array();
        $firstname = $row['name'];
    $email =$row['email'];
   
    }
}
if(isset($_GET['edit'])){
    $id = $_GET['edit'];
    $update=true;
    $result = $mysqli-> query("SELECT * FROM positions WHERE id=$id") or die($mysqli->error());
    if(count($result)==1){
        $row = $result->fetch_array();
        $name = $row['name'];
        $email= $row['email'];
    }
}
if(isset($_POST['update'])){
    $id= $_POST['id'];
    $firstname=$_POST['name'];
    $email=$_POST['email'];
    
    $mysqli-> query("UPDATE positions SET name='$firstname', email='$email' WHERE id=$id") or die($mysqli->error);
    
     $_SESSION['message'] ="record has been updated";
    $_SESSION['msg_type'] ="warning";
header("location: emails.php");
}
?>
