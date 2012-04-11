<h1 class="titleInHeader">Rejtekhely <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

<div id="build" class="gid23"><div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(23,4);" class="build_logo">
	<img class="building big white g23" src="img/x.gif" alt="Rejtekhely" title="Rejtekhely" />
</a>
A rejtekhely arra szolgál, ha támadás éri a falvadat, a lakosok eldugják a nyersanyagokat, már amennyi persze befér a rejtekhelyre. Az ide elrejtett nyersanyagokat nem lehet elrabolni.</div>

	<table cellpadding="1" cellspacing="1" id="build_value">
	<tr>
		<th>Rejtekhely mérete:</th>
		<td><b>
        <?php
		if($session->tribe == 3) {
		echo $bid23[$village->resarray['f'.$id]]['attri']*2;
        } else {
        echo $bid23[$village->resarray['f'.$id]]['attri'];
        }
        ?>        
        </b> egységnyi</td>
	</tr>
	<tr>
<?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
		<th>Rejtekhely mérete következő <?php echo $village->resarray['f'.$id]+1; ?> szinten:</th>
		<td><b>
        <?php
		if($session->tribe == 3) {
		echo $bid23[$village->resarray['f'.$id]+1]['attri']*2;
        } else {
        echo $bid23[$village->resarray['f'.$id]+1]['attri'];
        }
        ?>
        
        </b> egységnyi</td>
        <?php
            }
            ?>
	</tr>
	</table>
<?php 
include("upgrade.tpl");
?>
</p></div>