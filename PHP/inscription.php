<?php

include 'conf.php';


$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$email = $_POST['email'];
$adresse = $_POST['adresse']; 
$mdp = md5($_POST['mdp']);

 try {
       if(isset($nom, $prenom, $mdp,$email,$adresse)){
           $req = $db->prepare("SELECT * FROM users WHERE email=?");
           $req->execute(array($email));
           $exist = $req->rowCount();
           if($exist == 0){
               $req = $db->prepare("INSERT INTO users VALUES(null,?,?,?)");
                $req->execute(array($name, $email, $pass));
                if($req){
                    $succes = 1;
                    $msg = "succes register";
                }else{
                    $succes = 0;
                    $msg = "error register";
                }
           }else{
               $msg = "email arealy exist";
               $succes = 0;
           }
       }else{
          $succes = 0;
          $msg = "error empty data"; 
       }
    } catch (\Throwable $th) {
       $succes = 0;
       $msg = "Error: ".$th->getMesage();
    }
    echo json_encode([
        "data"=>[
            $msg,
            $succes
        ]
    ]);

?>

<?php
/*
$connexion = mysqli_connect ($serverBDD, $userBDD, $mdpBDD, $nomBDD);
$sqlverif = "SELECT email FROM utilisateur WHERE email = '$email'";
echo $sqlverif;
$resultat= mysqli_query($connexion, $sqlverif);
$count = $resultat->num_rows;
echo $count;

if($count > 0) {

	echo json_encode("Un compte est deja cree avec cette adresse email");
}

else
{
		$connexion = mysqli_connect ($serverBDD, $userBDD, $mdpBDD, $nomBDD);
		$sqlQuery = "INSERT INTO utilisateur(nom,prenom,mdp,email,adresse) VALUES ('$nom','$prenom','$mdp','$email','$adresse')";
		$resultat= mysqli_query($connexion, $sqlQuery);
}
*/

?>