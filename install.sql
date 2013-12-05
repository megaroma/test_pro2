
CREATE TABLE IF NOT EXISTS `t2_questions` 
(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`info_text` text,
`quest_text` text,
 PRIMARY KEY  (`id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `t2_choices` 
(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`up` int(11),
`text` text,
`hint` text,
`move` int(11),
 PRIMARY KEY  (`id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;



insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 1,'Главная страница','Выберете категорию:');

insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (1,'Техническая','Техническая проблема', 2);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (1,'Политическая','Политическая проблема', 3);

insert into `t2_questions` (`id`,`info_text`,`quest_text`) values (3 ,'Политических проблем нет','');

insert into `t2_questions` (`id`,`info_text`,`quest_text`) values (2 ,'Различные технические проблемы','Какая проблема?');
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (2,'Проблема 1','Подсказка проблемы 1', 4);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (2,'Проблема 2','Подсказка проблемы 2', 5);


insert into `t2_questions` (`id`,`info_text`,`quest_text`) values (4 ,'Советы по проблеме 1','Какая ОС?');
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (4,'Linux','os linux bla bla', 6);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (4,'Mac OS','apple mac bla bla ', 7);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (4,'Windows','os windows bla bla', 8);


insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 6,'Информаци по ос linux','Помогло?');
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (6,'Да','Помогло', 9);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (6,'Нет','Не помогло', 4);
insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 9,'Поздравления по ос linux','');


insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 7,'Информаци по Mac OS','Помогло?');
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (7,'Да','Помогло', 10);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (7,'Нет','Не помогло', 4);
insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 10,'Поздравления по Mac OS','');


insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 8,'Информаци по OS Windows','Помогло?');
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (8,'Да','Помогло', 11);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (8,'Нет','Не помогло', 4);
insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 11,'Поздравления по OS Windows','');


insert into `t2_questions` (`id`,`info_text`,`quest_text`) values (5 ,'Советы по проблеме 2','Какой провод?');
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (5,'Красный','цвет провода красный', 12);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (5,'Зеленый','цвет провода зеленый', 13);
insert into `t2_choices` (`up`,`text`,`hint`, `move`) values (5,'Голубой','цвет провода голубой', 14);

insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 12,'Поздравления по красному проводу','');

insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 13,'Поздравления по зеленому проводу','');

insert into `t2_questions` (`id`,`info_text`,`quest_text`) values ( 14,'Поздравления по голубому проводу','');
