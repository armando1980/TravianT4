<h1 class="titleInHeader">Főépület <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid15">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(15,4);" class="build_logo">
<img class="building big white g15" src="img/x.gif" alt="Főépület" title="Főépület" />
</a>A főépületben laknak a falu építészei. Minél magasabb szintre van kiépítve a főépület, annál gyorsabban tudsz épületeket építeni.</div>


	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Jelenlegi építési idő:</th>
			<td><b><?php echo round($bid15[$village->resarray['f'.$id]]['attri']); ?></b> százalék</td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Építési idő <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo round($bid15[$village->resarray['f'.$id]+1]['attri']); ?></b> százalék</td>
            <?php
            }
            ?>
		</tr>
	</table>
	
<?php 
include("upgrade.tpl");
if($village->resarray['f'.$id] >= 10){
	include("Templates/Build/15_1.tpl");
}
?>
</p></div>
