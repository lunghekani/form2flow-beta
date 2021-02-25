<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require_once('PHPMailer/src/Exception.php');
require_once('PHPMailer/src/PHPMailer.php');
require_once('PHPMailer/src/SMTP.php');
require_once("connect.php");

$taskstation ="";
        if (isset($_POST['select_catalog'])){
            $taskstation = $_POST['select_catalog'];
            
        }

	if ( $_POST['form_values'] ) {

		// Upload Values To DB
		$form_id = $_POST['form_id'];
		$form_values = $_POST['form_values'];

		$sql = "INSERT INTO Form_values (form_id, form_values)
			VALUES ('$form_id','$form_values')";

		if (mysqli_query($conn, $sql)) {
		  	echo " enteries added \n";
		} else {
		  echo "Error: " . $sql . "<br>" . $conn->error;
		}

		$conn->close();
        
        // Send an email

		$x = "";
		$y = json_decode($_POST['form_values'], true);
	    foreach ( $y as $f ) {
	        $x .= strval($f["name"])." : ".strval($f["value"])."<br />";
	    }
		try{
		    $mail = new PHPMailer(true);
		    $mail->SMTPOptions = array(
			    'ssl' => array(
			        'verify_peer' => false,
			        'verify_peer_name' => false,
			        'allow_self_signed' => true
			    )
			);
            
		    $mailto = $taskstation;  // Enter The recipient email
		    $mailtoName = "Lunghekani"; //Enter The recipient name
		    $mailSub = "Form Values"; // Email Subject

		    $mail->SMTPDebug = 0;
		    $mail->isSMTP();
		    $mail->Host = 'smtp.gmail.com';
		    $mail->SMTPAuth = true;
		    $mail->Username = "formbuildererp.lunghi@gmail.com";                 //Enter your gmail id
		    $mail->Password = "cqsortmyarsgejnl";                     // this is your app password.
		    $mail->SMTPSecure = 'tls';
		    $mail->Port = 587;

		    // Recipients
		    $mail->setFrom('formbuildererp.lunghi@gmail.com', 'Form Builder Lunghi');   // Enter your gmail id with your name from which the mail needs to be send
		    $mail->addAddress($mailto, $mailtoName);


		    $mail->isHTML(true);
		    $mail->Subject = $mailSub;
		    $mail->Body    = $x;

		    if(!$mail->send()) {
		        echo 'Message could not be sent.';
		        echo 'Mailer Error: ' . $mail->ErrorInfo;
		    } else {
		        echo 'An email with all the entires has been sent to '.$taskstation;
		    }
		} catch (Exception $e) {
		    echo " $taskstation Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
		}
		
	}


 ?>