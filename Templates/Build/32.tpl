<h1 class="titleInHeader">Földfal <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

    <div id="build" class="gid32">
    <div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(32,4);" class="build_logo">
        <img class="building big white g32" src="img/x.gif" alt="Földfal" title="Földfal"></a>
        A földfal építésével könyebben megvédheted magad a támadó barbár hordákkal szemben. Magasabb szint nagyobb védelmi bónuszt ad a védekező csapatoknak. </div>

<table cellpadding="1" cellspacing="1" id="build_value">
        <tr>
            <th>Aktuális védelmi bónusz:</th>
            <td><b><?php echo $bid32[$village->resarray['f'.$id]]['attri']; ?>%</b></td>
        </tr><tr>
        <?php 
        if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) {
        ?>
            <th>Védelmi bónusz a következő (<?php echo $village->resarray['f'.$id]+1; ?>) szinten:</th>

            <td><b><?php echo $bid32[$village->resarray['f'.$id]+1]['attri']; ?>%</b></td>
            <?php
            }
            ?>
        </tr></table>
<?php 
include("upgrade.tpl");
?>
        </p>
         </div>