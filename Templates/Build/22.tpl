<h1 class="titleInHeader">Akadémia <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

<div id="build" class="gid22">
<div class="build_desc">
<a href="#" onClick="return Popup(22,4);" class="build_logo">

	<img class="building big white g22" src="img/x.gif" alt="Akadémia" title="Akadémia" />
</a>
Az akadémián tudsz új egységeket kifejleszteni. <br><br>Minél jobban ki van építve annál jobb egységeket tudsz kiképezni.</div>
<?php
include("upgrade.tpl");
?>
<div class="clear"></div>

<?php
	if ($building->getTypeLevel(22) > 0) {
		include("22_".$session->tribe.".tpl");
	} else {
		echo "<p><b>Nincs fejleszthető egység</b><br></p>\n";
	}
?>

         </div>
<div class="clear">&nbsp;</div>
<div class="clear"></div>