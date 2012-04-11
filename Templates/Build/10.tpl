<h1 class="titleInHeader">Raktár <span class="level">szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid10">
<div class="build_desc">
<a href="#" onclick="return Travian.Game.iPopup(10,4, 'gid');" class="build_logo">
<img class="building big white g10" src="img/x.gif" alt="Raktár">
</a>
A raktáradban a fát az agyagot és a vasat tárolod. A raktár szintjének növelésével a tárolókapacitást növeled.
</div>

	<table cellpadding="1" cellspacing="1" id="build_value">
    <tr>
			<th>A raktár mérete:</th>
			<td><b><?php echo $bid10[$village->resarray['f'.$id]]['attri']; ?></b></td>
		</tr>
    	<tr>
        <?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
			<th>A raktár mérete  <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
			<td><b><?php echo $bid10[$village->resarray['f'.$id]+1]['attri']; ?></b></td>
        <?php
        }
        ?>
	</tr>
	</table>
 <?php 
include("upgrade.tpl");
?>
</p></div>