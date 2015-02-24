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
		$data = array("id"=>"");
		$data['id']=test_input($_POST['id']);
		checkMember($data, $conn);
	}

	function test_input($data)
	{
		$data=trim($data);
		$data=stripslashes($data);
		$data=htmlspecialchars($data);
		return $data;
	}
	function checkMember($data,$conn)
	{
		$status="yes";
		$getUserData="SELECT button_status FROM Members WHERE id='".$data['id']."'";
		if($result=$conn->query($getUserData))
		{
			if($result->num_rows > 0)
			{
				$row=$result->fetch_assoc();
				if($row["button_status"]==0)
					$status="no";
				else
					$status="yes";
			}
			echo $status;
			$result->close();
		} else {
			printf("Error: %s\n",$conn->error);
		}
		$conn->close();
	}
?>
