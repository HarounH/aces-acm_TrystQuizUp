<?php
	//error_reporting(E_ALL);
	//ini_set('display_errors', 1);
	//ini_set('display_startup_errors',1);
	//error_reporting(-1);				//equivalent to error_reporting(E_ALL);

	//session_start();

	$servername = "localhost";
	$username = "root";
	$password = "root";
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
	function test($conn)
	{
		$query="SELECT * FROM Members";
		if($result=$conn->query($query))
		{
			while($row=$result->fetch_assoc())
			{
				printf("We have %s %s with email id %s and mobile number %lu \n", 
					$row["firstname"],
					$row["lastname"],
					$row["email"],
					$row["mobile"]);
					//echo $row["firstname"];
			}
			$result->free();
		}
		$conn->close();
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
		$success="success";
		$failure="fail";
		$getUserData="SELECT * FROM Members WHERE id='".$data['id']."'";
		$sql="SELECT * from Members where firstname='Shivanshu'";
		if($result=$conn->query($getUserData))
		{
			if($result->num_rows>0)
				//$_SESSION['id']=$data['id'];
				echo $success;
			else
				echo $failure;
			$result->close();
		} else {
			printf("Error: %s\n",$conn->error);
		}
		$conn->close();
	}
?>
