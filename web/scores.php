<?php
	error_reporting(E_ALL);
	ini_set('display_errors', 1);
	ini_set('display_startup_errors',1);
	//error_reporting(-1);				//equivalent to error_reporting(E_ALL);

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
		$data = array("getscores"=>"");
		$data['getscores']=test_input($_POST['getscores']);
		getScores($data, $conn);
	}

	function test_input($data)
	{
		$data=trim($data);
		$data=stripslashes($data);
		$data=htmlspecialchars($data);
		return $data;
	}
	function getScores($data, $conn)
	{
		$Scores="SELECT id, firstname, lastname, score FROM Members ORDER BY score DESC";
		if($result=$conn->query($Scores))
		{
			//$scores=$result->fetch_all();
			$rows = array();
			while ($row = $result->fetch_assoc()) {

			    $rows[] = $row;

			}

			//return $rows;
			echo json_encode($rows);
			//file_put_contents("errorF.txt", json_encode($rows));
			$result->close();
		} else {
			printf("Error: %s\n",$conn->error);
		}
	}
?>
