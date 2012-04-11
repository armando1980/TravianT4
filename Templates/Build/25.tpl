<h1 class="titleInHeader">Rezidencia <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid25">
<div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(25,4, 'gid');" class="build_logo">
        <img class="building big white g25" src="img/x.gif" alt="Rezidencia" title="Rezidencia" /> </a>
        A rezidencia egy kis kastély, ahol az uralkodó tartózkodik, ha látogatóba érkezik. A rezidencia megléte megakadályozza a támadókat, hogy elfoglalják a falut.</div>

<?php
include("upgrade.tpl");
include("25_menu.tpl");
if ($village->capital == 1) {
        echo "<p class=\"none\">Ez a falu a főfalud</p>";
}
if($village->resarray['f'.$id] >= 10){
        include ("25_train.tpl");
}
else{
        echo '<div class="c">Új falu alapításához szükséged van egy 10-es vagy egy 20-as szintű rezidenciára</div>';
}



?>
</div><div class="clear">&nbsp;</div>
    <div class="clear"></div>