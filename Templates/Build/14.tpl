<h1 class="titleInHeader">Gyakorlótér <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid14">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(14,4);" class="build_logo">
<img class="building big white g14" src="img/x.gif" alt="Gyakorlótér" title="Gyakorlótér" />
</a>
A gyakorlótéren a csapataid kitartását tudod növelni. Magasabb szintű épület esetén a katonáid gyorsabban tesznek meg minden utat, amely végcélja minimálisan 20 négyzet távolságra van.
</div>

	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Bónusz:</th>
			<td><b><?php echo $bid14[$village->resarray['f'.$id]]['attri']; ?></b></td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Bónusz <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid14[$village->resarray['f'.$id]+1]['attri']; ?></b></td>
            <?php
            }
            ?>
		</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>