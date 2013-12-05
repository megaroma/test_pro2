<?php
require_once "include/conf.php"; 
//----AJAX---------------------
$ajax = core::arr($_POST,'ajax','');
if($ajax != '')
{
$action = core::arr($_POST,'action','');

if ($action == 'get_q')
 {
 $id = core::arr($_POST,'id','');
 echo core::get_q($id);
 exit;
 }



}
//-----WEB----------------------
$data = array();
$q = core::arr($_GET,'q','');
if ($q != '')
 {
 $data['start_q'] = $q;
 $templ = "q";
 } else
 {
 $data += core::get_index();
 $templ = "index";
 }


//view
core::render($templ,$data);
?>