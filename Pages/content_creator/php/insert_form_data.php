<?php 

require_once "connect.php";

	

	if(isset($_FILES["fileToUpload"])) {

		$target_dir = "C:/xampp/htdocs/keditor/uploads/";
		$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
		$uploadOk = 1;
		$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
		$check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
		if($check !== false) {
			// echo "File is an image - " . $check["mime"] . ".";
			$uploadOk = 1;
		} else {
			// echo "File is not an image.";
			$uploadOk = 0;
		}

		// Allow certain file formats
		// if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
		// && $imageFileType != "gif" ) {
		//   echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
		//   $uploadOk = 0;
		// }

		// Check if $uploadOk is set to 0 by an error
		if ($uploadOk == 0) {
		  echo "Sorry, your file was not uploaded.";
		// if everything is ok, try to upload file
		} else {
		  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
		    echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
		  } else {
		    echo "Sorry, there was an error uploading your file.";
		  }
		}
	}


	$content = $_POST['html_content'];
	$file_name = $_POST['file_name'];

	$sql = "SELECT short_code FROM Forms WHERE file_name = '$file_name'";
	$result = mysqli_query($conn, $sql);

	if($result->num_rows == 0) {
		$sql = "INSERT INTO Forms (form_html, file_name)
			VALUES ('$content', '$file_name')";

		if (mysqli_query($conn, $sql)) {
			$id=mysqli_insert_id($conn);
		  	echo "Content Added Successfully with id =" . $id;
		} else {
		  echo "Error: " . $sql . "<br>" . $conn->error;
		}

		
	} else {
	    $row = mysqli_fetch_assoc($result);
		$id = $row['short_code'];

		$sql = "UPDATE Forms SET form_html = '$content' WHERE short_code = $id";

		if (mysqli_query($conn, $sql)) {
		  	echo "Content Updated Successfully";
		} else {
		  echo "Error: " . $sql . "<br>" . $conn->error;
		}
		
	}

	$conn->close();


 ?>