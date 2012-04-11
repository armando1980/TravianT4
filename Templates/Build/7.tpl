<h1 class="titleInHeader">Vasöntöde <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid7">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(7,4);" class="build_logo">
	<img class="building big white g7" src="img/x.gif" alt="Vasöntöde" title="Vasöntöde" />
</a>
Itt a vasat olvasztják meg. A szintjétől függően a vasöntödéd akár

25%-kal is növelheti a vastermelésed.</div>


	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Termelés növekedés a jelenlegi szinten:</th>
			<td><b><?php echo $bid7[$village->resarray['f'.$id]]['attri']; ?></b>%</td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Termelés növekedés a következő, <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid7[$village->resarray['f'.$id]+1]['attri']; ?></b>%</td>
            <?php
            }
            ?>
		</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>