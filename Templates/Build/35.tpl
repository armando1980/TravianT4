<h1 class="titleInHeader">Sörfőzde <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

    <div id="build" class="gid35">
    <div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(35,4);" class="build_logo">
        <img class="building big white g35" src="img/x.gif" alt="Sörfőzde" title="Sörfőzde"></a>
        A germán sörfőzdében készített italokkal a csata előtt a katonák bátorra ihatják magukat. Magasabb kiépítettségi szinten az italok is finomabbak és a támadó bónusz is növekszik szintenként 1%-al. A sörfesztivál 72 órán át tart. A sörfesztivál alatt a törzsi vezető meggyőző ereje feleződik, és a katapult csak véletlen célpontra lőhet.</div>

	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Támadő bónusz:</th>
			<td><b><?php echo $bid35[$village->resarray['f'.$id]]['attri']; ?></b>%</td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Támadó bónusz <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid35[$village->resarray['f'.$id]+1]['attri']; ?></b>%</td>
            <?php
            }
            ?>
		</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>