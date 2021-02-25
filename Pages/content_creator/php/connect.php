<?php
$servername = "localhost";
$username = "vxworkfl_content";
$password = "b@)x,G@lYP#J";
$dbname = "vxworkfl_lmscontent";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>