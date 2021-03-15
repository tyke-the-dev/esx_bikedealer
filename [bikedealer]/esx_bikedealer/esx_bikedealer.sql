INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_bikedealer','Concessionnaire',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_bikedealer','bikedealer',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('bikedealer','Bike Dealer')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('bikedealer',0,'recruit','Recrue',10,'{}','{}'),
	('bikedealer',1,'novice','Novice',25,'{}','{}'),
	('bikedealer',2,'experienced',' Co-owner',40,'{}','{}'),
	('bikedealer',3,'boss','Owner',0,'{}','{}')
;

CREATE TABLE `bikedealer_vehicles` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `importvehicle_sold` (
	`client` VARCHAR(50) NOT NULL,
	`model` VARCHAR(50) NOT NULL,
	`plate` VARCHAR(50) NOT NULL,
	`soldby` VARCHAR(50) NOT NULL,
	`date` VARCHAR(50) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `bikesrented_vehicles` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(22) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `bike_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `bike_categories` (name, label) VALUES
   ('importbikes','Real Bikes'),
   ('gtabikes','GTA-V Bikes')
;

CREATE TABLE `bikes` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,

	PRIMARY KEY (`model`)
);

INSERT INTO `bikes` (name, model, price, category) VALUES
	('Akuma','AKUMA',7500,'gtabikes'),
	('Avarus','avarus',18000,'gtabikes'),
	('Bagger','bagger',13500,'gtabikes'),
	('Bati 801','bati',12000,'gtabikes'),
	('Bati 801RR','bati2',19000,'gtabikes'),
	('BF400','bf400',6500,'gtabikes'),
	('Carbon RS','carbonrs',18000,'gtabikes'),
	('Chimera','chimera',38000,'gtabikes'),
	('Cliffhanger','cliffhanger',9500,'gtabikes'),
	('Daemon','daemon',11500,'gtabikes'),
	('Daemon High','daemon2',13500,'gtabikes'),
	('Defiler','defiler',9800,'gtabikes'),
	('Double T','double',28000,'gtabikes'),
	('Enduro','enduro',5500,'gtabikes'),
	('Esskey','esskey',4200,'gtabikes'),
	('Faggio','faggio',1900,'gtabikes'),
	('Vespa','faggio2',2800,'gtabikes'),
	('Gargoyle','gargoyle',16500,'gtabikes'),
	('Hakuchou','hakuchou',31000,'gtabikes'),
	('Hakuchou Sport','hakuchou2',55000,'gtabikes'),
	('Hexer','hexer',12000,'gtabikes'),
	('Innovation','innovation',23500,'gtabikes'),
	('Manchez','manchez',5300,'gtabikes'),
	('Nemesis','nemesis',5800,'gtabikes'),
	('Nightblade','nightblade',35000,'gtabikes'),
	('PCJ-600','pcj',6200,'gtabikes'),
	('Ruffian','ruffian',6800,'gtabikes'),
	('Sanchez','sanchez',5300,'gtabikes'),
	('Sanchez Sport','sanchez2',5300,'gtabikes'),
	('Sanctus','sanctus',25000,'gtabikes'),
	('Sovereign','sovereign',22000,'gtabikes'),
	('Shotaro Concept','shotaro',320000,'gtabikes'),
	('Thrust','thrust',24000,'gtabikes'),
	('Vader','vader',7200,'gtabikes'),
	('Vortex','vortex',9800,'gtabikes'),
	('Woflsbane','wolfsbane',9000,'gtabikes'),
	('Zombie','zombiea',9500,'gtabikes'),
	('Zombie Luxuary','zombieb',12000,'gtabikes')
;
