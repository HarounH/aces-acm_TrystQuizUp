
<?php 
	$correct = "You are right!";
	$wrong = "Wrong answer!";
	$option = htmlspecialchars(strip_tags($_POST["answer"]));
	if(strtolower($option) == "a")
		echo $correct;
	else
		echo $wrong;
?>
