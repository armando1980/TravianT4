<h1 class="titleInHeader">Nagy Raktár <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

    <div id="build" class="gid38">
    <div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(38,4);" class="build_logo">
        <img class="building big white g38" src="img/x.gif" alt="Nagy Raktár" title="Nagy Raktár"></a>
        A raktárodban, a fát az agyagot és a vasat tárolod. A Nagy Raktárban több hely van, hogy a nyersanyagaidat szárazabb és biztonságosabb helyen tárolhasd, mint egy normál raktárban.</div>

	<table cellpadding="1" cellspacing="1" id="build_value">
	<tr>
		<th>Tárhely:</th>
		<td><b><?php echo $bid38[$village->resarray['f'.$id]]['attri']; ?></b></td>
	</tr>
	<tr>
<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
		<th>Tárhely a következő (<?php echo $village->resarray['f'.$id]+1; ?>) szinten:</th>
		<td><b><?php echo $bid38[$village->resarray['f'.$id]+1]['attri']; ?></b></td>
        <?php
            }
            ?>
	</tr>
	</table>
 <?php 
include("upgrade.tpl");
?>
</p></div>