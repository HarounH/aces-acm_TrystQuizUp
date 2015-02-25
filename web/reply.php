<?php
	//error_reporting(E_ALL);
	//ini_set('display_errors', 1);
	//ini_set('display_startup_errors',1);
	//error_reporting(-1);				//equivalent to error_reporting(E_ALL);

	$servername = "localhost";
	$username = "root";
	$password = "miracle1234";
	$dbname = "myDB";

			// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
	if ($conn->connect_errno) {
		die("Connection failed: " . $conn->connect_error);
		exit();
	}
		//test($conn);


	if($_SERVER['REQUEST_METHOD']=="POST")
	{
		$data = array("id"=>"", "answer"=>"");
		$data['id']=test_input($_POST['id']);
		$data['answer']=test_input($_POST['answer']);
		enable($data, $conn);
	}

	function test_input($data)
	{
		$data=trim($data);
		$data=stripslashes($data);
		$data=htmlspecialchars($data);
		return $data;
	}
	function enable($data,$conn)
	{
		$status="yes";
		$disableButton="UPDATE Members SET button_status=0 where id=".$data['id'];
		$result=$conn->query($disableButton);
		$conn->close();
	}
?>
