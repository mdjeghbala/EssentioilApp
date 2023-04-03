<?php


include "conf.php";
if ($connexion = mysqli_connect ($serverBDD, $userBDD, $mdpBDD, $nomBDD))
{


	$sqlQuery = "SELECT produit.libelle,imageurl,produit.id as idproduit,prix,categorie.id,produit_categorie.idProduit,produit_categorie.idCategorie
				FROM produit_categorie,produit,categorie
				where  categorie.id = produit_categorie.idCategorie
				and produit.id = produit_categorie.idProduit
				and produit_categorie.idCategorie = 3;";
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