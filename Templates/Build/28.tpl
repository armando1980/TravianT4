<h1 class="titleInHeader">Kereskedelmi központ <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

    <div id="build" class="gid28">
    <div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(28,4);" class="build_logo">
        <img class="building big white g28" src="img/x.gif" alt="Kereskedelmi központ" title="Kereskedelmi központ"></a>
        A kereskedelmi központban lehet a kereskedők szekereit feljavítani és erősebb lovakkal felszerelni. Minél magasabb szintre van kiépítve a kereskedelmi központ, annál több nyersanyagot tudnak szállítani a kereskedők.</div>


	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th>Kereskedő szállítási kapacitása:</th>
			<td><b><?php echo $bid28[$village->resarray['f'.$id]]['attri']; ?>%</b></td>
		</tr>
		<tr>
		<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>Szállítási kapacitás <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid28[$village->resarray['f'.$id]+1]['attri']; ?>%</b></td>
            <?php
            }
            ?>
		</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>
