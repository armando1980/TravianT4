<h1 class="titleInHeader">Nagy Magtár <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

    <div id="build" class="gid39">
    <div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(39,4);" class="build_logo">
        <img class="building big white g39" src="img/x.gif" alt="Nagy Magtár" title="Nagy Magtár"></a>
        A magtárban, a farmon termesztett búzát tárolják. A nagy magtárban sokkal több búzát tárolhatsz, mint a normál társaiban.</div>

	<table cellpadding="1" cellspacing="1" id="build_value">
	<tr>
		<th>Tárhely:</th>
		<td><b><?php echo $bid39[$village->resarray['f'.$id]]['attri']; ?></b></td>
	</tr>
    
	<tr>
<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
		<th>Tárhely a következő (<?php echo $village->resarray['f'.$id]+1; ?>) szinten:</th>
		<td><b><?php echo $bid39[$village->resarray['f'.$id]+1]['attri']; ?></b></td>
        <?php
            }
            ?>
	</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>