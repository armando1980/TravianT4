<?php
include("../GameEngine/Database/connection.php");
include("../GameEngine/config.php");
$time = time();
rename("../install/","../installed_".$time);
?>
<div id="content" class="login">
<div class="headline"><h2>Telepítés</h2></div><br>
<br>
&nbsp;&nbsp;A telepítés véget ért, sikeres telepítés
<h4>&nbsp;&nbsp;Az /install/ mappa automatikusan nevet változtatott.<br/><br/>
&nbsp;&nbsp;A config.php fájlt sikeresen létrehozta.</h4>
  
<br /><br />

<div align="center"><font size="4"><a href="<?php echo HOMEPAGE; ?>">Kezdőlap</a></font>
</div></div>
