<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="auto.css">
</head>
<body>
<div id="pudlo">
<div id="baner">SAMOCHODY</div>
<div id="lewy">
<p>Wykaz samochodów:</p><br>
<?php
echo 'Hahaha';
?>

<p>Zamówienia:</p>

</div>
<div id="prawy">
<p>Pełne dane: Fiat</p>
<?php 
	$c = mysqli_connect('localhost', 'root', '','pytania_do_gier_edukacyjnych');
	$c -> query ('SET NAMES utf8');
	$c -> query ('SET CHARACTER_SET utf8_unicode_ci');
	$q = 	('Select Tresc_Pytania, OdpA, OdpB, OdpC, OdpD, Poprawna, Kategoria FROM dorosli 
WHERE id_pytania=0');
	$z = mysqli_query($c,$q);
	while($r = mysqli_fetch_array($z)) 
        {
		echo $r['Tresc_Pytania'].' '.'<br>'.$r['OdpA'].' '.'<br>'.$r['OdpB'].' 
'.'</br>'.$r['OdpC'].' '.'</br>'.$r['OdpD'].' '.'</br>';
		}
		$c -> query ('SET NAMES utf8');
		$c -> query ('SET CHARACTER_SET utf8_unicode_ci');
		$sql=("Select Tresc_Pytania, OdpA, OdpB, OdpC, OdpD, Poprawna, Kategoria FROM dorosli 
WHERE id_pytania=0"); 
		

$response = array();
$posts = array();
$result=mysqli_query($c,$sql);
while($posts=mysqli_fetch_array($result)) 
{ 

$posts['Tresc_Pytania'];
$posts['OdpA'];
$posts['OdpB'];
$posts['OdpC'];
$posts['OdpD'];
$posts['Poprawna'];
$posts['Kategoria'];
  

} 
$postss = array();
while($postss = mysqli_fetch_assoc($result)){
    $postss[] = array_map('utf8_encode', $posts);
}
echo json_encode($postss['$posts']);
$fp = fopen('results.json', 'w');
fwrite($fp, json_encode($postss));
fclose($fp);
echo json_last_error();




mysqli_close($c);
?>
</div>
<div id="stopka">
<table width=100%>
<tr><td a href="kwerendy.txt">Kwerendy</a></td>
<td align="center">Autor PESEL:90042377612</td>
<td align="right"><a href="auto.png"><img src="auto.png" alt="width:50px"/></a></td></tr>
</table>
</div>
</div>
</body>
</html>



