<h1 class="titleInHeader">Malom <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid8">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(8,4);" class="build_logo">
	<img class="building big white g8" src="img/x.gif" alt="Malom" title="Malom" />
</a>
A malomban a búzát lisztté őrlik. Minél magasabb szintre van kiépítve a búzamalom, annál nagyobb lesz a búzatermesztés növekedési százaléka.

Maximálisan 25 százalékkal növekedhet a búzatermesztés.</div>


	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Termelés növekedés a jelenlegi szinten:</th>
			<td><b><?php echo $bid8[$village->resarray['f'.$id]]['attri']; ?></b>%</td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Termelés növekedés a következő,  <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid8[$village->resarray['f'.$id]+1]['attri']; ?></b>%</td>
            <?php
            }
            ?>
		</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>