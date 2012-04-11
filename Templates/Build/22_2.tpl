
<?php 
$fail = $success = 0;
$acares = $technology->grabAcademyRes();
for($i=12;$i<=19;$i++) {
	if($technology->meetRRequirement($i) && !$technology->getTech($i) && !$technology->isResearch($i,1)) {
    	echo "<div class=\"build_details researches\">
        <div class=\"research\">
			<div class=\"bigUnitSection\">
				<a href=\"#\" onclick=\"return Travian.Game.iPopup(".$i.",1);\">
					<img class=\"unitSection u".$i."Section\" src=\"img/x.gif\" alt=\"".$technology->getUnitName($i)."\">
				</a>
				<a href=\"#\" class=\"zoom\" onclick=\"return Travian.Game.unitZoom(".$i.");\">
					<img class=\"zoom\" src=\"img/x.gif\" alt=\"zoom in\">
				</a>
			</div>
			<div class=\"information\">
<div class=\"title\">
<a href=\"#\" onclick=\"return Travian.Game.iPopup(".$i.",1);\">
<img class=\"unit u".$i."\" src=\"img/x.gif\" alt=\"".$technology->getUnitName($i)."\"></a>
<a href=\"#\" onclick=\"return Travian.Game.iPopup(".$i.",1);\">".$technology->getUnitName($i)."</a>
</div>
<div class=\"costs\">
<div class=\"showCosts\">
                    <span class=\"resources r1 little_res\"><img class=\"r1\" src=\"img/x.gif\" alt=\"Fa\">".${'r'.$i}['wood']."</span>
                    <span class=\"resources r2 little_res\"><img class=\"r2\" src=\"img/x.gif\" alt=\"Agyag\">".${'r'.$i}['clay']."</span>
                    <span class=\"resources r3 little_res\"><img class=\"r3\" src=\"img/x.gif\" alt=\"Vasérc\">".${'r'.$i}['iron']."</span>
                    <span class=\"resources r4 little_res\"><img class=\"r4\" src=\"img/x.gif\" alt=\"Búza\">".${'r'.$i}['crop']."</span>
                    <div class=\"clear\"></div>
                    <span class=\"clocks\"><img class=\"clock\" src=\"img/x.gif\" alt=\"duration\">";
                    echo $generator->getTimeFormat(round(${'r'.$i}['time'] * ($bid22[$village->resarray['f'.$id]]['attri'] / 100)/SPEED));
                    echo "</span>";
                    if($session->userinfo['gold'] >= 3 && $building->getTypeLevel(17) > 1) {
                   echo "<button type=\"button\" value=\"npc\" class=\"icon\" onclick=\"window.location.href = 'build.php?gid=17&t=3&r1=".${'r'.$i}['wood']."&r2=".${'r'.$i}['clay']."&r3=".${'r'.$i}['iron']."&r4=".${'r'.$i}['crop']."'; return false;\"><img src=\"img/x.gif\" class=\"npc\" alt=\"npc\"></button>
                    <div class=\"clear\"></div>";
                   }
                   if(${'r'.$i}['wood'] > $village->maxstore || ${'r'.$i}['clay'] > $village->maxstore || ${'r'.$i}['iron'] > $village->maxstore) {
                    echo "<br><div class=\"contractLink\"><span class=\"none\">Fejleszd a raktárat</span></div>
</div>
<div class=\"clear\">&nbsp;</div>
</div></div>";
echo "<div class=\"clear\">&nbsp;</div></div></div>";
                }
                else if(${'r'.$i}['crop'] > $village->maxcrop) {
                    echo "<br><div class=\"contractLink\"><span class=\"none\">Fejleszd a magtárat</span></div>
</div>
<div class=\"clear\">&nbsp;</div>
</div></div>";
                    echo "<div class=\"clear\">&nbsp;</div></div></div>";
                }
                   else if(${'r'.$i}['wood'] > $village->awood || ${'r'.$i}['clay'] > $village->aclay || ${'r'.$i}['iron'] > $village->airon || ${'r'.$i}['crop'] > $village->acrop) {
                   	$time = $technology->calculateAvaliable(22,${'r'.$i});
                    echo "<br><div class=\"contractLink\"><span class=\"none\">Elegendő nyersanyag ".$time[0]." -> ".$time[1]." </span></div>
</div>
<div class=\"clear\">&nbsp;</div>
</div></div>";
                    echo "<div class=\"clear\">&nbsp;</div></div></div>";
                }
                else if ( count($acares) > 0 ) {
                echo "<br><div class=\"contractLink\"><span class=\"none\">
                    Fejlesztés folyamatban</span></div></div></div></div>
                    <div class=\"clear\">&nbsp;</div>
                    </div></div>";
                }
                else {
                
                
                    echo "<div class=\"contractLink\"><button type=\"button\" value=\"Fejlesztés\" class=\"build\" onclick=\"window.location.href = 'build.php?id=$id&amp;a=$i&amp;c=".$session->mchecker."'; return false;\">
<div class=\"button-container\"><div class=\"button-position\"><div class=\"btl\"><div class=\"btr\"><div class=\"btc\"></div></div></div>
<div class=\"bml\"><div class=\"bmr\"><div class=\"bmc\"></div></div></div><div class=\"bbl\"><div class=\"bbr\"><div class=\"bbc\"></div></div></div>
</div><div class=\"button-contents\">Fejlesztés</div></div></button></div>
</div>
<div class=\"clear\">&nbsp;</div>
</div></div><div class=\"clear\">&nbsp;</div></div></div>";
                }
                $success += 1;
    }
    else {
    $fail += 1;
    }
}
if($success == 0) {
echo "<div class=\"build_details researches\"><div class=\"noResearchPossible\"><span class=\"none\">Nincs fejleszthető egység</span></div></div>";
}
?>		
<?php if($fail > 0) { 
echo "<div class=\"switch\"><a id=\"researchFutureLink\" class=\"openedClosedSwitch switchOpened\" href=\"#\" onclick=\"Travian.toggleSwitch($('researchFuture'), this);\">Továbbiak</a></div>";
		echo "<div id=\"researchFuture\" class=\"researches hide \">";
     if(!$technology->meetRRequirement(13) && !$technology->getTech(13)) {
     echo"<div class=\"research\"><div class=\"bigUnitSection\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(13,1);\"><img class=\"unitSection u13Section\" src=\"img/x.gif\" alt=\"Csatabárdos\"></a><a href=\"#\" class=\"zoom\" onclick=\"return Travian.Game.unitZoom(13);\"><img class=\"zoom\" src=\"img/x.gif\" alt=\"zoom in\"></a></div><div class=\"information\"><div class=\"title\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(13,1);\"><img class=\"unit u13\" src=\"img/x.gif\" alt=\"Csatabárdos\"></a><a href=\"#\" onclick=\"return Travian.Game.iPopup(13,1);\">Csatabárdos</a></div><div class=\"costs\"><div class=\"showCosts\"><span class=\"resources r1 little_res\"><img class=\"r1\" src=\"img/x.gif\" alt=\"Fa\">".${r13}['wood']."</span><span class=\"resources r2 little_res\"><img class=\"r2\" src=\"img/x.gif\" alt=\"Agyag\">".${r13}['clay']."</span><span class=\"resources r3 little_res\"><img class=\"r3\" src=\"img/x.gif\" alt=\"Vasérc\">".${r13}['iron']."</span><span class=\"resources r4 little_res\"><img class=\"r4\" src=\"img/x.gif\" alt=\"Búza\">".${r13}['crop']."</span><div class=\"clear\"></div><span class=\"clocks\"><img class=\"clock\" src=\"img/x.gif\" alt=\"Időtartam\">";
	 echo $generator->getTimeFormat(round(${r13}['time'] * ($bid22[$village->resarray['f'.$id]]['attri'] / 100)/SPEED));
	 echo"</span><div class=\"clear\"></div></div></div><div class=\"contractLink\"><a href=\"#\">Akadémia</a><span class=\"level\"> szint 3</span>, <a href=\"#\">Kovács</a><span class=\"level\"> szint 1</span></div></div><div class=\"clear\"></div></div><hr>";
     }
     if(!$technology->meetRRequirement(14) && !$technology->getTech(14)) {
     echo "<div class=\"research\"><div class=\"bigUnitSection\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(14,1);\"><img class=\"unitSection u14Section\" src=\"img/x.gif\" alt=\"Scout\"></a><a href=\"#\" class=\"zoom\" onclick=\"return Travian.Game.unitZoom(14);\"><img class=\"zoom\" src=\"img/x.gif\" alt=\"zoom in\"></a></div><div class=\"information\"><div class=\"title\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(14,1);\"><img class=\"unit u14\" src=\"img/x.gif\" alt=\"Scout\"></a><a href=\"#\" onclick=\"return Travian.Game.iPopup(14,1);\">Felderítő</a></div><div class=\"costs\"><div class=\"showCosts\"><span class=\"resources r1 little_res\"><img class=\"r1\" src=\"img/x.gif\" alt=\"Wood\">".${r14}['wood']."</span><span class=\"resources r2 little_res\"><img class=\"r2\" src=\"img/x.gif\" alt=\"Clay\">".${r14}['clay']."</span><span class=\"resources r3 little_res\"><img class=\"r3\" src=\"img/x.gif\" alt=\"Iron\">".${r14}['iron']."</span><span class=\"resources r4 little_res\"><img class=\"r4\" src=\"img/x.gif\" alt=\"Crop\">".${r14}['crop']."</span><div class=\"clear\"></div><span class=\"clocks\"><img class=\"clock\" src=\"img/x.gif\" alt=\"duration\">";
	 echo $generator->getTimeFormat(round(${r14}['time'] * ($bid22[$village->resarray['f'.$id]]['attri'] / 100)/SPEED));
	 echo"</span><div class=\"clear\"></div></div></div><div class=\"contractLink\"><a href=\"#\">Akadémia</a><span class=\"level\"> szint 1</span>, <a href=\"#\">Főépület</a><span class=\"level\"> szint 5</span></div></div><div class=\"clear\"></div></div><hr>";
     }
     if(!$technology->meetRRequirement(15) && !$technology->getTech(15)) {
     echo "<div class=\"research\"><div class=\"bigUnitSection\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(15,1);\"><img class=\"unitSection u15Section\" src=\"img/x.gif\" alt=\"Paladin\"></a><a href=\"#\" class=\"zoom\" onclick=\"return Travian.Game.unitZoom(15);\"><img class=\"zoom\" src=\"img/x.gif\" alt=\"zoom in\"></a></div><div class=\"information\"><div class=\"title\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(15,1);\"><img class=\"unit u15\" src=\"img/x.gif\" alt=\"Paladin\"></a><a href=\"#\" onclick=\"return Travian.Game.iPopup(15,1);\">Paladin</a></div><div class=\"costs\"><div class=\"showCosts\"><span class=\"resources r1 little_res\"><img class=\"r1\" src=\"img/x.gif\" alt=\"Wood\">".${r15}['wood']."</span><span class=\"resources r2 little_res\"><img class=\"r2\" src=\"img/x.gif\" alt=\"Clay\">".${r15}['clay']."</span><span class=\"resources r3 little_res\"><img class=\"r3\" src=\"img/x.gif\" alt=\"Iron\">".${r15}['iron']."</span><span class=\"resources r4 little_res\"><img class=\"r4\" src=\"img/x.gif\" alt=\"Crop\">".${r15}['crop']."</span><div class=\"clear\"></div><span class=\"clocks\"><img class=\"clock\" src=\"img/x.gif\" alt=\"duration\">";
	 echo $generator->getTimeFormat(round(${r15}['time'] * ($bid22[$village->resarray['f'.$id]]['attri'] / 100)/SPEED));
	 echo"</span><div class=\"clear\"></div></div></div><div class=\"contractLink\"><a href=\"#\">Akadémia</a><span class=\"level\"> szint 5</span>, <a href=\"#\">Istálló</a><span class=\"level\"> szint 5</span></div></div><div class=\"clear\"></div></div><hr>";
     }
     if(!$technology->meetRRequirement(16) && !$technology->getTech(16)) {
     echo "<div class=\"research\"><div class=\"bigUnitSection\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(16,1);\"><img class=\"unitSection u16Section\" src=\"img/x.gif\" alt=\"Teuton Lovag\"></a><a href=\"#\" class=\"zoom\" onclick=\"return Travian.Game.unitZoom(16);\"><img class=\"zoom\" src=\"img/x.gif\" alt=\"zoom in\"></a></div><div class=\"information\"><div class=\"title\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(16,1);\"><img class=\"unit u16\" src=\"img/x.gif\" alt=\"Teuton Lovag\"></a><a href=\"#\" onclick=\"return Travian.Game.iPopup(16,1);\">Teuton Lovag</a></div><div class=\"costs\"><div class=\"showCosts\"><span class=\"resources r1 little_res\"><img class=\"r1\" src=\"img/x.gif\" alt=\"Wood\">".${r16}['wood']."</span><span class=\"resources r2 little_res\"><img class=\"r2\" src=\"img/x.gif\" alt=\"Clay\">".${r16}['clay']."</span><span class=\"resources r3 little_res\"><img class=\"r3\" src=\"img/x.gif\" alt=\"Iron\">".${r16}['iron']."</span><span class=\"resources r4 little_res\"><img class=\"r4\" src=\"img/x.gif\" alt=\"Crop\">".${r16}['crop']."</span><div class=\"clear\"></div><span class=\"clocks\"><img class=\"clock\" src=\"img/x.gif\" alt=\"duration\">";
	 echo $generator->getTimeFormat(round(${r16}['time'] * ($bid22[$village->resarray['f'.$id]]['attri'] / 100)/SPEED));
	 echo"</span><div class=\"clear\"></div></div></div><div class=\"contractLink\"><a href=\"#\">Akadémia</a><span class=\"level\"> szint 15</span>, <a href=\"#\">Istálló</a><span class=\"level\"> szint 10</span></div></div><div class=\"clear\"></div></div><hr>";
     }
     if(!$technology->meetRRequirement(17) && !$technology->getTech(17)) {
     echo "<div class=\"research\"><div class=\"bigUnitSection\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(17,1);\"><img class=\"unitSection u17Section\" src=\"img/x.gif\" alt=\"Faltörő kos\"></a><a href=\"#\" class=\"zoom\" onclick=\"return Travian.Game.unitZoom(17);\"><img class=\"zoom\" src=\"img/x.gif\" alt=\"zoom in\"></a></div><div class=\"information\"><div class=\"title\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(17,1);\"><img class=\"unit u17\" src=\"img/x.gif\" alt=\"Faltörő kos\"></a><a href=\"#\" onclick=\"return Travian.Game.iPopup(17,1);\">Faltörő kos</a></div><div class=\"costs\"><div class=\"showCosts\"><span class=\"resources r1 little_res\"><img class=\"r1\" src=\"img/x.gif\" alt=\"Wood\">".${r17}['wood']."</span><span class=\"resources r2 little_res\"><img class=\"r2\" src=\"img/x.gif\" alt=\"Clay\">".${r17}['clay']."</span><span class=\"resources r3 little_res\"><img class=\"r3\" src=\"img/x.gif\" alt=\"Iron\">".${r17}['iron']."</span><span class=\"resources r4 little_res\"><img class=\"r4\" src=\"img/x.gif\" alt=\"Crop\">".${r17}['crop']."</span><div class=\"clear\"></div><span class=\"clocks\"><img class=\"clock\" src=\"img/x.gif\" alt=\"duration\">";
	 echo $generator->getTimeFormat(round(${r17}['time'] * ($bid22[$village->resarray['f'.$id]]['attri'] / 100)/SPEED));
	 echo"</span><div class=\"clear\"></div></div></div><div class=\"contractLink\"><a href=\"#\">Akadémia</a><span class=\"level\"> szint 10</span>, <a href=\"#\">Műhely</a><span class=\"level\"> szint 1</span></div></div><div class=\"clear\"></div></div><hr>";
     }
     if(!$technology->meetRRequirement(18) && !$technology->getTech(18)) {
     echo "<div class=\"research\"><div class=\"bigUnitSection\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(18,1);\"><img class=\"unitSection u18Section\" src=\"img/x.gif\" alt=\"Katapult\"></a><a href=\"#\" class=\"zoom\" onclick=\"return Travian.Game.unitZoom(18);\"><img class=\"zoom\" src=\"img/x.gif\" alt=\"zoom in\"></a></div><div class=\"information\"><div class=\"title\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(18,1);\"><img class=\"unit u18\" src=\"img/x.gif\" alt=\"Katapult\"></a><a href=\"#\" onclick=\"return Travian.Game.iPopup(18,1);\">Katapult</a></div><div class=\"costs\"><div class=\"showCosts\"><span class=\"resources r1 little_res\"><img class=\"r1\" src=\"img/x.gif\" alt=\"Wood\">".${r18}['wood']."</span><span class=\"resources r2 little_res\"><img class=\"r2\" src=\"img/x.gif\" alt=\"Clay\">".${r18}['clay']."</span><span class=\"resources r3 little_res\"><img class=\"r3\" src=\"img/x.gif\" alt=\"Iron\">".${r18}['iron']."</span><span class=\"resources r4 little_res\"><img class=\"r4\" src=\"img/x.gif\" alt=\"Crop\">".${r18}['crop']."</span><div class=\"clear\"></div><span class=\"clocks\"><img class=\"clock\" src=\"img/x.gif\" alt=\"duration\">";
	 echo $generator->getTimeFormat(round(${r18}['time'] * ($bid22[$village->resarray['f'.$id]]['attri'] / 100)/SPEED));
	 echo"</span><div class=\"clear\"></div></div></div><div class=\"contractLink\"><a href=\"#\">Akadémia</a><span class=\"level\"> szint 15</span>, <a href=\"#\">Műhely</a><span class=\"level\"> szint 10</span></div></div><div class=\"clear\"></div></div><hr>";
     }
     if(!$technology->meetRRequirement(19) && !$technology->getTech(19)) {
     echo "<div class=\"research\"><div class=\"bigUnitSection\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(19,1);\"><img class=\"unitSection u19Section\" src=\"img/x.gif\" alt=\"Törzsi vezető\"></a><a href=\"#\" class=\"zoom\" onclick=\"return Travian.Game.unitZoom(19);\"><img class=\"zoom\" src=\"img/x.gif\" alt=\"zoom in\"></a></div><div class=\"information\"><div class=\"title\"><a href=\"#\" onclick=\"return Travian.Game.iPopup(19,1);\"><img class=\"unit u19\" src=\"img/x.gif\" alt=\"Törzsi vezető\"></a><a href=\"#\" onclick=\"return Travian.Game.iPopup(19,1);\">Törzsi vezető</a></div><div class=\"costs\"><div class=\"showCosts\"><span class=\"resources r1 little_res\"><img class=\"r1\" src=\"img/x.gif\" alt=\"Wood\">".${r19}['wood']."</span><span class=\"resources r2 little_res\"><img class=\"r2\" src=\"img/x.gif\" alt=\"Clay\">".${r19}['clay']."</span><span class=\"resources r3 little_res\"><img class=\"r3\" src=\"img/x.gif\" alt=\"Iron\">".${r19}['iron']."</span><span class=\"resources r4 little_res\"><img class=\"r4\" src=\"img/x.gif\" alt=\"Crop\">".${r19}['crop']."</span><div class=\"clear\"></div><span class=\"clocks\"><img class=\"clock\" src=\"img/x.gif\" alt=\"duration\">";
	 echo $generator->getTimeFormat(round(${r19}['time'] * ($bid22[$village->resarray['f'.$id]]['attri'] / 100)/SPEED));
	 echo"</span><div class=\"clear\"></div></div></div><div class=\"contractLink\"><a href=\"#\">Akadémia</a><span class=\"level\"> szint 20</span>, <a href=\"#\">Gyülekezőtér</a><span class=\"level\"> szint 5</span></div></div><div class=\"clear\"></div></div>";
     }
?>
<script type="text/javascript">
        //<![CDATA[
            $("researchFuture").toggle = (function()
            {
                this.toggleClass("hide");

                $("researchFutureLink").set("text",
                    this.hasClass("hide")
                    ?   "Továbbiak"
                    :   "Elrejtés"
                );

                return false;
            }).bind($("researchFuture"));
        //]]>
</script>
<?php
     echo "<div class=\"clear\"></div></div>";
}

if(count($acares) > 0) {
    echo "<table cellpadding=\"1\" cellspacing=\"1\" class=\"under_progress\"><thead><tr><td>Kiképzés alatt</td><td>Időtartam</td><td>Kész</td></tr>
    </thead><tbody>";
            $timer = 1;
    foreach($acares as $aca) {
        $unit = substr($aca['tech'],1,2);
        echo "<tr><td class=\"desc\"><img class=\"unit u$unit\" src=\"img/x.gif\" alt=\"".$technology->getUnitName($unit)."\" title=\"".$technology->getUnitName($unit)."\" />".$technology->getUnitName($unit)."</td>";
            echo "<td class=\"dur\"><span id=\"timer$timer\">".$generator->getTimeFormat($aca['timestamp']-time())."</span></td>";
            $date = $generator->procMtime($aca['timestamp']);
            echo "<td class=\"fin\"><span>".$date[1]."</span><span> óra</span></td>";
        echo "</tr>";
        $timer +=1;
    }
    echo "</tbody></table>";
}

/*if()  {
    echo "</div></div><div class=\"clear\"></div>";
}*/

?>
