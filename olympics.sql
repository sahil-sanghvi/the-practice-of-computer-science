---------------------------------------------------------
--
-- olympics.sql
-- CSC 106 - Spring 2024
--
-- Constructs a database containing Olympics data.
--
-- A. Estey - 2024/02/19
--
---------------------------------------------------------

-- If the tables already exist, delete them --
drop table if exists athletes;
drop table if exists events;
drop table if exists registration;
drop table if exists medals;

-----------------------
-- Create the tables --
-----------------------
create table athletes(athleteID text, name text, age int, country text);
create table events(eventID text, eventName text, category text);
create table registration(eventID text, athleteID text, date text);
create table medals(place text, athleteID text, eventID text);

---------------------------------
-- Insert data into each table --
---------------------------------

-- Athlete info --
insert into athletes values ('a01', 'Sifan Hassan',             29, 'Netherlands');
insert into athletes values ('a02', 'Usain Bolt',               25, 'Jamaica');
insert into athletes values ('a03', 'Elaine Thompson-Herah',    27, 'Jamaica');
insert into athletes values ('a04', 'Jakob Ingebrigtsen',       20, 'Norway');
insert into athletes values ('a05', 'Mo Farah',                 30, 'Great Britain');
insert into athletes values ('a06', 'Josh Kerr',                23, 'Great Britain');
insert into athletes values ('a07', 'Wu Minxia',                24, 'China');
insert into athletes values ('a08', 'Chen Ruolin',              17, 'China');
insert into athletes values ('a09', 'Allyson Fenix',            26, 'USA');
insert into athletes values ('a10', 'Florence Griffith Joyner', 26, 'USA');
insert into athletes values ('a11', 'Michael Johnson',          28, 'USA');
insert into athletes values ('a12', 'Katie Ledecky',            18, 'USA');
insert into athletes values ('a13', 'Michael Phelps',           22, 'USA');
insert into athletes values ('a14', 'Ryan Lochte',              25, 'USA');
insert into athletes values ('a15', 'Andre Degrasse',           26, 'Canada');
insert into athletes values ('a16', 'Emilie Heymans',           20, 'Canada');
insert into athletes values ('a17', 'Summer McIntosh',          14, 'Canada');
insert into athletes values ('a18', 'Vivian Cheruiyot',         32, 'Kenya');
insert into athletes values ('a19', 'Eliud Kipchoge',           31, 'Kenya');
insert into athletes values ('a20', 'Faith Kipyegon',           28, 'Kenya');
insert into athletes values ('a21', 'Larissa Latynina',         31, 'Russia');
insert into athletes values ('a22', 'Vera Caslavaska',          25, 'Czechoslovakia');
insert into athletes values ('a23', 'Agnes Keleti',             35, 'Hungary');
insert into athletes values ('a24', 'Nadia Comaneci',           14, 'Romania');

-- Event info --
insert into events values ('e01', '100m',   'Track & Field');
insert into events values ('e02', '200m',   'Track & Field');
insert into events values ('e03', '400m',   'Track & Field');
insert into events values ('e04', '1500m',  'Track & Field');
insert into events values ('e05', '5000m',  'Track & Field');
insert into events values ('e06', '10000m', 'Track & Field');
insert into events values ('e07', 'Floor', 'Gymnastics');
insert into events values ('e08', 'Vault', 'Gymnastics');
insert into events values ('e09', 'Bars',  'Gymnastics');
insert into events values ('e10', 'Beam',  'Gymnastics');
insert into events values ('e11', 'Backstroke', 'Aquatics');
insert into events values ('e12', 'Butterfly',  'Aquatics');
insert into events values ('e13', 'Freestyle',  'Aquatics');
insert into events values ('e14', '3m diving',  'Aquatics');
insert into events values ('e15', '10m diving', 'Aquatics');
		
-- Medal info --
insert into medals values ('2nd', 'a01', 'e04');
insert into medals values ('1st', 'a01', 'e05');
insert into medals values ('1st', 'a01', 'e06');
insert into medals values ('1st', 'a02', 'e01');
insert into medals values ('1st', 'a02', 'e02');
insert into medals values ('2nd', 'a02', 'e03');
insert into medals values ('2nd', 'a03', 'e01');
insert into medals values ('2nd', 'a03', 'e02');
insert into medals values ('1st', 'a04', 'e04');
insert into medals values ('2nd', 'a04', 'e05');
insert into medals values ('1st', 'a05', 'e05');
insert into medals values ('2nd', 'a05', 'e06');
insert into medals values ('2nd', 'a06', 'e04');
insert into medals values ('1st', 'a07', 'e14');
insert into medals values ('2nd', 'a07', 'e15');
insert into medals values ('2nd', 'a08', 'e14');
insert into medals values ('1st', 'a08', 'e15');
insert into medals values ('3rd', 'a09', 'e01');
insert into medals values ('3rd', 'a09', 'e02');
insert into medals values ('3rd', 'a09', 'e03');
insert into medals values ('1st', 'a10', 'e01');
insert into medals values ('1st', 'a10', 'e02');
insert into medals values ('2nd', 'a11', 'e02');
insert into medals values ('1st', 'a11', 'e03');
insert into medals values ('1st', 'a12', 'e11');
insert into medals values ('1st', 'a12', 'e12');
insert into medals values ('2nd', 'a12', 'e13');
insert into medals values ('1st', 'a13', 'e11');
insert into medals values ('1st', 'a13', 'e12');
insert into medals values ('1st', 'a13', 'e13');
insert into medals values ('2nd', 'a14', 'e11');
insert into medals values ('2nd', 'a14', 'e13');
insert into medals values ('2nd', 'a15', 'e01');
insert into medals values ('3rd', 'a15', 'e02');
insert into medals values ('3rd', 'a16', 'e14');
insert into medals values ('3rd', 'a16', 'e15');
insert into medals values ('1st', 'a17', 'e13');
insert into medals values ('2nd', 'a18', 'e05');
insert into medals values ('2nd', 'a18', 'e06');
insert into medals values ('1st', 'a19', 'e06');
insert into medals values ('1st', 'a20', 'e04');
insert into medals values ('3rd', 'a20', 'e05');
insert into medals values ('1st', 'a21', 'e07');
insert into medals values ('1st', 'a21', 'e08');
insert into medals values ('3rd', 'a22', 'e07');
insert into medals values ('2nd', 'a22', 'e08');
insert into medals values ('2nd', 'a22', 'e09');
insert into medals values ('1st', 'a22', 'e10');
insert into medals values ('2nd', 'a23', 'e07');
insert into medals values ('3rd', 'a23', 'e09');
insert into medals values ('3rd', 'a23', 'e10');
insert into medals values ('1st', 'a24', 'e09');
insert into medals values ('2nd', 'a24', 'e10');

-- Registration info --
insert into registration values ('e01', 'a03', '2024-07-26');
insert into registration values ('e01', 'a09', '2024-07-26');
insert into registration values ('e01', 'a10', '2024-07-26');
insert into registration values ('e01', 'a02', '2024-07-29');
insert into registration values ('e01', 'a15', '2024-07-29');
insert into registration values ('e02', 'a03', '2024-07-27');
insert into registration values ('e02', 'a09', '2024-07-27');
insert into registration values ('e02', 'a10', '2024-07-27');
insert into registration values ('e02', 'a02', '2024-07-31');
insert into registration values ('e02', 'a11', '2024-07-31');
insert into registration values ('e02', 'a15', '2024-07-31');
insert into registration values ('e03', 'a02', '2024-07-28');
insert into registration values ('e03', 'a09', '2024-07-28');
insert into registration values ('e03', 'a11', '2024-07-28');
insert into registration values ('e04', 'a01', '2024-07-27');
insert into registration values ('e04', 'a20', '2024-07-27');
insert into registration values ('e04', 'a04', '2024-07-28');
insert into registration values ('e04', 'a06', '2024-07-28');
insert into registration values ('e05', 'a01', '2024-07-30');
insert into registration values ('e05', 'a18', '2024-07-30');
insert into registration values ('e05', 'a20', '2024-07-30');
insert into registration values ('e05', 'a04', '2024-07-31');
insert into registration values ('e05', 'a05', '2024-07-31');
insert into registration values ('e06', 'a01', '2024-08-01');
insert into registration values ('e06', 'a18', '2024-08-01');
insert into registration values ('e06', 'a05', '2024-08-02');
insert into registration values ('e06', 'a19', '2024-08-03');
insert into registration values ('e07', 'a21', '2024-07-26');
insert into registration values ('e07', 'a22', '2024-07-26');
insert into registration values ('e07', 'a23', '2024-07-26');
insert into registration values ('e08', 'a21', '2024-07-26');
insert into registration values ('e08', 'a22', '2024-07-26');
insert into registration values ('e09', 'a22', '2024-07-27');
insert into registration values ('e09', 'a23', '2024-07-27');
insert into registration values ('e09', 'a24', '2024-07-27');
insert into registration values ('e10', 'a22', '2024-07-27');
insert into registration values ('e10', 'a23', '2024-07-27');
insert into registration values ('e10', 'a24', '2024-07-27');
insert into registration values ('e11', 'a12', '2024-07-28');
insert into registration values ('e11', 'a13', '2024-07-29');
insert into registration values ('e11', 'a14', '2024-07-29');
insert into registration values ('e12', 'a12', '2024-07-29');
insert into registration values ('e12', 'a13', '2024-07-30');
insert into registration values ('e13', 'a12', '2024-07-30');
insert into registration values ('e13', 'a17', '2024-07-30');
insert into registration values ('e13', 'a13', '2024-07-31');
insert into registration values ('e13', 'a14', '2024-07-31');
insert into registration values ('e14', 'a07', '2024-08-01');
insert into registration values ('e14', 'a08', '2024-08-01');
insert into registration values ('e14', 'a16', '2024-08-01');
insert into registration values ('e15', 'a07', '2024-08-02');
insert into registration values ('e15', 'a08', '2024-08-02');
insert into registration values ('e15', 'a16', '2024-08-02');


.mode column 
.header on