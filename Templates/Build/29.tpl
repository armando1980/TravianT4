<h1 class="titleInHeader">Nagy Kaszárnya <span class="level">Szint <?php echo $village->resarray['f'.$id]; ?></span></h1>
<div id="build" class="gid29">
<div class="build_desc">
<a href="#" onClick="return Travian.Game.iPopup(29,4);" class="build_logo">
    <img class="building big white g29" src="img/x.gif" alt="Nagy kaszárnya" title="Nagy kaszárnya" />
</a>
A Nagy Kaszárnya felépítésével egyszerre két kaszárnya is lehet egy faluban, az egységek képzési költsége azonban az eredeti ár háromszorosa. A közönséges kaszárnyával kombinálva, kétszer gyorsabban képezhetõk egyes falvakban az egységek.</div>
<?php 
include("upgrade.tpl");
?>
<div class="clear"></div>
<?php if ($building->getTypeLevel(29) > 0) { ?>
<form method="POST" name="snd" action="build.php">
                <input type="hidden" name="id" value="<?php echo $id; ?>" />
                <input type="hidden" name="ft" value="t3" />
            <div class="buildActionOverview trainUnits">
                <?php
                    include("29_train.tpl");
                ?>
            <div class="clear"></div></div>
    <button type="submit" value="ok" name="s1" id="btn_train" value="ok" class="startTraining"><div class="button-container"><div class="button-position"><div class="btl"><div class="btr"><div class="btc"></div></div></div><div class="bml"><div class="bmr"><div class="bmc"></div></div></div><div class="bbl"><div class="bbr"><div class="bbc"></div></div></div></div><div class="button-contents">Kiképzés</div></div></button>
    <?php
    } else {
        echo "<b>Training can commence when great barracks are completed.</b><br>\n";
    }
    $trainlist = $technology->getTrainingList(5);
    if(count($trainlist) > 0) {
        echo "
        <h4 class=\"round spacer\">Kiképzés</h4>
    <table cellpadding=\"1\" cellspacing=\"1\" class=\"under_progress\">
        <thead><tr>
            <td>Képzés</td>
            <td>Időtartam</td>
            <td>Kész</td>
        </tr></thead>
        <tbody>";
        $TrainCount = 0;
        foreach($trainlist as $train) {
            $TrainCount++;
            echo "<tr><td class=\"desc\">";
            echo "<img class=\"unit u".$train['unit']."\" src=\"img/x.gif\" alt=\"".$train['name']."\" title=\"".$train['name']."\" />";
            echo $train['amt']." ".$train['name']."</td><td class=\"dur\">";
            if ($TrainCount == 1 ) {
                $NextFinished = $generator->getTimeFormat(($train['commence']+$train['eachtime'])-time());
                echo "<span id=timer1>".$generator->getTimeFormat(($train['commence']+($train['eachtime']*$train['amt']))-time())."</span>";
            } else {
                echo $generator->getTimeFormat($train['eachtime']*$train['amt']);
            }
            echo "</td><td class=\"fin\">";
            $time = $generator->procMTime($train['commence']+($train['eachtime']*$train['amt']));
            echo $time[1]." óra";
        } ?>
        </tr><tr class="next"><td colspan="3">A következő egység <span id="timer2"><?php echo $NextFinished; ?></span> múlva lesz kész</td></tr>
        </tbody></table>
    <?php } ?>
</p></div>