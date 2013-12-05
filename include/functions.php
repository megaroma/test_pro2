<?php

class core
{
static public $db;

//-------SYSTEM-----------------
static public function set_db($db)
{
self::$db = $db;
}

static public function arr($arr,$field,$def)
{
if (isset($arr[$field]))
  {
  return $arr[$field];
  } else
  { 
  return $def;
  }
} 

static function render($templ,&$data)
{
foreach ($data as $k => $d)
 {
 $$k = $d;
 }
unset($data);
include "views/header.php";
include "views/{$templ}.php";
include "views/footer.php"; 
}

//----------WEB-----------------
static function get_index()
{
$db = self::$db;
$data = array();
$sql = "select * from `t2_questions` where `id` = 1";
$result = $db->query($sql);
$row = $result->fetch_assoc();
$result->close(); 
$data['q_info_text'] = $row['info_text'];
$data['q_quest_text'] = $row['quest_text'];
$sql = "select * from `t2_choices` where `up` = 1";
$result = $db->query($sql);
while($row = $result->fetch_assoc())
  {
  $data['choices'][] = $row;
  }
$result->close(); 
return $data;
} 


//-----AJAX---------------------------
static function get_q($id)
{
$db = self::$db;
$data = array();
$sql = "select * from `t2_questions` where `id` = $id";
$result = $db->query($sql);
$row = $result->fetch_assoc();
$result->close(); 
$data['q_info'] = $row['info_text'];
$data['q_text'] = $row['quest_text'];
$data['choices'] = array();
$sql = "select * from `t2_choices` where `up` = {$row['id']}";
$result = $db->query($sql);
while($row = $result->fetch_assoc())
  {
  $row['checked'] = false;
  $data['choices'][] = $row;
  }
$result->close(); 
return json_encode($data);
}




}


?>