<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="style.css">
<title>pokemon</title>
</head>
<body>
<?php
require_once("./init.php");


//RECHERCHE PAR ID POKEMON
if($_POST){
    extract($_POST);
    if(!empty($id_pok)){
    // recherche avec id_pok
    //echo"<pre>";print_r($_POST);echo"</pre>";
    $result = $bdd->query("SELECT * FROM pokemon WHERE id_pok = $id_pok");
    $nom = $result->fetch(PDO::FETCH_ASSOC);
    echo "<pre>";print_r($nom);echo"</pre>";
    }
}
?>


<!-- RECHERCHE PAR TYPE -->

<?php if($_POST):
    extract($_POST);
    $ty = $bdd->query("SELECT e.type_pok, p.nom_pok, e.id_pok FROM esttype e, pokemon p WHERE e.id_pok = p.id_pok AND type_pok = '$type_pok'");
    $type = $ty->fetchAll(PDO::FETCH_NUM);
   // echo "<pre>";print_r($type);echo"</pre>";

?>
   <table>
      <thead>
        <th>Type</th>
        <th>nom</th>
        <th>ID</th>
</thead>
<tbody>
    <?php foreach($type as $tab):  extract ($tab); ?>
     
        <tr>
        
            <td><?=$tab[0];?></td>
            <td> <a href="fiche.php?id=<?=$tab[2]?>"><?=$tab[1];?></a></td>
            <td> <?=$tab[2];?></td>
</tr>
        <?php endforeach; ?>
    
 
  </tbody>
  </table>
<?php endif;?>

<h2 class="display-4 text-center">POKEMON</h2><hr><br>

<form method="POST" class="col-md-4 offset-md-4" enctype="multipart/form-data">

<div class="form-group">
   <label for="inputAddress">ID Pokemon:</label>
   <input type="number" class="form-control" id="inputAddress" placeholder="ID Pokemon" name="id_pok">
 </div>

 <div class="form-group">
    <label for="exampleFormControlSelect1">Dresseur:</label>
    <select class="form-control" id="exampleFormControlSelect1" name="id_dress">
      <option>selectionner dresseur</option>
      <option value="2">pierre</option>
      <option value="3">ondine</option>
      <option value="4">major bob</option>
      <option value="5">erika</option>
      <option value="6">koga</option>
      <option value="7">morgane</option>
      <option value="8">auguste</option>
      <option value="9">giovani</option>
      <option value="10">olga</option>
      <option value="11">aldo</option>
      <option value="12">agatha</option>
      <option value="13">peter</option>
    </select>
  </div>

 <div class="form-group">
    <label for="exampleFormControlSelect1">Type Pokemon:</label>
    <select class="form-control" id="exampleFormControlSelect1" name="type_pok">
      <option>selectionner type</option>
      <option value="plante">plante</option>
      <option value="eau">eau</option>
      <option value="feu">feu</option>
      <option value="poison">poison</option>
      <option value="insecte">insecte</option>
      <option value="vol">vol</option>
      <option value="normal">normal</option>
      <option value="electrique">electrique</option>
      <option value="sol">sol</option>
      <option value="combat">combat</option>
      <option value="psy">psy</option>
      <option value="roche">roche</option>
      <option value="glace">glace</option>
      <option value="spectre">spectre</option>
      <option value="dragon">dragon</option>
    </select>
  </div>

 <button type="submit" class="btn btn-dark col-md-12">rechercher</button>
 <br>
</form>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>