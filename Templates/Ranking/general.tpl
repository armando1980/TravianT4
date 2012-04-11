<?php
   $tribe1 = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE tribe = 1 and id>3");
   $tribe2 = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE tribe = 2 and id>3");
   $tribe3 = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE tribe = 3 and id>3");
   $tribes = array(mysql_num_rows($tribe1), mysql_num_rows($tribe2), mysql_num_rows($tribe3));
   $users = mysql_num_rows(mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE id>3")); ?>

<h4 class="round">Játékosok</h4>
<table cellpadding="1" cellspacing="1" id="world_player" class="transparent">
     <tbody>
     <tr>
      <th>Játékos bejelentkezett:</th>
      <td><?php echo $users; ?></td>
     </tr>
     <tr>
      <th>Játékos aktív:</th>
      <td><?php
                   $active = mysql_num_rows(mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE ".time()."-timestamp < (3600*24)"));
                   echo $active; ?></td>
     </tr>     <tr>
      <th>Játékos online:</th>
      <td><?php
				$result = mysql_query("SELECT * FROM ".TB_PREFIX."online");
				$num_rows = mysql_num_rows($result);
				echo $num_rows;
				?></td>
     </tr>
    </tbody>
   </table>
<h4 class="round spacer">Népek:</h4>
<table cellpadding="1" cellspacing="1" id="world_tribes" class="world">
    <thead>
     <tr class="hover">
      <td>Nép</td>
      <td>Regisztrált</td>
      <td>Százalék</td>
     </tr>
     </thead>
     <tbody>
     <tr class="hover">
      <td>Római</td>
      <td><?php echo $tribes[0]; ?></td>
      <td><?php
$percents = 100*($tribes[0] / $users);
echo $percents = intval ($percents);
echo "%"; ?></td>
     </tr>
     <tr class="hover">
      <td>Germán</td>
      <td><?php echo $tribes[1]; ?></td>
      <td><?php
$percents = 100*($tribes[1] / $users);
echo $percents = intval ($percents);
echo "%"; ?></td>
     </tr>
     <tr class="hover">
      <td>Gall</td>
      <td><?php echo $tribes[2]; ?></td>
      <td><?php
$percents = 100*($tribes[2] / $users);
echo $percents = intval ($percents);
echo "%"; ?></td>
     </tr>
    </tbody>
   </table>