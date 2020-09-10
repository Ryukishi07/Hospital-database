use [поликлиника 3]

DROP TABLE [Recipe];
DROP TABLE [Treatment];
DROP TABLE [Patient];
DROP TABLE [Social status];
DROP TABLE [Medicine];
DROP TABLE [Treatment Doctor];
DROP TABLE [Diagnosis Doctor];
DROP TABLE [Cabinet No.];
DROP TABLE [Specialization];
DROP TABLE [Current state];

set dateformat dmy

CREATE TABLE [Treatment Doctor] (
	Treatment_Doctor_id int PRIMARY KEY,
	Name  nvarchar(30) ,
	Surename nvarchar(30) ,
	Patronimic nvarchar(30) ,
	Expirience int ,
	Specialization_id int ,
	Cabinet_No_id int 
);
CREATE TABLE [Treatment] (
	Treatment_id int NOT NULL PRIMARY KEY,
	Start_date date ,
	Diagnosis_Doctor_id int ,
	End_date  date,
	Current_state_id int,
	Treatment_Doctor_id int ,
	Patient_id int,
	Diagnosis nvarchar(30)
);
CREATE TABLE [Patient] (
	Patient_id int NOT NULL PRIMARY KEY,
	Name NVARchar(30) ,
	Surname nvarchar(30) ,
	Patronimic nvarchar(30), 
	Born_date date ,
	Policy_No int NOT NULL UNIQUE,
	Social_status_id int
);
CREATE TABLE [Recipe] (
	Recipe_id int NOT NULL PRIMARY KEY,
	Recipe_No int,
	Treatment_id int,
	Medicine_id int 
);
CREATE TABLE [Specialization] (
	Specialization_id int  NOT NULL PRIMARY KEY,
	Specialization NVARchar(30) NOT NULL UNIQUE
);
CREATE TABLE [Diagnosis Doctor] (
	Diagnosis_Doctor_id int NOT NULL primary key,
	Name nvarchar(30) ,
	Surename nvarchar(30) ,
	Patronimic nvarchar(30) ,
	Expirience int ,
	Specialization_id int ,
	Cabinet_No_id int ,
	Position_id int 
);
CREATE TABLE [Cabinet No.] (
	Cabinet_No_id int identity(1,1) NOT NULL PRIMARY KEY,
	Number int
);
CREATE TABLE [Medicine] (
	Medicine_id int NOT NULL PRIMARY KEY,
	Medicine_name nvarchar(30)
);
CREATE TABLE [Social status] (
	Social_Status_id int NOT NULL PRIMARY KEY,
	Social_status nvarchar(30)
);
CREATE TABLE [Current state](
    Current_state_id int NOT NULL PRIMARY KEY,
	Current_state nvarchar(30)
);







INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Невролог' , 100);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Гомеопат', 101);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Торакальный хирург', 102);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Остеопат', 103);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Реаниматолог', 104);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Травматолог', 105);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Отоларинголог', 106);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Диагностик', 107);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Ортопед-травмотолог', 108);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Кардиохирург', 109);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Иммунолог', 110);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Нейрохирург', 111);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Уролог', 112);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Диетолог-нутриционист', 113);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Генетик', 114);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Инфекционист', 115);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Аллеролог', 116);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Анестезиолог', 117);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Нарколог', 118);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Патологоанатом', 119);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Токсиколог', 120);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Эндокринолог', 121);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Кардиолог', 122);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Сосудистый хирург', 123);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Дерматолог', 124);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Проктолог', 125);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Репродуктолог', 126);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Челюстно-лицевой хирург', 127);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Стоматолог', 128);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Онколог', 129);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Пластический хирург', 130);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Вертебролог', 131);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Фтизиатр', 132);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Маммолог', 133);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Окулист', 134);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Психотерапевт', 135);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Психиатр', 136);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Пульмонолог', 137);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Сексолог', 138);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Гинеколог', 139);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Хирург', 140);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Мануальный терапевт', 141);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Врач скорой помощи', 142);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Гематолог', 143);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Педиатр', 144);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Терапевт', 145);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Нефролог', 146);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Рентгенолог', 147);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Эндоскопист', 148);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Акушер-гинеколог', 149);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Семейный доктор', 150);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Рефлексотерапевт', 151);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Ревматолог', 152);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Неонатолог', 153);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Паразитолог', 154);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Ангиолог', 155);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Реабилитолог', 156);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Врач УЗД', 157);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Гастроэнтеролог', 158);
INSERT INTO [Specialization] (Specialization, Specialization_id) VALUES ('Фармацевт', 159);



INSERT INTO [Cabinet No.](Number) VALUES ('101');
INSERT INTO [Cabinet No.](Number) VALUES ('102');
INSERT INTO [Cabinet No.](Number) VALUES ('103');
INSERT INTO [Cabinet No.](Number) VALUES ('104');
INSERT INTO [Cabinet No.](Number) VALUES ('105');
INSERT INTO [Cabinet No.](Number) VALUES ('106');
INSERT INTO [Cabinet No.](Number) VALUES ('107');
INSERT INTO [Cabinet No.](Number) VALUES ('108');
INSERT INTO [Cabinet No.](Number) VALUES ('109');
INSERT INTO [Cabinet No.](Number) VALUES ('110');
INSERT INTO [Cabinet No.](Number) VALUES ('111');
INSERT INTO [Cabinet No.](Number) VALUES ('112');
INSERT INTO [Cabinet No.](Number) VALUES ('113');
INSERT INTO [Cabinet No.](Number) VALUES ('114');
INSERT INTO [Cabinet No.](Number) VALUES ('115');
INSERT INTO [Cabinet No.](Number) VALUES ('116');
INSERT INTO [Cabinet No.](Number) VALUES ('117');
INSERT INTO [Cabinet No.](Number) VALUES ('118');
INSERT INTO [Cabinet No.](Number) VALUES ('119');
INSERT INTO [Cabinet No.](Number) VALUES ('120');
INSERT INTO [Cabinet No.](Number) VALUES ('121');
INSERT INTO [Cabinet No.](Number) VALUES ('122');
INSERT INTO [Cabinet No.](Number) VALUES ('123');
INSERT INTO [Cabinet No.](Number) VALUES ('124');
INSERT INTO [Cabinet No.](Number) VALUES ('125');
INSERT INTO [Cabinet No.](Number) VALUES ('126');
INSERT INTO [Cabinet No.](Number) VALUES ('127');
INSERT INTO [Cabinet No.](Number) VALUES ('128');
INSERT INTO [Cabinet No.](Number) VALUES ('129');
INSERT INTO [Cabinet No.](Number) VALUES ('130');
INSERT INTO [Cabinet No.](Number) VALUES ('201');
INSERT INTO [Cabinet No.](Number) VALUES ('202');
INSERT INTO [Cabinet No.](Number) VALUES ('203');
INSERT INTO [Cabinet No.](Number) VALUES ('204');
INSERT INTO [Cabinet No.](Number) VALUES ('205');
INSERT INTO [Cabinet No.](Number) VALUES ('206');
INSERT INTO [Cabinet No.](Number) VALUES ('207');
INSERT INTO [Cabinet No.](Number) VALUES ('208');
INSERT INTO [Cabinet No.](Number) VALUES ('209');
INSERT INTO [Cabinet No.](Number) VALUES ('210');
INSERT INTO [Cabinet No.](Number) VALUES ('211');
INSERT INTO [Cabinet No.](Number) VALUES ('212');
INSERT INTO [Cabinet No.](Number) VALUES ('213');
INSERT INTO [Cabinet No.](Number) VALUES ('214');
INSERT INTO [Cabinet No.](Number) VALUES ('215');
INSERT INTO [Cabinet No.](Number) VALUES ('216');
INSERT INTO [Cabinet No.](Number) VALUES ('217');
INSERT INTO [Cabinet No.](Number) VALUES ('218');
INSERT INTO [Cabinet No.](Number) VALUES ('219');
INSERT INTO [Cabinet No.](Number) VALUES ('220');
INSERT INTO [Cabinet No.](Number) VALUES ('221');
INSERT INTO [Cabinet No.](Number) VALUES ('222');
INSERT INTO [Cabinet No.](Number) VALUES ('223');
INSERT INTO [Cabinet No.](Number) VALUES ('224');
INSERT INTO [Cabinet No.](Number) VALUES ('225');
INSERT INTO [Cabinet No.](Number) VALUES ('226');
INSERT INTO [Cabinet No.](Number) VALUES ('227');
INSERT INTO [Cabinet No.](Number) VALUES ('228');
INSERT INTO [Cabinet No.](Number) VALUES ('229');
INSERT INTO [Cabinet No.](Number) VALUES ('230');
INSERT INTO [Cabinet No.](Number) VALUES ('301');
INSERT INTO [Cabinet No.](Number) VALUES ('302');
INSERT INTO [Cabinet No.](Number) VALUES ('303');
INSERT INTO [Cabinet No.](Number) VALUES ('304');
INSERT INTO [Cabinet No.](Number) VALUES ('305');
INSERT INTO [Cabinet No.](Number) VALUES ('306');
INSERT INTO [Cabinet No.](Number) VALUES ('307');
INSERT INTO [Cabinet No.](Number) VALUES ('308');
INSERT INTO [Cabinet No.](Number) VALUES ('309');
INSERT INTO [Cabinet No.](Number) VALUES ('310');
INSERT INTO [Cabinet No.](Number) VALUES ('311');
INSERT INTO [Cabinet No.](Number) VALUES ('312');
INSERT INTO [Cabinet No.](Number) VALUES ('313');
INSERT INTO [Cabinet No.](Number) VALUES ('314');
INSERT INTO [Cabinet No.](Number) VALUES ('315');
INSERT INTO [Cabinet No.](Number) VALUES ('316');
INSERT INTO [Cabinet No.](Number) VALUES ('317');
INSERT INTO [Cabinet No.](Number) VALUES ('318');
INSERT INTO [Cabinet No.](Number) VALUES ('319');
INSERT INTO [Cabinet No.](Number) VALUES ('320');
INSERT INTO [Cabinet No.](Number) VALUES ('321');
INSERT INTO [Cabinet No.](Number) VALUES ('322');
INSERT INTO [Cabinet No.](Number) VALUES ('323');
INSERT INTO [Cabinet No.](Number) VALUES ('324');
INSERT INTO [Cabinet No.](Number) VALUES ('325');
INSERT INTO [Cabinet No.](Number) VALUES ('326');
INSERT INTO [Cabinet No.](Number) VALUES ('327');
INSERT INTO [Cabinet No.](Number) VALUES ('328');
INSERT INTO [Cabinet No.](Number) VALUES ('329');
INSERT INTO [Cabinet No.](Number) VALUES ('330');
INSERT INTO [Cabinet No.](Number) VALUES ('331');
INSERT INTO [Cabinet No.](Number) VALUES ('332');
INSERT INTO [Cabinet No.](Number) VALUES ('333');
INSERT INTO [Cabinet No.](Number) VALUES ('334');
INSERT INTO [Cabinet No.](Number) VALUES ('335');
INSERT INTO [Cabinet No.](Number) VALUES ('336');
INSERT INTO [Cabinet No.](Number) VALUES ('337');
INSERT INTO [Cabinet No.](Number) VALUES ('338');
INSERT INTO [Cabinet No.](Number) VALUES ('339');
INSERT INTO [Cabinet No.](Number) VALUES ('340');
INSERT INTO [Cabinet No.](Number) VALUES ('341');
INSERT INTO [Cabinet No.](Number) VALUES ('342');
INSERT INTO [Cabinet No.](Number) VALUES ('343');
INSERT INTO [Cabinet No.](Number) VALUES ('344');
INSERT INTO [Cabinet No.](Number) VALUES ('345');
INSERT INTO [Cabinet No.](Number) VALUES ('346');
INSERT INTO [Cabinet No.](Number) VALUES ('347');
INSERT INTO [Cabinet No.](Number) VALUES ('348');
INSERT INTO [Cabinet No.](Number) VALUES ('349');
INSERT INTO [Cabinet No.](Number) VALUES ('350');
INSERT INTO [Cabinet No.](Number) VALUES ('351');
INSERT INTO [Cabinet No.](Number) VALUES ('352');
INSERT INTO [Cabinet No.](Number) VALUES ('352');
INSERT INTO [Cabinet No.](Number) VALUES ('353');
INSERT INTO [Cabinet No.](Number) VALUES ('354');
INSERT INTO [Cabinet No.](Number) VALUES ('355');
INSERT INTO [Cabinet No.](Number) VALUES ('356');
INSERT INTO [Cabinet No.](Number) VALUES ('357');
INSERT INTO [Cabinet No.](Number) VALUES ('358');
INSERT INTO [Cabinet No.](Number) VALUES ('359');
INSERT INTO [Cabinet No.](Number) VALUES ('360');
INSERT INTO [Cabinet No.](Number) VALUES ('361');
INSERT INTO [Cabinet No.](Number) VALUES ('362');
INSERT INTO [Cabinet No.](Number) VALUES ('363');
INSERT INTO [Cabinet No.](Number) VALUES ('364');
INSERT INTO [Cabinet No.](Number) VALUES ('365');
INSERT INTO [Cabinet No.](Number) VALUES ('366');
INSERT INTO [Cabinet No.](Number) VALUES ('367');
INSERT INTO [Cabinet No.](Number) VALUES ('368');
INSERT INTO [Cabinet No.](Number) VALUES ('369');
INSERT INTO [Cabinet No.](Number) VALUES ('370');
INSERT INTO [Cabinet No.](Number) VALUES ('371');
INSERT INTO [Cabinet No.](Number) VALUES ('372');
INSERT INTO [Cabinet No.](Number) VALUES ('373');
INSERT INTO [Cabinet No.](Number) VALUES ('374');

INSERT INTO [Social status](Social_Status_id, Social_status)VALUES(1, 'учащийся');
INSERT INTO [Social status](Social_Status_id, Social_status)VALUES(2, 'работающий');
INSERT INTO [Social status](Social_Status_id, Social_status)VALUES(3, 'врем.неработающий');
INSERT INTO [Social status](Social_Status_id, Social_status)VALUES(4, 'инвалид');
INSERT INTO [Social status](Social_Status_id, Social_status)VALUES(5, 'пенсионер');

INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(1 , 'Азатиоприн');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(2 , 'Имуран');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(3 , 'Пентамин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(4 , 'Пролейкин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(5 , 'Оксазил');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(6 , 'Аллапинин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(7 , 'Леокаин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(8 , 'Алкеран');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(9 , 'Ноофен');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(10 , 'Стрепсилс');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(11 , 'Гексорал');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(12 , 'Хлорофилипт');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(13 , 'Лобесил');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(14 , 'Бруниомицин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(15 , 'Натулан');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(16 , 'Резерприн');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(17 , 'Фопурин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(18 , 'Дитилин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(19 , 'Стронфатин К');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(20 , 'Платамин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(21 , 'Цисанплат');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(22 , 'Кемоплант');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(23 , 'Эндоксан');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(24 , 'Цитоксан');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(25 , 'Зимакс');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(26 , 'Сумамед');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(27 , 'Азактам');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(28 , 'Секуропен');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(29 , 'Азитромицин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(30 , 'Оцилококцилум');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(31 , 'Зимакс');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(32 , 'Нитазол');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(33 , 'Ликацин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(34 , 'Амилнитрит');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(35 , 'Гумбикс');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(36 , 'Делуфен');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(37 , 'Долфин');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(38 , 'Памба');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(39 , 'Амбен');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(40 , 'Амиодарон');
INSERT INTO [Medicine](Medicine_id, Medicine_name)VALUES(41 , 'Активированный уголь');


INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname, Born_date, Policy_No, Social_status_id)VALUES(1 , 'Харсей' , 'Логгинович' , 'Ельчанинов' , '10/10/1998' , '111111', 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname, Born_date, Policy_No, Social_status_id)VALUES(2 , 'Даниил' , 'Ардалионович' , 'Офросимов' , '19/09/1930' , '111112' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(3 , 'Софроний' , 'Логгинович' , 'Ельчанинов' , '3/12/1978' , '111113', 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(4 , 'Горазд' , 'Авенирович' , 'Брюхов' , '25/10/1998' , '111114', 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(5 , 'Питирим' , 'Минаевич' , 'Лубяновский' , '13/05/1992' , '111115', 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(6 , 'Варсонофий' , 'Серапионович' , 'Магалов' , '13/05/1950' , '111222', 5);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(7 , 'Бенедикт' , 'Зиновьевич' , 'Хрущов' , '21/06/1980' , '111223', 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(8 , 'Акиндин' , 'Нефёдович' , 'Сергеевич' , '13/07/1990' , '333444', 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(9 , 'Витольд' , 'Парфёнович' , 'Одоевский' , '21/06/1980' , '111225', 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(10 , 'Гликерий' , 'Минаевич' , 'Аничков' , '15/10/1960' , '134567', 5);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(11 , 'Порфирий' , 'Логгинович' , 'Челищев' , '29/10/1987' , '294857' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(12 , 'Фефил' , 'Поликарпович' , 'Шмаков' , '13/12/1956' , '239374' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(13 , 'Богуслав' , 'Феодорович' , 'Бродович' , '12/10/1998' , '242134' , 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(14 , 'Анаклет' , 'Терентьевич' , 'Логачёв' , '5/04/1970' , '563456' , 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(15 , 'Ефрем' , 'Климентович' , 'Нетудыхата' , '23/11/1980' , '345323' , 5);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(16 , 'Федул' , 'Викентьевич' , 'Щепотьев' , '30/09/2000' , '354456' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(17 , 'Автоном' , 'Кондратьевич' , 'Опочинин' , '4/11/1978' , '232345' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(18 , 'Кондрат' , 'Меркуриевич' , 'Богоявленский' , '01/01/2001' , '234566' , 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(19 , 'Фирс' , 'Ипполитович' , 'Щербаков' , '12/07/1988' , '987654' , 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(20 , 'Артур' , 'Борисович' , 'Плутонов' , '07/03/1999' , '987054' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(21 , 'Семён' , 'Венедиктович' , 'Одоевский' , '02/09/1939' , '564839' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(22 , 'Аполлоний' , 'Минаевич' , 'Суворов' , '10/03/1956' , '291857' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(23 , 'Фортунат' , 'Абрамиевич' , 'Кусаков' , '08/05/1990' , '984657' , 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(24 , 'Валент' , 'Патрикиевич' , 'Шалимов' , '12/08/1980' , '456372' , 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(25 , 'Иоиль' , 'Феофилактович' , 'Карабчевский' , '15/11/1954' , '657438' , 5);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(26 , 'Арий' , 'Константинович' , 'Оболенский' , '31/12/1934' , '187465' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(27 , 'Валентин' , 'Феодорович' , 'Ильинский' , '23/05/1976' , '100000' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(28 , 'Пахомий' , 'Вениаминович' , 'Калугин' , '15/10/1960' , '458497' , 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(29 , 'Флор' , 'Саввич' , 'Пажинский' , '20/11/1969' , '218768' , 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(30 , 'Аглаий' , 'Виленович' , 'Вралов' , '12/09/1996' , '212727' , 5);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(31 , 'Феодул' , 'Ильич' , 'Беклемишев' , '17/08/1945' , '111098' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(32 , 'Софроний' , 'Елистратович' , 'Маткевич' , '18/09/1978' , '123458' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(33 , 'Никазий' , 'Алексеевич' , 'Дивеев' , '12/02/1967' , '987569' , 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(34 , 'Иеремия' , 'Матфеевич' , 'Болычевцев' , '5/02/1980' , '475836' , 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(35 , 'Флавиан' , 'Гербертович' , 'Чекмарёв' , '23/06/1975' , '857480' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(36 , 'Руф' , 'Северьянович' , 'Троицын' , '3/11/1974' , '200000' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(37 , 'Дмитрий' , 'Александрович' , 'Белоусов' , '05/07/1999' , '204560' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(38 , 'Гликерий' , 'Северьянович' , 'Михнев' , '5/12/1957' , '400000' , 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(39 , 'Памфил' , 'Ульянович' , 'Козакевич' , '6/11/1999' , '500000' , 5);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(40 , 'Эрнест' , 'Азарьевич' , 'Чулков' , '7/10/1998' , '600000' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(41 , 'Аполлинарий' , 'Ануфриевич' , 'Наумов' , '8/09/1999' , '700000' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(42 , 'Ефрем' , 'Азарьевич' , 'Шевченко' , '9/08/1967' , '800000' , 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(43 , 'Конон' , 'Алексеевич' , 'Варсонофьев' , '10/07/1998' , '900000' , 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(44 , 'Игнатий' , 'Титович' , 'Вралов' , '11/06/1950' , '389020' , 5);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(45 , 'Аполлинарий' , 'Аронович' , 'Айдаров' , '12/05/1956' , '101010' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(46 , 'Агапий' , 'Леонардович' , 'Болкунов' , '13/04/1998' , '202020' , 2);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(47 , 'Егор' , 'Селифанович' , 'Велегурский' , '14/03/1954' , '303030' , 3);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(48 , 'Кузьма' , 'Мелентьевич' , 'Гудович' , '15/02/1976' , '404040' , 4);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(49 , 'Митрий' , 'Анисимович' , 'Нестеров' , '16/01/1987' , '505050' , 1);
INSERT INTO [Patient](Patient_id, Name, Patronimic, Surname,  Born_date, Policy_No, Social_status_id)VALUES(50 , 'Антон' , 'Нифонтович' , 'Леонович' , '17/03/1987' , '678497' , 1);


INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(1 , 'Анатолий' , 'Гнилосыр' , 'Петрович' , '15' , 100 , 100);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(2 , 'Егор' , 'Ебибаев' , 'Валентинович' , '5' , 101 , 101);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(3 , 'Никита' , 'Забаннов' , 'Тимофеевич' , '6' , 102 , 103);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(4 , 'Степан' , 'Могучий' , 'Богданович' , '7' , 103 , 4);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(5 , 'Артём' , 'Херняк' , 'Егорович' , '8' , 104 , 5);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(6 , 'Гавриил' , 'Склизман' , 'Дмитриевич' , '9' , 105 , 6)
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(7 , 'Анатолий' , 'Ящур' , 'Олегович' , '10' , 106 , 7);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(8 , 'Даниил' , '' , 'Жлоба-Погорельс' , '11' , 107 , 8);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(9 , 'Станислав' , 'Вревский' , 'Романович' , '12' , 108 , 9);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(10 , 'Дмитрий' , 'Бездельников' , 'Петрович' , '13' , 109 , 10);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(11 , 'Евгений' , 'Недоносков' , 'Романович' , '14' , 110 , 21);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(12 , 'Дмитрий' , 'Прилипский' , 'Даниилович' , '15' , 111 , 22);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(13 , 'Богдан' , 'Руйкуйжевич' , 'Святославович' , '16' , 112 , 23);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(14 , 'Станислав' , 'Благодуров' , 'Глебович' , '17' , 113 , 24);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(15 , 'Леонид' , 'Выродов' , 'Фёдорович' , '18' , 114 , 25); 
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(16 , 'Кирилл' , 'Забабахин' , 'Геннадьевич' , '19' , 115 , 26);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(17 , 'Павел' , 'Бородавкин' , 'Денисович' , '20' , 116 , 27);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(18 , 'Иван' , 'Блюваль' , 'Яковлевич' , '5' , 117 , 28);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(19 , 'Артём' , 'Моторов' , 'Максимович' , '6' , 118 , 29);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(20 , 'Сергей' , 'Легкобытов' , 'Олегович' , '7' , 119 , 30);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(21 , 'Леонид' , 'Прикольский' , 'Романович' , '8' , 120 , 41)
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(22 , 'Роман' , 'Жлобицкий' , 'Олегович' , '9' , 121 , 42);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(23 , 'Тимур' , 'Ругаев' , 'Тимурович' , '10' , 122 , 43);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(24 , 'Валерий' , 'Оболдуев' , 'Матвеевич' , '11' , 123 , 44);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(25 , 'Глеб' , 'Беззадов' , 'Антонович' , '12' , 124 , 45);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(26 , 'Алексей' , 'Лихопой' , 'Владимирович' , '13' , 125 , 46);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(27 , 'Вадим' , 'Блятник' , 'Вячеславович' , '14' , 126 , 47);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(28 , 'Андрей' , 'Гавиносер' , 'Фёдорович' , '15' , 127 , 48);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(29 , 'Григорий' , 'Ссанов' , 'Святославович' , '16' , 128 , 49);
INSERT INTO [Treatment Doctor](Treatment_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(30 , 'Иннокентий' , 'Голопузиков' , 'Даниилович' , '17' , 129 , 50);

 
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(1 , 'Ярослав' , 'Забабахин' , 'Иннокентьевич' , '18' , 130 , 1);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(2 , 'Святослав' , 'Благодуров' , 'Валерьевич' , '19' , 131 , 2);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(3 , 'Георгий' , 'Гольдштейн' , 'Аркадьевич' , '20' , 132 , 3);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(4 , 'Семён' , 'Левин' , 'Романович' , '5' , '133' , 103);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(5 , 'Станислав' , 'Гнилосыр' , 'Юрьевич' , '6' , 134 , 104);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(6 , 'Роман' , 'Новорусский' , 'Никитич' , '7' , 135 , 105)
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(7 , 'Яков' , 'Яроцкий' , 'Борисович' , '8' , 136 , 106);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(8 , 'Егор' , 'Пивной' , 'Вячеславович' , '9' , 137 , 107);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(9 , 'Евгений' , 'Зеленый' , 'Данилович' , '10' , 138 , 108);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(10 , 'Сергей' , 'Гадин' , 'Владиславович' , '11' , 139 , 109);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(11 , 'Станислав' , 'Бездушный' , 'Степанович' , '12' , 140 , 110);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(12 , 'Гавриил' , 'Педякин' , 'Ростиславович' , '13' , 141 , 111);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(13 , 'Илья' , 'Недокус' , 'Иннокентьевич' , '14' , 142 , 112);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(14 , 'Антон' , 'Брюхов' , 'Валерьевич' , '15' , 143 , 113);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(15 , 'Дмитрий' , 'Обезьянов' , 'Эдуардович' , '16' , 144 , 114); 
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(16 , 'Алексей' , 'Приезжаев' , 'Тимурович' , '17' , 145 , 115);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(17 , 'Антон' , 'Некротюк' , 'Егорович' , '18' , 146 , 116);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(18 , 'Евгений' , 'Дубасов' , 'Данилович' , '19' , 147 , 117);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(19 , 'Ростислав' , 'Скороед' , 'Станиславович' , '20' , 148 , 118);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(20 , 'Руслан' , 'Невежин' , 'Валентинович' , '5' , 149 , 119);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(21 , 'Тимофей' , 'Легкобытов' , 'Олегович' , '6' , 150 , 120)
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(22 , 'Павел' , 'Докукин' , 'Вадимович' , '7' , 151 , 121);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(23 , 'Даниил' , 'Пендерас' , 'Ильич' , '8' , 152 , 122);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(24 , 'Ярослав' , 'Обличинский' , 'Алексеевич' , '9' , 153 , 123);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(25 , 'Филипп' , 'Голубец' , 'Васильевич' , '10' , 154 , 124);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(26 , 'Роман' , 'Скоропостижный' , 'Васильевич' , '11' , 155 , 125);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(27 , 'Денис' , 'Облакевич' , 'Сергеевич' , '12' , 156 , 126);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(28 , 'Владислав' , 'Удобников' , 'Никитич' , '13' , 157 , 127);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(29 , 'Василий' , 'Йобель' , 'Петрович' , '14' , 158 , 128);
INSERT INTO [Diagnosis Doctor](Diagnosis_Doctor_id, Name, Surename, Patronimic, Expirience, Specialization_id, Cabinet_No_id)VALUES(30 , 'Фёдор' , 'Гугель' , 'Филиппович' , '15' , 159 , 129); 


INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(1,  '05/01/2016' , 1 , '23/01/2016' , 1 , 1 , 1 , 'Авитаминоз');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(2,  '20/02/2016' , 2 , '11/09/2016' , 2 , 2 , 2 , 'Алкогольная интоксикация');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(3, '13/03/2016' , 3 , '21/10/2016' , 3 , 3 , 3 , 'Аллергия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(4, '04/04/2016' , 4 , '22/11/2016' , 4 , 4 , 4 , 'Кариес');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(5, '30/01/2016' , 5 , '23/12/2016' , 1 , 5 , 5 , 'Амебиаз');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(6, '21/02/2016' , 6 , '30/03/2016' , 2 , 6 , 6 , 'Анальная трещина хроническая');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(7, '15/03/2016' , 7 , '11/09/2016' , 3 , 7 , 7 , 'Анемия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(8, '16/04/2016' , 8 , '24/08/2016' , 4 , 8 , 8 , 'Анорексия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(9, '25/01/2016' , 9 , '25/07/2016' , 1 , 9 , 9 , 'Гастрит');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(10, '10/02/2016' , 10 , '23/06/2016' , 2 , 10 , 10 , 'Аритмия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(11, '03/03/2016' , 11 , '10/05/2016' , 3 , 11 , 11 , 'Артрит');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(12, '02/04/2016' , 12 , '30/04/2016' , 4 , 12 , 12 , 'Цироз печени');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(13, '20/01/2016' , 13 , '04/11/2016' , 1 , 13 , 13 , 'Атрофия слизистой');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(14, '17/02/2016' , 14 , '02/07/2016' , 2 , 14 , 14 , 'Бессоница');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(15, '17/03/2016' , 15 , '30/06/2016' , 3 , 15 , 15 , 'Кариес');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(16, '18/04/2016' , 16 , '01/09/2016' , 4 , 16 , 16 , 'Бешенство');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(17, '19/01/2016' , 17 , '23/10/2016' , 1 , 17 , 17 , 'Бронхит');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(18,'20/02/2016' , 18 , '24/11/2016' , 2 , 18 , 18 , 'Простуда');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(19, '11/03/2016' , 19, '25/12/2016' , 3 , 19 , 19 , 'Бронхиальная асма');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(20, '08/04/2016' , 20 , '21/08/2016' , 4 , 20 , 20 , 'Васкулит');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(21, '09/01/2016' , 21 , '25/05/2016' , 1 , 21 , 21 , 'Вирусная пневмония');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(22, '23/02/2016' , 22 , '26/05/2016' , 2 , 22 , 22 , 'Вывих ноги');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(23, '16/03/2016' , 23 , '21/05/2016' , 3 , 23 , 23 , 'Выкидыш');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(24, '15/04/2016' , 24 , '03/07/2016' , 4 , 24 , 24 , 'Гематома');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(25, '24/01/2016' , 25 , '04/02/2016' , 1 , 25 , 25 , 'Гемофилия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(26, '22/02/2016' , 26 , '05/09/2016' , 2 , 26 , 26 , 'Гепатит А');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(27, '29/03/2016' , 27 , '06/10/2016' , 3 , 27 , 27 , 'Кариес');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(28, '01/04/2016' , 28 , '07/11/2016' , 4 , 28 , 28 , 'Гидронефроз');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(29, '06/01/2016' , 29 , '08/12/2016' , 1 , 29 , 29 , 'Гидроцефалия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(30, '08/02/2016' , 30 , '10/09/2010' , 2 , 30 , 30 , 'Гингивит');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(31, '17/03/2016' , 1 , '11/10/2016' , 3 , 1 , 31 , 'Гиперполименорея');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(32, '23/04/2016' , 2 , '27/04/2016' , 4 , 2 , 32 , 'Гнойная рана');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(33, '15/01/2016' , 3 , '12/08/2016' , 1 , 3 , 33 , 'Мигрень');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(34, '12/02/2016' , 4 , '13/07/2016' , 2 , 4 , 34 , 'Гонорея');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(35, '19/03/2016' , 5 , '14/06/2016' , 3 , 5 , 35 , 'Грибок ногтей');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(36, '23/04/2016' , 6 , '15/05/2016' , 4 , 6 , 36 , 'Кариес');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(37, '12/01/2016' , 7 , '16/04/2016' , 1 , 7 , 37 , 'Вирусная пневмония');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(38, '23/02/2016' , 8 , '17/07/2016' , 2 , 8 , 38 , 'Грыжа поясничного отдела');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(39, '14/03/2016' , 9 , '18/08/2016' , 3 , 9 , 39 , 'Кариес');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(40, '20/04/2016' , 10 , '19/09/2016' , 4 , 10 , 40 , 'Депрессия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(41, '12/01/2016' , 11 , '29/06/2016' , 1 , 11 , 41 , 'Диабет');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(42, '24/02/2016' , 12 , '20/07/2016' , 2 , 12 , 42 , 'Дизартрия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(43, '17/03/2016' , 13 , '21/08/2016' , 3 , 13 , 43 , 'Дизентерия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(44, '16/04/2016' , 14 , '22/09/2016' , 4 , 14 , 44 , 'Дизентерия желчных путей');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(45, '01/01/2016' , 15 , '29/01/2016' , 1 , 15 , 45 , 'Дисменорея');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(46, '03/02/2016' , 16 , '23/05/2016' , 2 , 16 , 46 , 'Дистрофия роговицы');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(47, '04/03/2016' , 17 , '23/03/2016' , 3 , 17 , 47 , 'Дифтерия');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(48, '05/04/2016' , 18 , '24/06/2016' , 4 , 18 , 48 , 'Заболевание горла');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(49, '02/01/2016' , 19 , '25/07/2016' , 1 , 19 , 49 , 'Зависимость');
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(50, '01/02/2016' , 20 , '26/10/2016' , 2 , 20 , 50 , 'Кариес');

INSERT INTO[Current state](Current_state_id, Current_state)VALUES(1, 'средней тяжести'); 
INSERT INTO[Current state](Current_state_id, Current_state)VALUES(2, 'тяжелое');
INSERT INTO[Current state](Current_state_id, Current_state)VALUES(3, 'направлен в стационар');
INSERT INTO[Current state](Current_state_id, Current_state)VALUES(4, 'умер'); 
  
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(100 , '1' , 50 , 1);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(101 , '2' , 49 , 2);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(102 , '3' , 48 , 3);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(103 , '4' , 47 , 4);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(104 , '5' , 46 , 5);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(105 , '6' , 45 , 6);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(106 , '7' , 44 , 7);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(107 , '8' , 43 , 8);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(108 , '9' , 42 , 9);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(109 , '10' , 41 , 10);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(110 , '11' , 40 , 11);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(111 , '12' , 39 , 12);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(112 , '13' , 38, 13);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(113 , '14' , 37 , 14);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(114 , '15' , 36 , 15);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(115 , '16' , 35 , 16);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(116 , '17' , 34 , 17);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(117 , '18' , 33 , 18);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(118 , '19' , 32 , 19);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(119 , '20' , 31 , 20);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(120 , '21' , 30 , 21);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(121 , '22' , 29 , 22);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(122 , '23' , 28 , 23);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(123 , '24' , 27 , 24);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(124 , '25' , 26 , 25);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(125 , '26' , 25 , 26);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(126 , '27' , 24 , 27);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(127 , '28' , 23 , 28);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(128 , '29' , 22 , 29);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(129 , '30' , 21 , 30);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(130 , '31' , 20 , 31);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(131 , '32' , 19 , 32);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(132 , '33' , 18 , 33);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(133 , '34' , 17 , 34);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(134 , '35' , 16 , 35);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(135 , '36' , 15 , 36);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(136 , '37' , 14 , 37);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(137 , '38' , 13 , 38);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(138 , '39' , 12 , 39);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(139 , '40' , 11 , 40);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(140 , '41' , 10 , 41);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(141 , '42' , 9 , 1);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(142 , '43' , 8 , 2);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(143 , '44' , 7 , 3);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(144 , '45' , 6 , 4);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(145 , '46' , 5 , 5);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(146 , '47' , 4 , 6);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(147 , '48' , 3 , 7);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(148 , '49' , 2 , 8);
INSERT INTO[Recipe](Recipe_id, Recipe_No, Treatment_id, Medicine_id)VALUES(149 , '50' , 1 , 9);


ALTER TABLE [Treatment Doctor] WITH CHECK ADD CONSTRAINT [Treatment_Doctor_id_1] FOREIGN KEY ([Specialization_id]) REFERENCES [Specialization]([Specialization_id])
ON DELETE CASCADE;

ALTER TABLE [Treatment Doctor] WITH CHECK ADD CONSTRAINT [Treatment_Doctor_id_2] FOREIGN KEY ([Cabinet_No_id]) REFERENCES [Cabinet No.]([Cabinet_No_id])
ON DELETE CASCADE;

ALTER TABLE [Treatment] WITH CHECK ADD CONSTRAINT [Treatment_id_1] FOREIGN KEY ([Diagnosis_Doctor_id]) REFERENCES [Diagnosis Doctor]([Diagnosis_Doctor_id])
ON DELETE CASCADE;

ALTER TABLE [Treatment] WITH CHECK ADD CONSTRAINT [Treatment_id_2] FOREIGN KEY ([Treatment_Doctor_id]) REFERENCES [Treatment Doctor]([Treatment_Doctor_id])
ON DELETE CASCADE;

ALTER TABLE [Treatment] WITH CHECK ADD CONSTRAINT [Treatment_id_3] FOREIGN KEY ([Patient_id]) REFERENCES [Patient]([Patient_id])
ON delete CASCADE;

ALTER TABLE [Treatment] WITH CHECK ADD CONSTRAINT [Treatment_id_4] FOREIGN KEY ([Current_state_id]) REFERENCES [Current state]([Current_state_id])
ON delete CASCADE;

ALTER TABLE [Patient] WITH CHECK ADD CONSTRAINT [Patient_id] FOREIGN KEY ([Social_status_id]) REFERENCES [Social status]([Social_Status_id])
ON delete CASCADE;

ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_id_1] FOREIGN KEY ([Medicine_id]) REFERENCES [Medicine]([Medicine_id])
ON delete CASCADE;

ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_id_2] FOREIGN KEY ([Treatment_id]) REFERENCES [Treatment]([Treatment_id])
ON delete CASCADE;

ALTER TABLE [Diagnosis Doctor] WITH CHECK ADD CONSTRAINT [Diagnosis_Doctor_id_1] FOREIGN KEY ([Specialization_id]) REFERENCES [Specialization]([Specialization_id])


ALTER TABLE [Diagnosis Doctor] WITH CHECK ADD CONSTRAINT [Diagnosis_Doctor_id_2] FOREIGN KEY ([Cabinet_No_id]) REFERENCES [Cabinet No. ]([Cabinet_No_id])



