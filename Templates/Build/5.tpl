<h1 class="titleInHeader">Fűrészüzem <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid5">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(5,4);" class="build_logo">
	<img class="building big white g5" src="img/x.gif" alt="Fűrészüzem" title="Fűrészüzem" />
</a>
Itt, a favágóid által ideszállított fát dolgozzák fel.

A fűrészüzemed szintjétől függően akár 25%-kal növelheted a fakitermelésed.</div>


	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Termelés növekedés a jelenlegi szinten:</th>
			<td><b><?php echo $bid5[$village->resarray['f'.$id]]['attri']; ?></b>%</td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Termelés növekedés a következő, <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid5[$village->resarray['f'.$id]+1]['attri']; ?></b>%</td>
            <?php
            }
            ?>
		</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>