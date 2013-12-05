<hr>
<?php echo $q_info_text; ?>
<br>
<b><?php echo $q_quest_text; ?></b>
<hr>


<form method="get">
   <?foreach ($choices as $ch):?>
   <input type="radio" name="q" value="<?php echo $ch['move'];?>"> 
   <font title="<?php echo $ch['hint'];?>"><?php echo $ch['text'];?></font><br>
   <?endforeach;?>
 </select>
<input type="submit" value="next">
</form>