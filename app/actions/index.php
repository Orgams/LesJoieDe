<?php
//conection
$link = mysqli_connect("localhost","root","","lj2corio") or die("Error " . mysqli_error($link));

if (isset($_GET['page'])){$page = $_GET['page'];}
else{$page = 1;}

$nbItemParPage = 1;
$offset = $nbItemParPage * ($page - 1);

//Recup
$query = "SELECT * FROM tickets ORDER BY dateheure DESC, id DESC LIMIT $offset, $nbItemParPage" or die("Error " . mysqli_error($link));

$tickets = $link->query($query);

$query = "SELECT * FROM tickets ORDER BY dateheure" or die("Error " . mysqli_error($link));
$result2 = $link->query($query);
$nbtickets = $result2->num_rows;
$nbpages = ceil($nbtickets / $nbItemParPage); 

$row = mysqli_fetch_array($tickets);

?>
