<?php
	//error_reporting(E_ALL);
	//ini_set('display_errors', 1);
	//ini_set('display_startup_errors',1);
	//error_reporting(-1);				//equivalent to error_reporting(E_ALL);
	//file_put_contents("error.txt","I am in questions.php");
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
		$setCurrQues="UPDATE Questions SET current=1 where ID=".$data['qnum'];
		$setRestQues="UPDATE Questions SET current=0 where ID!=".$data['qnum'];
		$conn->query($setCurrQues);
		$conn->query($setRestQues);
		$getQues="SELECT question, A, B, C, D FROM Questions WHERE ID=".$data['qnum'];
		$result=$conn->query($getQues);
		$row=$result->fetch_assoc();
		echo json_encode($row);
	}
?>
