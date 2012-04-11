<div class=\"clear\"></div><BR />
<?php 
        if(!isset($timer)) {
        $timer = 1;
        }
		$timeleft = $database->getVillageField($village->wid, 'celebration');
		if($timeleft > Time()){
			
        	echo '<table cellpadding="1" cellspacing="1" class="under_progress">
			<thead><tr><td>Ünnepség</td><td>Időtartam</td><td>Kész</td></tr></thead>';
			echo '<tbody><tr>';
            echo "<td class=\"desc\">Ünnepséget tartassz</td>";
            echo "<td class=\"dur\"><span id=\"timer".$timer."\">";
            echo $generator->getTimeFormat($timeleft-time());
            echo "</span></td>";
            echo "<td class=\"fin\">".date('H:i', $timeleft)."<span> óra</span></td>";
			echo "</tr></tbody></table></div></div></div>";
            $timer +=1;
		}
?>
