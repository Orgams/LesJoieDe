<?php
// 1 : on ouvre le fichier
$monfichier = fopen('C:\wamp\www\LesJoieDe\assets\images', 'w+');

// 2 : on fera ici nos opérations sur le fichier...
fputs($monfichier, 'Texte à écrire');

// 3 : quand on a fini de l'utiliser, on ferme le fichier
fclose($monfichier);
?>