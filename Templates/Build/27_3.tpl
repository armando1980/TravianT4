<h1 class="titleInHeader">Kincstár <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>

    <div id="build" class="gid27">
    <div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(27,4);" class="build_logo">
        <img class="building big white g27" src="img/x.gif" alt="Kincstár" title="Kincstár"></a>
        A birodalmad kincsei a kincstárban raktározódnak . Ha eléri a 10-es szintet akkor ereklyét tudsz benne tárolni.</div>
        
        <?php
include("upgrade.tpl");
        include ("27_menu.tpl");

?>
        <h4 class="round">Nagy ereklyék</h4>
        <table id="show_artefacts" cellpadding="1" cellspacing="1">
    		<thead>
    			<tr>
    				<td></td>
                                <td>Ereklye neve</td>
                                <td>Falu</td>
                                <td>Dátum</td>
    			</tr>
    		</thead>
    		<tbody>
            <?php

        if(mysql_num_rows(mysql_query("SELECT * FROM " . TB_PREFIX . "artefacts")) == 0) {
        	echo '<td colspan="4" class="none">Nincsenek nagyereklyéid.</td>';
        } else {
        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 2 AND type = 2");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 3 AND type = 2");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

?>


            <tr><td colspan="4" class="empty"></td></tr>
            
            
            <?php

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 2 AND type = 4");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 3 AND type = 4");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

?>

            <tr><td colspan="4" class="empty"></td></tr>
            
            <?php

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 2 AND type = 5");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 3 AND type = 5");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

?>
            <tr><td colspan="4" class="empty"></td></tr>
            
            <?php

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 2 AND type = 6");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 3 AND type = 6");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

?>


            <tr><td colspan="4" class="empty"></td></tr>
            
<?php

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 2 AND type = 8");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 3 AND type = 8");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

?>

            <tr><td colspan="4" class="empty"></td></tr>
            
<?php

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 2 AND type = 9");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

?>
            <tr><td colspan="4" class="empty"></td></tr>
            
            <?php

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 2 AND type = 7");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_10" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 3 AND type = 7");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_10" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

?>

            <tr><td colspan="4" class="empty"></td></tr>
            
            
            <?php

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 2 AND type = 3");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

        	unset($artefact);
        	unset($row);
        	$artefact = mysql_query("SELECT * FROM `" . TB_PREFIX . "artefacts` WHERE size = 3 AND type = 3");
        	while($row = mysql_fetch_array($artefact)) {
        		echo '<tr>';
        		echo '<td class="icon"><img class="artefact_icon_' . $row['type'] . '" src="img/x.gif" alt="" title=""></td>';
        		echo '<td class="nam">';
        		echo '<a href="build.php?id=' . $id . '&show='.$row['id'].'">' . $row['name'] . '</a> <span class="bon">(' . $row['effect'] . ')</span><div class="info">Kincstár <b>20</b>, Hatás <b>All villages</b></div>';
        		echo '</td>';
        		echo '<td class="pla"><a href="karte.php?d=' . $row['vref'] . '&c=' . $generator->getMapCheck($row['vref']) . '">' . $database->getUserField($row['owner'], "username", 0) . '</a></td>';
        		echo '<td class="al"><a href="allianz.php?aid=' . $database->getUserField($row['owner'], "alliance", 0) . '">' . $database->getAllianceName($database->getUserField($row['owner'], "alliance", 0)) . '</a></td>';
        		echo '</tr>';
        	}

?>
            
            <?php
	}
?>
    	</tbody></table></div>
        
        