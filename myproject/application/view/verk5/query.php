<?php 
	try {
		$sql = "SELECT imgID, imgFileName, imgName, imgDescription, imgNotandi FROM myndir ORDER BY imgName";
		$result = $pdo ->query($sql);
		
	} catch (Exception $e) {
		echo "Ekki tókst að ná í gögnin". "<br>" . $e->getMessage();
	}
	while($row = $result -> fetch()){
		$Images[] = array($row['imgID'], $row['imgFileName'], $row['imgName'], $row['imgDescription'], $row['imgNotandi']);
	}



	try {
		$sql2 = "SELECT userID, userName, userEmail FROM myndir JOIN notandi WHERE imgNotandi = userID";
		$result2 = $pdo ->query($sql2);
		
	} catch (Exception $e) {
		echo "Ekki tókst að ná í gögnin". "<br>" . $e->getMessage();
	}
	while($row2 = $result2 -> fetch()){
		$Users[] = array($row2['userID'], $row2['userName'], $row2['userEmail']);
	}



	try {
		$sql2 = "SELECT * FROM myndir";
		$result3 = $pdo ->query($sql2);
		
	} catch (Exception $e) {
		echo "Ekki tókst að ná í gögnin". "<br>" . $e->getMessage();
	}
	$numRows = $result3->rowCount();
?>