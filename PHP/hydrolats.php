<?php

include "conf.php";
if ($connexion = mysqli_connect ($serverBDD, $userBDD, $mdpBDD, $nomBDD))
{


	$sqlQuery = "SELECT type.id,prix,produit.id as idproduit,produit.libelle,imageurl from produit,type
		where type.id = produit.idType
		and type.id = 4;";
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