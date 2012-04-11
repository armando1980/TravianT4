<h1 class="titleInHeader">Kovács <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid13">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(12,4);" class="build_logo">
<img class="building big white g13" src="img/x.gif" alt="Kovács" title="Kovács" />
</a>
A harcosok páncélját és fegyverét, a kovácsnál lehet javítani, erősíteni Magasabb szinten a páncélzatok is jobb védelmet nyújtanak, a fegyverek nagyobbat vágnak.<?php
include("upgrade.tpl");
	if ($building->getTypeLevel(12) > 0) {
		include("12_upgrades.tpl");
	} else {
		echo "<p><b>Az utolsó szint lehetséges.</b><br>\n";
	}
?>
</div>
</div>
