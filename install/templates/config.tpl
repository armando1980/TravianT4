<?php
date_default_timezone_set('Europe/Budapest');
if(isset($_GET['c']) && $_GET['c'] == 1) {
echo "<div class=\"headline\"><span class=\"f10 c5\">Hiba a constant.php fájl létrehozásában, ellenőrizze a chmod-ot.</span></div><br>";
}
?>
<form action="process.php" method="post" id="dataform">
<div id="statLeft" class="top10Wrapper">
<h4 class="round small  top top10_offs">Szerver beállítások</h4>
<table cellpadding="1" cellspacing="1" id="top10_offs" class="top10 row_table_data">

    	<tr class="hover">
			<td>Szerver neve:</td>
			<td><input type="text" dir="ltr" class="text" name="servername" id="servername" value="TravianX"></td>
		</tr>
        <tr class="hover">
			<td>Szerver sebessége:</td>
			<td><input name="speed" dir="ltr" class="text" type="text" id="speed" value="1"></td>
		</tr>
    	<tr class="hover">
			<td>Egység mozgás sebessége:</td>
			<td><input type="text" dir="ltr" class="text" name="incspeed" id="incspeed" value="2"></td>
		</tr>
    	<tr class="hover">
			<td>Térkép méret:</td>
			<td><select name="wmax" dir="ltr" class="text">
		<option value="100" selected="selected">100x100</option>
        <option value="250">250x250</option>
        <option value="350">350x350</option>
        <option value="400">400x400</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Kezdőlap:</td>
			<td><input name="homepage" dir="ltr" class="text" type="text" id="homepage" value="http://<?php echo $_SERVER['HTTP_HOST']; ?>/"></td>
		</tr>
    	<tr class="hover">
			<td>Nyelv:</td>
			<td><select name="lang" dir="ltr" class="text">
		<option value="en" selected="selected">Magyar</option><option value="fa">Perzsa</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Kezdővédelem:</td>
			<td>
            <select name="beginner" dir="ltr" class="text" id="autodeltime">
                  <option value="3600" selected="selected">1 óra</option>
                  <option value="10800">3 óra</option>
                  <option value="21600">6 óra</option>
                  <option value="43200">12 óra</option>
                  <option value="86400">1 nap</option>
                  <option value="172800">2 nap</option>
                  <option value="259200">3 nap</option>
			</select>
          </td>
		</tr>
    	<tr class="hover">
			<td>Travian Plusz:</td>
			<td><select name="plus_time" dir="ltr" class="text">
	  <option value="43200">12 óra</option>
	  <option value="86400">1 nap</option>
	  <option value="172800">2 nap</option>
	  <option value="259200">3 nap</option>
	  <option value="345600">4 nap</option>
	  <option value="432000">5 nap</option>
	  <option value="518400">6 nap</option>
	  <option value="604800" selected="selected">7 nap</option></select></td>
		</tr>
    	<tr class="hover">
			<td>+25% termelés:</td>
			<td><select name="plus_production" dir="ltr" class="text">
	  <option value="43200">12 óra</option>
	  <option value="86400">1 óra</option>
	  <option value="172800">2 nap</option>
	  <option value="259200">3 nap</option>
	  <option value="345600">4 nap</option>
	  <option value="432000">5 nap</option>
	  <option value="518400">6 nap</option>
	  <option value="604800" selected="selected">7 nap</option></select></td>
		</tr>
        
        <tr class="hover">
			<td>Aukció ideje:</td>
			<td><select name="auction_time" dir="ltr" class="text">
      <option value="10800" selected="selected">3 óra</option>
	  <option value="21600">6 óra</option>
	  <option value="43200">12 óra</option>
	  <option value="86400">24 óra</option>
      </select></td>
		</tr>
    	<tr class="hover">
			<td>Határérték állítás:</td>
			<td><input type="text" dir="ltr" class="text" name="ts_threshold" id="ts_threshold" value="30"></td>
		</tr>
    	<tr class="hover">
			<td>Nagyraktár:</td>
			<td><select name="great_wks" dir="ltr" class="text">
      <option value="false">Inaktív</option>
      <option value="true" selected="selected">Aktív</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Világcsoda:</td>
			<td><select name="ww" dir="ltr" class="text">
      <option value="0">Inaktív</option>
      <option value="1" selected="selected">Aktív</option></select></td>
		</tr>

</table>
<h4 class="round small spacer top top10_defs">Adatbázis konfigurációs</h4>
<table cellpadding="1" cellspacing="1" id="top10_defs" class="top10 row_table_data">
    	<tr class="hover">
			<td>Kiszolgáló (Hostname):</td>
			<td><input name="sserver" dir="ltr" class="text" type="text" id="sserver" value="localhost"></td>
		</tr>
    	<tr class="hover">
			<td>Felhasználónév (Username):</td>
			<td><input name="suser" dir="ltr" class="text" type="text" id="suser" value=""></td>
		</tr>
    	<tr class="hover">
			<td>Jelszó (Password):</td>
			<td><input type="text" dir="ltr" class="text" name="spass" id="spass"></td>
		</tr>
    	<tr class="hover">
			<td>Adatbázisnév (DB name):</td>
			<td><input type="text" dir="ltr" class="text" name="sdb" id="sdb"></td>
		</tr>
    	<tr class="hover">
			<td>Előtag (Prefix):</td>
			<td><input type="text" dir="ltr" class="text" name="prefix" id="prefix" value="s1_"></td>
		</tr>
    	<tr class="hover">
			<td>Típus (Type):</td>
			<td><select name="connectt" dir="ltr" class="text">
	  <option value="0" selected="selected">MYSQL</option>
	  <option value="1" disabled="disabled">MYSQLi</option>
	</select></td>
		</tr>
        <tr class="empty"><td></td><td></td></tr>
    	<tr class="hover">
			<td>Admin név:</td>
			<td><input type="text" dir="ltr" class="text" name="aname" id="aname"></td>
		</tr>
    	<tr class="hover">
			<td>Admin jelszó:</td>
			<td><input name="aemail" dir="ltr" class="text" type="text" id="aemail"></td>
		</tr>
    	<tr class="hover">
			<td>'Admin' megjelenjen a statisztikában?</td>
			<td><select name="admin_rank" dir="ltr" class="text">
	  <option value="false">Nem</option>
	  <option value="true" selected="selected">Igen</option></select></td>
		</tr>        
        
        
</table>
</div>
<div id="statRight" class="top10Wrapper">
<h4 class="round small  top top10_climbers">Hírek doboz és újdonságok</h4>
<table cellpadding="1" cellspacing="1" id="top10_climbers" class="top10 row_table_data">
    	<tr class="hover">
			<td>1. szövegdoboz:</td>
			<td><select name="box1" dir="ltr" class="text">
	  <option value="1">Aktív</option>
	  <option value="0" selected="selected">Inaktív</option></select></td>
		</tr>
    	<tr class="hover">
			<td>2. szövegdoboz:</td>
			<td><select name="box2" dir="ltr" class="text">
	  <option value="1">Aktív</option>
	  <option value="0" selected="selected">Inaktív</option></select></td>
		</tr>
    	<tr class="hover">
			<td>3. szövegdoboz:</td>
			<td><select name="box3" dir="ltr" class="text">
	  <option value="1">Aktív</option>
	  <option value="0" selected="selected">Inaktív</option></select></td>
		</tr>
<tr class="empty"><td></td><td></td></tr>
    	<tr class="hover">
			<td>Építési napló (LOG):</td>
			<td><select name="log_build" dir="ltr" class="text">
	  <option value="0">Nem</option>
	  <option value="1" selected="selected">Igen</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Technikai napló (LOG):</td>
			<td><select name="log_tech" dir="ltr" class="text">
	  <option value="0">Nem</option>
	  <option value="1" selected="selected">Igen</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Bejelentkezési napló (LOG):</td>
			<td><select name="log_login" dir="ltr" class="text">
	  <option value="0">Nem</option>
	  <option value="1" selected="selected">Igen</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Arany napló (LOG):</td>
			<td><select name="log_gold_fin" dir="ltr" class="text">
	  <option value="0">Nem</option>
	  <option value="1" selected="selected">Igen</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Admin napló (LOG):</td>
			<td><select name="log_admin" dir="ltr" class="text">
	  <option value="0">Nem</option>
	  <option value="1" selected="selected">Igen</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Harc napló (LOG):</td>
			<td><select name="log_war" dir="ltr" class="text">
	  <option value="0">Nem</option>
	  <option value="1" selected="selected">Igen</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Piac napló (LOG):</td>
			<td><select name="log_market" dir="ltr" class="text">
	  <option value="0">Nem</option>
	  <option value="1" selected="selected">Igen</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Illegális Napló (LOG):</td>
			<td><select name="log_illegal" dir="ltr" class="text">
	  <option value="0">Nem</option>
	  <option value="1" selected="selected">Igen</option></select></td>
		</tr>
<tr class="empty"><td></td><td></td></tr>
</table>
<h4 class="round small spacer top top10_raiders">Egyéb beállítások</h4>
<table cellpadding="1" cellspacing="1" id="top10_raiders" class="top10 row_table_data">
    	<tr class="hover">
			<td>Feladatok (quests):</td>
			<td><select name="quest" dir="ltr" class="text">
	  <option value="0">Inaktív</option>
	  <option value="1" selected="selected">Aktív</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Aktiválás:</td>
			<td><select name="activate" dir="ltr" class="text">
	  <option value="0" selected="selected">Inaktív</option>
	  <option value="1">Aktív</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Üzenet korlát:</td>
			<td><select name="limit_mailbox" dir="ltr" class="text">
	  <option value="false">Inaktív</option>
	  <option value="true" selected="selected">Aktív</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Maximum üzenet:</td>
			<td><input name="max_mails" dir="ltr" class="text" type="number" id="max_mails" value="30" size="15"></td>
		</tr>
    	<tr class="hover">
			<td>Főépület szintje lebontáshoz:</td>
			<td><select name="demolish" dir="ltr" class="text">
	  <option value="5">5</option>
	  <option value="10" selected="selected">10</option>
	  <option value="15">15</option>
	  <option value="20">20</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Kiterjedés:</td>
			<td><select name="village_expand" dir="ltr" class="text">
	  <option value="1" selected="selected">Lassú</option>
	  <option value="0">Gyors</option></select></td>
		</tr>
    	<tr class="hover">
			<td>Hiba jelentés:</td>
			<td><select name="error" dir="ltr" class="text">
	  <option value="error_reporting (E_ALL ^ E_NOTICE);" selected="selected">Aktív</option>
	  <option value="error_reporting (0); ">Inaktív</option></select></td>
		</tr>

</table><br />

<h4 class="round small  top top10_offs">Kezdés</h4>
<table cellpadding="1" cellspacing="1" id="top10_raiders" class="top10 row_table_data">
    	<tr class="hover">
			<td>Dátum:</td>
			<td><input name="start_date" style="text-align:center;" class="text" type="text" id="start_date" value="<?php echo date('Y.m.d.'); ?>" size="20"><br />
            <font class="none" size="1" face="Trebuchet MS">Év.Hónap.Nap</font>
            </td>
		</tr>
    	<tr class="hover">
			<td>Idő:</td>
			<td><input name="start_time" style="text-align:center;" class="text" type="text" id="start_time" value="<?php echo date('H:i'); ?>" size="10"><br />
            <font class="none" size="1" face="Trebuchet MS">Óra : Perc</font></td>
		</tr>

</table>

<div align="left">
<button type="submit" value="Upgrade level" class="build">
<div class="button-container"><div class="button-position"><div class="btl"><div class="btr"><div class="btc"></div></div></div>
<div class="bml"><div class="bmr"><div class="bmc"></div></div></div><div class="bbl"><div class="bbr"><div class="bbc"></div></div></div></div><div class="button-contents">Tovább</div></div></button></div>
	<input type="hidden" name="subconst" value="1">
	</form>
</div>