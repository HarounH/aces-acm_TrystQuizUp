<?php
	//error_reporting(E_ALL);
	//ini_set('display_errors', 1);
	//ini_set('display_startup_errors',1);
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
		//test($conn);


	if($_SERVER['REQUEST_METHOD']=="POST")
	{
		$data = array("id"=>"","todo"=>"");
		$data['id']=test_input($_POST['id']);
		$data['todo']=test_input($_POST['todo']);
		if($data['todo']=='check')
		{
			checkMember($data, $conn);
		}
		else
		{
			$data2 = array("id"=>"", "answer"=>"");
			$data2['id']=test_input($_POST['id']);
			$data2['answer']=test_input($_POST['answer']);
			enable($data2, $conn);
			updateScore($data2, $conn);
		}
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
		function enable($data,$conn)
	{
		$disableButton="UPDATE Members SET button_status=0 where id=".$data['id'];
		$result=$conn->query($disableButton);
	}
	function updateScore($data,$conn)
	{
		$getCurrQues="SELECT correctans, points FROM Questions where current=1";
		$result=$conn->query($getCurrQues);
		$quesData=$result->fetch_assoc();
		if($data['answer']==$quesData['correctans'])
		{
			$score=$conn->query("SELECT score FROM Members WHERE id=".$data['id'])->fetch_assoc();
			//$score=$score+$quesData['points'];
			$score['score']=$score['score']+10;
			echo $score['score'];
			$conn->query("UPDATE Members SET score=".$score['score']." where id=".$data['id']);
		}
	}
?>
