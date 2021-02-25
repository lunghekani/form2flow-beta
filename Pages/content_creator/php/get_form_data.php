<?php 

require_once "connect.php";
	if (!empty($_POST['id'])) {
		$searchId = $_POST['id'];
		$sql = "SELECT form_html FROM Forms WHERE short_code = '$searchId'";
		$result = mysqli_query($conn, $sql);
		if (mysqli_num_rows($result) == 1){
			$row = mysqli_fetch_assoc($result);
			echo $row['form_html'];
		} else {
		  echo "Not found";
		}
	}

	$conn->close();


 ?>