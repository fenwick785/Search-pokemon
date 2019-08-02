<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0-11/css/all.min.css">
<link rel="stylesheet" href="style.css">
<title>fiche pokemon</title>
</head>
<body>
<h2 class="display-4 text-center">FICHE POKEMON</h2><hr><br>


<?php 

require_once("./init.php");

if($_GET){
    echo "<pre>";print_r($_GET);echo"</pre>";

    extract($_GET);

    $fi = $bdd->query("SELECT e.type_pok, p.nom_pok, e.id_pok 
    FROM esttype e, pokemon p 
    WHERE e.id_pok = p.id_pok 
    AND id_pok = $id");

    $fiche = $fi->fetchAll(PDO::FETCH_NUM);
}

echo "<pre>";print_r($fiche);echo"</pre>";


?>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>