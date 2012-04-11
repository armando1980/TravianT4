<h1 class="titleInHeader">Hősök háza <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

    <div id="build" class="gid37">
    <div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(37,4);" class="build_logo">
        <img class="building big white g37" src="img/x.gif" alt="Hősök háza" title="Hősök háza"></a>
        A Hős ház 10., 15. és 20. szintjén el tudsz foglalni 1, 2, majd 3 oázist a hősöddel. Az oázis típusától függően növeli a termelésedet (néhány oázis kettőt egyszerre).</div>
        
       <?php           
            include ("upgrade.tpl");             
            include("37_heromansion.tpl");
        ?>
        
    </div>
