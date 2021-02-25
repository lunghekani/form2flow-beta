<?php 

require_once "connect.php";
	if (!empty($_POST['id'])) {
		$searchId = $_POST['id'];
		$sql = "SELECT form_values FROM Form_values WHERE form_id = '$searchId' ORDER BY date_created DESC";
		$result = mysqli_query($conn, $sql);
		$arr = [];
		while ($row = mysqli_fetch_array($result))
		{
			array_push($arr, $row["form_values"]);
		}
		echo json_encode($arr);
	}
	elseif (!empty($_POST['table'])) {
		$tableName = $_POST['table'];
		$colName = $_POST['column'];
		$sql = "SELECT * FROM $tableName";
		$result = mysqli_query($conn, $sql);
		$arr = [];
		while ($row = mysqli_fetch_array($result))
		{
			array_push($arr, $row[$colName]);
		}
		echo json_encode($arr);

	}

	$conn->close();


 ?>