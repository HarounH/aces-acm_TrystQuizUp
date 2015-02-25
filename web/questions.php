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

	if($_SERVER['REQUEST_METHOD']=="POST")
	{
		$data = array("qnum"=>"");
		$data['qnum']=test_input($_POST['qnum']);
		getQuestion($data, $conn);
	}

	function test_input($data)
	{
		$data=trim($data);
		$data=stripslashes($data);
		$data=htmlspecialchars($data);
		return $data;
	}
	function getQuestion($data, $conn)
	{
		$getQues="SELECT * FROM Questions WHERE id=".$data['qnum'];
		$result=$conn->query($getQues);
		$row=$result->fetch_assoc();
		echo json_encode($row);
	}
	/*if($_SERVER['REQUEST_METHOD']=="POST")
	{
		//check($conn);
		
		
		if($_POST["qs"]==true)
		{
			
			$getem="SELECT num FROM indexq LIMIT 1";
			$res=$conn->query($getem);
			$rowd=$res->fetch_assoc();
			$getUserData="SELECT * FROM Questions WHERE id={$rowd["num"]}";
			$result=$conn->query($getUserData);
			$row=$result->fetch_assoc();
			echo json_encode($row);
			$xxx=$rowd["num"]+1;
			$gett="UPDATE indexq SET num={$xxx}";
			$pet=$conn->query($gett);

		}
		//$conn->close();
	}*/
		
?>
