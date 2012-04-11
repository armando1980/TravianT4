<h1 class="titleInHeader">Palota <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid26">
<div class="build_desc">
	<a href="#" onClick="return Travian.Game.iPopup(26,4, 'gid');" class="build_logo"> 
    <img class="building big white g26" src="img/x.gif" alt="Palota" title="Palota" /> </a>
	A palotában a birodalom uralkodója lakik. Ha a faluban van egy palota, akkor a falu kinevezhető főfalunak.</div>


<?php 
include("upgrade.tpl");
include("26_menu.tpl"); 
?>
A támadás amit egy ellenséges játékos okoz saját törzse vezetőjével csökkenti a falu hűségét. Ha a falu hűsége eléri a 0-át, akkor a falu lakossága úgy dönt elhagy téged, és a támadód városává vállik. A falu hűsége jelenleg:  <b><?php echo $database->getVillageField($village->wid, 'loyalty'); ?></b>%. <br><br><b>Főfalut nem lehet elfoglalni </b></div>