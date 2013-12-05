$(document).ready(function(){

function question (id )
{
var self = this;
self.id = id;
self.mini = ko.observable(1);
self.q_info = ko.observable("");
self.q_text = ko.observable("");
self.choices = ko.observableArray([]);
self.answer = ko.observable("");
self.answer_id = ko.observable(0);

self.add = function (target,event)
{
self.answer(target.text);
self.answer_id(target.id);
mod.hideAll();
mod.killBehind(target.up);
mod.killFrom(target.move);
mod.questions.push(new question(target.move));
};


self.maximise = function()
{
mod.hideAll();
self.mini(1);
}

$.post("index.php", { ajax: 1,action: "get_q",id: id },
  function(data){
  var info = data.q_info;
  self.q_info(info);
  self.q_text(data.q_text);
  self.choices(data.choices);
  }, "json");

  
  
}


function modelQList()  {

var self = this;


self.questions = ko.observableArray([]);



self.killFrom = function(id)
{
var arr = self.questions();
var max_l = arr.length;
for (var i=0; i<max_l; i++) {
if (arr[i].id == id) { self.questions.splice(i,max_l-i);
                      break;}
}
}


self.killBehind = function(id)
{
var arr = self.questions();
var max_l = arr.length;
var tr = false;
for (var i=0; i<max_l; i++) {
if (tr == true) 
{ self.questions.splice(i,(max_l-i));
                      break;}

if (arr[i].id == id) {tr = true;} 
					  
}

}

self.hideAll = function()
{
var arr = self.questions();
for (var i=0; i<arr.length; i++) {
if(arr[i].answer_id() > 0) { arr[i].mini(2); }
}

}

}



//------RUN-------------
var mod = new modelQList();
ko.applyBindings(mod);
var first_q = $('#start_q').val();
mod.questions.push(new question(first_q));



});