<h1 class="titleInHeader">Pékség <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid9">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(9,4);" class="build_logo">
	<img class="building big white g9" src="img/x.gif" alt="Pékség" title="Pékség" />
</a>
Itt a malmodban őrölt lisztből sütnek kenyeret. A malom termelésével kiegészülve

a búzatermelésed 50%-kal növekedhet..</div>


	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Termelés növekedés a jelenlegi szinten:</th>
			<td><b><?php echo $bid9[$village->resarray['f'.$id]]['attri']; ?></b>%</td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Termelés növekedés a következő,  <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid9[$village->resarray['f'.$id]+1]['attri']; ?></b>%</td>
            <?php
            }
            ?>
		</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>