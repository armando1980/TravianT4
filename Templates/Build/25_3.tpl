<h1 class="titleInHeader">Rezidencia <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid25">
<div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(25,4, 'gid');" class="build_logo">
        <img class="building big white g25" src="img/x.gif" alt="Rezidencia" title="Rezidencia" /> </a>
        A rezidencia egy kis kastély, ahol az uralkodó tartózkodik, ha látogatóba érkezik. A rezidencia megléte megakadályozza a támadókat, hogy elfoglalják a falut.</div>

<?php
include("upgrade.tpl"); include("25_menu.tpl"); ?>
A támadás amit egy ellenséges játékos okoz saját törzse vezetőjével csökkenti a falu hűségét. Ha a falu hűsége eléri a 0-át, akkor a falu lakossága úgy dönt elhagy téged, és a támadód városává vállik. A falu hűsége jelenleg:  <b><?php echo $database->getVillageField($village->wid, 'loyalty'); ?></b>%. <br><br><b>Főfalut nem lehet elfoglalni </b></div>