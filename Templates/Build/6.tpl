<h1 class="titleInHeader">Agyagégető <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid6">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(6,4);" class="build_logo">
	<img class="building big white g6" src="img/x.gif" alt="Agyagégető" title="Agyagégető" />
</a>
Az agyagégetőben az agyagot téglákká égetik. Minél magasabb szintre van kiépítve az agyagégető, annál nagyobb lesz az agyagkitermelés növekedési százaléka.

Maximálisan 25 százalékkal növekedhet a termelés.</div>


	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Termelés növekedés a jelenlegi szinten:</th>
			<td><b><?php echo $bid6[$village->resarray['f'.$id]]['attri']; ?></b>%</td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Termelés növekedés a következő, <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid6[$village->resarray['f'.$id]+1]['attri']; ?></b>%</td>
            <?php
            }
            ?>
		</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>