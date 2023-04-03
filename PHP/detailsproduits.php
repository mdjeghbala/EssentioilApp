<?php


include "conf.php";
if ($connexion = mysqli_connect ($serverBDD, $userBDD, $mdpBDD, $nomBDD))
{


	$sqlQuery = "SELECT * from produit";
				$result = mysqli_query($connexion, $sqlQuery);


	// Conversion des données en format JSON
	$data = array();
	if (mysqli_num_rows($result) > 0) {
	  while($row = mysqli_fetch_assoc($result)) {
	    $data[] = $row;
	  }
	}
	echo json_encode($data);	



}



?>
