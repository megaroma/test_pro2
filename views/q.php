<input type="hidden" id="start_q" name="start_q" value="<?php echo $start_q;?>">




<div data-bind="foreach: questions">
<div class="Box">
  <div data-bind='if: mini() == 1'><div data-bind="html: q_info"></div></div>
  <b><font data-bind="html: q_text"></font></b>
  <font data-bind='if: mini() == 2'><font data-bind='text: answer'></font><button data-bind="click: maximise">&darr;</button></font>
  <div data-bind='if: mini() == 1'>
    <div data-bind='foreach: choices'>
    <input data-bind='checked: $data.checked,attr:{name: $data.up},value: $data.move,event:{change: $parent.add}' type='radio'  /><font data-bind='text: $data.text'></font><br>
    </div>
  </div>
</div>  
</div>