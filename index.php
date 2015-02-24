<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Les Joies de Coriolis</title>
<link rel="stylesheet" type="text/css" href="css/global.css"/>
</head>

<body>
<?php
//conection
$link = mysqli_connect("localhost","lj2corio","BP4CT9M6AxCmffK2","lj2corio") or die("Error " . mysqli_error($link));

//pagination
$nbitemparpage = 1;

if (isset($_GET['page']))
{
	$page = $_GET['page'];
}
else
{
	$page = 1;
}

$offset = $nbitemparpage * ($page - 1);

//récup
$query = "SELECT * FROM tickets ORDER BY dateheure DESC, id DESC LIMIT $offset, $nbitemparpage" or die("Error " . mysqli_error($link));

$result = $link->query($query);

$query = "SELECT * FROM tickets ORDER BY dateheure" or die("Error " . mysqli_error($link));
$result2 = $link->query($query);
$nbtickets = $result2->num_rows;
$nbpages = ceil($nbtickets / $nbitemparpage); 
?>
<div id="pagination">
<?php
	if ($page>1)
	{
		//ya précédente
		$precedente = $page-1;
		echo "<div id='prec'><a href='index.php?page=$precedente'>PRECEDENTE [$precedente]</a></div>";
	}
	
	if ($page < $nbpages)
	{
		//ya suivante
		$suivante = $page+1;
		echo "<div id='suiv'><a href='index.php?page=$suivante'>SUIVANTE [$suivante]</a></div>";
	}
?>
</div>
<div id="tickets">
<?php

while($row = mysqli_fetch_array($result)) { 
echo "<div class='ticket'>";
	
	echo "<div class='titre'>";
		echo $row["titre"];
	echo "</div>";
	echo "<div class='divgif'>";
		echo '<img class="imagegif" src="' . $row["url"] . '"><br>';
	echo "</div>";
	echo "<div class='infos'>";
		echo 'le ' . $row["dateheure"] . ' par ' . $row["auteur"] . "<br>";
	echo "</div>";
  
echo "</div><br><hr><br>";
} 

?>
</div>



</body>

</html>