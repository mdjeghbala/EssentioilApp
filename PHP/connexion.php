<?php


include 'conf.php';

if ($connexion = mysqli_connect($serverBDD, $userBDD, $mdpBDD, $nomBDD))

{

	
	
}






/*
include 'conf.php';

$email = $_POST['email'];
$mdp = md5($_POST['mdp']);

$connexion = mysqli_connect ($serverBDD, $userBDD, $mdpBDD, $nomBDD);
$sqlconnexion = "SELECT email,mdp from utilisateur WHERE email = '$email' AND mdp = '$mdp' ";
$resultat= mysqli_query($connexion, $sqlconnexion);
$count = mysqli_num_rows($resultat);

if($count > 0)
{
	$sqlconnexion = "SELECT email,mdp from utilisateur WHERE email = '$email' ";
	$resultat= mysqli_query($connexion, $sqlconnexion);

	$data = array();

	while($row = mysqli_fetch_assoc($resultat)){

		$data[] = $row;
	}

	echo json_encode(array("resultat"=>$data));

}
else
{
	echo json_encode(array("error"=>"Authentification échouée"));
}*/

?>