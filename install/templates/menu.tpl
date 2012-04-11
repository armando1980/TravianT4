<?php
	if(isset($_GET['s'])) {
	switch($_GET['s']) {
		case 1:
		echo "<li class=\"c2 f9\"><a href=\"#\">Kezdés</a></li><li class=\"active\"><a href=\"#\">Beállítások</a></li><li class=\"c1 f9\"><a href=\"#\">Adatbázis</a></li><li class= \"c1 f9\"><a href=\"#\">Táblák</a></li><li class=\"c1 f9\"><a href=\"#\">Multihunter</a></li><li class=\"c1 f9\"><a href=\"#\">Oázis</a></li><li class=\"c1 f9\"><a href=\"#\">Kész</a></li>";

		break;
		case 2:
		echo "<li class=\"c2 f9\"><a href=\"#\">Kezdés</a></li><li class=\"c1 f9\"><a href=\"#\">Beállítások</a></li><li class=\"active\"><a href=\"#\">Adatbázis</a></li><li class= \"c1 f9\"><a href=\"#\">Táblák</a></li><li class=\"c1 f9\"><a href=\"#\">Multihunter</a></li><li class=\"c1 f9\"><a href=\"#\">Oázis</a></li><li class=\"c1 f9\"><a href=\"#\">Kész</a></li>";
		break;
		case 3:
		echo "<li class=\"c2 f9\"><a href=\"#\">Kezdés</a></li><li class=\"c1 f9\"><a href=\"#\">Beállítások</a></li><li class=\"c1 f9\"><a href=\"#\">Adatbázis</a></li><li class= \"active\"><a href=\"#\">Táblák</a></li><li class=\"c1 f9\"><a href=\"#\">Multihunter</a></li><li class=\"c1 f9\"><a href=\"#\">Oázis</a></li><li class=\"c1 f9\"><a href=\"#\">Kész</a></li>";
		break;
		case 4:
		echo "<li class=\"c2 f9\"><a href=\"#\">Kezdés</a></li><li class=\"c1 f9\"><a href=\"#\">Beállítások</a></li><li class=\"c1 f9\"><a href=\"#\">Adatbázis</a></li><li class= \"c1 f9\"><a href=\"#\">Táblák</a></li><li class=\"active\"><a href=\"#\">Multihunter</a></li><li class=\"c1 f9\"><a href=\"#\">Oázis</a></li><li class=\"c1 f9\"><a href=\"#\">Kész</a></li>";
		break;
        case 5:
		echo "<li class=\"c2 f9\"><a href=\"#\">Kezdés</a></li><li class=\"c1 f9\"><a href=\"#\">Beállítások</a></li><li class=\"c1 f9\"><a href=\"#\">Adatbázis</a></li><li class= \"c1 f9\"><a href=\"#\">Táblák</a></li><li class=\"c1 f9\"><a href=\"#\">Multihunter</a></li><li class=\"active\"><a href=\"#\">Oázis</a></li><li class=\"c1 f9\"><a href=\"#\">Kész</a></li>";
		break;
        case 6:
        echo "<li class=\"c2 f9\"><a href=\"#\">Kezdés</a></li><li class=\"c1 f9\"><a href=\"#\">Beállítások</a></li><li class=\"c1 f9\"><a href=\"#\">Adatbázis</a></li><li class= \"c1 f9\"><a href=\"#\">Táblák</a></li><li class=\"c1 f9\"><a href=\"#\">Multihunter</a></li><li class=\"c1 f9\"><a href=\"#\">Oázis</a></li><li class=\"active\"><a href=\"#\">Kész</a></li>";
        break;
	}
    
}
else {
	echo "<li class=\"active\"><a href=\"#\">Kezdés</a></li><li class=\"c1 f9\"><a href=\"#\">Beállítások</a></li><li class=\"c1 f9\"><a href=\"#\">Adatbázis</a></li><li class= \"c1 f9\"><a href=\"#\">Táblák</a></li><li class=\"c1 f9\"><a href=\"#\">Multihunter</a></li><li class=\"c1 f9\"><a href=\"#\">Oázis</a></li><li class=\"c1 f9\"><a href=\"#\">Kész</a></li>";
}
?>