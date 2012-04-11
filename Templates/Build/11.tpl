<h1 class="titleInHeader">Magtár <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid11">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(11,4);" class="build_logo">
	<img class="building big white g11" src="img/x.gif" alt="Magtár" title="Magtár" />
</a>
A magtárban a farmjaidon termesztett búzát tudják eltárolni. Magasabb szinten többet tárolhatsz. </div>

	<table cellpadding="1" cellspacing="1" id="build_value">
	<tr>
		<th>A magtár mérete:</th>
		<td><b><?php echo $bid11[$village->resarray['f'.$id]]['attri']; ?></b></td>
	</tr>
    
	<tr>
<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
		<th>A magtár mérete <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
		<td><b><?php echo $bid11[$village->resarray['f'.$id]+1]['attri']; ?></b></td>
        <?php
            }
            ?>
	</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>