<?php
$link = mysql_connect('localhost', 'root', '');
if (!$link) {
    die( mysql_error());
}


$db_selected = mysql_select_db('komis', $link);
if (!$db_selected) {
    die (mysql_error());
} else {
	echo "polązylo";
}
?>