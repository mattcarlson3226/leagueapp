--DROP TABLE IF EXISTS champion
--DROP TABLE IF EXISTS role;
--DROP TABLE IF EXISTS position;
--DROP TABLE IF EXISTS position_role;

--DROP SEQUENCE champion_champion_id_seq;
--DROP SEQUENCE role_role_id_seq;
--DROP SEQUENCE position_position_id_seq;


	CREATE SEQUENCE champion_champion_id_seq;

	CREATE TABLE champion (
	champion_id integer DEFAULT nextval('champion_champion_id_seq'::regclass) NOT NULL,
	name varchar(20) NOT NULL,
	release_date date NOT NULL,
	lore varchar(2000),
	CONSTRAINT pk_champion_champion_id PRIMARY KEY (champion_id) --what is constraint
);

	CREATE TABLE role (
	role_id integer NOT NULL,
	name varchar(10) NOT NULL,
	description varchar(500),
	CONSTRAINT pk_role_role_id PRIMARY KEY (role_id)
	);

	CREATE TABLE position (
	position_id integer NOT NULL,
	name varchar(10),
	description varchar(500),
	CONSTRAINT pk_position_id PRIMARY KEY(position_id)
	);
	
	CREATE TABLE position_role (
	position_id integer NOT NULL,
	role_id integer NOT NULL,
	CONSTRAINT pk_position_role_position_id_role_id PRIMARY KEY (position_id, role_id)
	);
	
	CREATE TABLE champion_role (
	champion_id integer NOT NULL,
	role_id integer NOT NULL,
	CONSTRAINT pk_champion_role_champion_id_role_id PRIMARY KEY (champion_id, role_id)
	);
	--champions
	INSERT INTO champion(name, release_date, lore) VALUES ('Aatrox', '2013-06-13', ''); 
	INSERT INTO champion(name, release_date, lore) VALUES ('Ahri', '2011-12-14', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Akali', '2010-05-11', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Alistar', '2010-02-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Amumu','2009-06-26', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Anivia','2009-07-10', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Annie','2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Ashe','2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Aurelion Sol','2016-03-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Azir','2014-09-16', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Bard','2015-03-12', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Blitzcrank','2009-09-02', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Brand','2011-04-12', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Braum','2014-05-12', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Caitlyn','2011-01-04', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Cassiopeia','2010-12-14', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Cho''gath','2009-06-26', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Corki','2009-09-19', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Darius', '2012-05-23', 'There is no greater symbol of Noxian might than Darius, the nations most feared and battle-hardened warrior. Orphaned at a young age, Darius had to fight to keep himself and his younger brother alive. By the time he joined the military, he had already developed the strength and discipline of a veteran soldier. The first true test of Dariuss resolve occurred in a crucial battle against Demacia, where the Noxian forces were exhausted and outnumbered. Darius captain called for his troops to retreat, but Darius refused to accept such an act of cowardice. Breaking formation, Darius strode towards the captain and decapitated him with one sweep of his gigantic axe. Both terrified and inspired, the soldiers followed Darius into battle and fought with incredible strength and fervor. After a long and grueling battle, they ultimately emerged victorious. Seizing momentum from this victory, Darius led his now fiercely loyal troops in a devastating campaign against Demacia. After proving his power on the battlefield, Darius turned his gaze homeward. He saw a Noxus riddled with weakness, where greedy, complacent nobles drained the nations strength. Seeking to restore his country to greatness, Darius took it upon himself to reshape the Noxian leadership. He identified weak figureheads and violently removed them from their positions of power. Many in Noxus saw Dariuss cull as an attempt to seize power, but he had a different plan for the throne. He had been watching the rise of Jericho Swain with keen interest. In Swain, Darius saw a leader with the mind and determination to bring Noxus to glory. Now allied with the Master Tactician, Darius works to unite the nation behind his vision of true Noxian strength. A united Noxus could control the world - and would deserve to. -- Darius');
	INSERT INTO champion(name, release_date, lore) VALUES ('Diana','2012-08-07', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Dr. Mundo','2009-09-02', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Draven','2012-06-06', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Ekko','2015-05-28', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Elise','2012-10-26', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Evelynn','2009-05-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Ezreal','2010-03-16', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Fiddlesticks','2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Fiora','2012-02-29', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Fizz','2011-11-15', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Galio','2010-08-10', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Gangplank','2009-08-19', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Garen','2010-04-27', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Gnar','2014-08-14', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Gragas','2010-02-02', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Graves','2011-10-19', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Hecarim','2012-04-18', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Heimerdinger','2009-10-10', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Illaoi','2015-11-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Irelia','2010-11-16', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Janna','2009-09-02', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Jarvan IV','2011-03-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Jax', '2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Jayce','2012-07-07', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Jhin','2016-02-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Jinx','2013-10-10', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Kalista','2014-11-20', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Karma','2011-02-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Karthus','2009-06-12', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Kassidin','2009-08-07', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Katarina','2009-09-19', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Kayle','2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Kennen','2010-04-08', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Kha''Zix','2012-09-27', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Kindred','2015-10-14', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Kog''Maw','2010-06-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('LeBlanc','2010-11-02', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Lee Sin','2011-04-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Leona','2011-02-13', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Lissandra','2013-04-30', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Lucian','2013-08-22', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Lulu','2012-03-20', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Lux','2010-10-19', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Malphite','2009-09-02', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Malzahar','2010-06-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Maokai','2011-02-16', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Master Yi','2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Miss Fortune','2010-09-08', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Mordekaiser', '2010-02-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Morgana','2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Nami','2012-12-07', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Nasus','2009-10-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Nautilus','2012-02-14', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Nidalee','2009-12-17', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Nocturne','2011-03-15', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Nunu','2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Olaf','2010-06-09', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Orianna','2011-06-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Pantheon','2010-02-02', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Poppy','2010-01-13', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Quinn','2013-03-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Rammus','2009-07-10', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Rek''Sai','2014-12-11', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Renekton','2011-01-18', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Rengar','2012-06-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Riven','2011-09-14', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Rumble','2011-04-26', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Ryze','2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Sejuani', '2012-01-17', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Shaco', '2009-10-10', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Shen', '2010-03-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Shyvana', '2011-11-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Singed', '2009-04-18', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Sion', '2010-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Sivir', '2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Skarner', '2011-08-09', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Sona', '2010-09-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Soraka', '2010-10-05', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Swain', '2010-10-05', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Syndra', '2012-09-13', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Tahm Kench', '2015-07-09', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Taliyah', '2016-05-18', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Talon', '2011-08-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Taric', '2009-08-19', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Teemo', '2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Thresh', '2013-01-23', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Tristana', '2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Trundle', '2010-12-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Tryndamere', '2009-05-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Twisted Fate', '2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Twitch', '2009-05-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Udyr', '2009-12-02', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Urgot', '2010-08-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Varus', '2012-05-08', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Vayne', '2011-05-10', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Veigar', '2009-07-24', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Vel''Koz', '2014-02-27', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Vi', '2012-12-19', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Viktor', '2011-12-29', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Vladimir', '2010-07-27', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Volibear', '2011-11-29', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Warwick', '2009-02-21', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Wukong', '2011-07-26', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Xerath', '2011-10-05', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Xin Zhao', '2010-07-13', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Yasuo', '2013-12-13', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Yorick', '2011-06-22', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Zac', '2013-03-29', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Zed', '2012-11-13', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Ziggs', '2012-02-01', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Zilean', '2009-04-18', '');
	INSERT INTO champion(name, release_date, lore) VALUES ('Zyra', '2012-07-24', '');
	--Any New Champions after 8/7/2016 will be put below

	--roles
	INSERT INTO role (role_id, name, description) VALUES (1, 'Assassin', 'Agile champions that close in and take out unsuspecting targets in the blink of an eye. However, they must pick their opportunities carefully since a high-octane offense comes at the cost of low defense and long waits between takedown attempts.');
	INSERT INTO role (role_id, name, description) VALUES (2, 'Fighter', 'Versatile champions that ca take on the role of damage dealer or defender of more fragile teammates. They occupy a happy medium between the massive damage of a Marksman or Mage and the prolonged survivability of a Tank that lets them adapt to various situations');
	INSERT INTO role (role_id, name, description) VALUES (3, 'Mage', 'Volatile champions that cast high-impact spells with various effects, which can include damage, healing, stuns, and more. They are fragile, however, so accuracy and time are often key to keeping themselves, and teammates, alive');
	INSERT INTO role (role_id, name, description) VALUES (4, 'Marksman', 'These champions deal large amounts of consistent, rapid-fire damage to enemies from a safe distance. they often employ the help of Supports to stay alive, as they are fragie and require time to buid up their attack strength over the course of a game');
	INSERT INTO role (role_id, name, description) VALUES (5, 'Support', 'These champions provide lots of utility and set up teams to succeed with practical skills, such as heals, shields, stuns, and more. They often set up the stage to lay traps and avoid ambushes, and depend on teammates to deal the majority of the damage');
	INSERT INTO role (role_id, name, description) VALUES (6, 'Tank', 'Robust champions that can withstand the front lines of conflict, but often do not do much damage themselves. They focus on starting fights, taking hits, and drawing attention away from fragile damage-dealers on the team, who can finish off preoccupied enemies.');
	
	--champion_roles
	INSERT INTO champion_role (champion_id, role_id) VALUES (1, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (1, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (2, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (3, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (4, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (4, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (5, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (5, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (6, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (6, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (7, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (8, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (8, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (9, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (10, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (10, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (11, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (11, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (12, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (12, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (13, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (14, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (14, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (15, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (16, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (17, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (17, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (18, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (19, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (19, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (20, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (20, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (21, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (21, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (22, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (23, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (23, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (24, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (24, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (25, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (25, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (26, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (26, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (27, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (27, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (28, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (28, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (29, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (30, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (30, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (31, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (32, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (32, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (33, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (33, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (34, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (34, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (35, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (36, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (36, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (37, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (38, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (38, 9);
	INSERT INTO champion_role (champion_id, role_id) VALUES (39, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (39, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (40, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (40, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (41, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (41, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (42, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (42, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (43, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (44, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (44, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (45, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (46, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (47, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (47, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (48, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (49, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (49, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (50, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (50, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (51, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (51, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (52, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (53, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (53, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (54, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (54, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (55, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (55, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (56, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (56, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (57, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (57, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (58, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (58, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (59, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (60, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (61, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (61, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (62, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (62, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (63, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (63, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (64, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (64, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (65, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (65, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (66, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (66, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (67, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (68, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (68, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (69, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (69, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (70, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (70, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (71, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (71, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (72, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (72, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (73, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (73, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (74, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (74, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (75, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (75, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (76, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (76, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (77, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (77, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (78, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (78, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (79, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (79, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (80, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (80, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (81, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (81, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (82, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (83, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (83, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (84, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (84, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (85, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (85, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (86, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (86, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (87, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (87, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (88, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (88, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (89, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (90, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (90, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (91, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (91, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (92, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (92, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (93, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (93, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (94, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (95, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (95, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (96, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (96, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (97, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (98, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (98, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (99, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (99, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (100, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (100, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (101, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (101, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (102, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (102, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (103, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (103, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (104, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (104, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (105, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (105, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (106, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (106, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (107, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (107, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (108, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (108, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (109, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (110, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (110, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (111, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (111, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (112, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (112, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (113, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (113, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (114, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (114, 4);
	INSERT INTO champion_role (champion_id, role_id) VALUES (115, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (116, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (117, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (117, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (118, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (119, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (119, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (120, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (120, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (121, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (121, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (122, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (122, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (123, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (123, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (124, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (124, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (125, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (125, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (126, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (126, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (127, 6);
	INSERT INTO champion_role (champion_id, role_id) VALUES (127, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (128, 1);
	INSERT INTO champion_role (champion_id, role_id) VALUES (128, 2);
	INSERT INTO champion_role (champion_id, role_id) VALUES (129, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (130, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (130, 5);
	INSERT INTO champion_role (champion_id, role_id) VALUES (131, 3);
	INSERT INTO champion_role (champion_id, role_id) VALUES (131, 5);	
	
	
	--positions
	INSERT INTO position (position_id, name, description) VALUES (1, 'Top Lane', 'Starting position in the top lane that is normally filled by tanks and fighters.');
	INSERT INTO position (position_id, name, description) VALUES (2, 'Mid Lane', 'Starting position in the middle lane that is normally filled by mages and assassins.');
	INSERT INTO position (position_id, name, description) VALUES (3, 'Jungle', 'Starting position in the jungle. Clears jungle for gold and ganks lanes when possible.');
	INSERT INTO position (position_id, name, description) VALUES (4, 'Bot Lane', 'Starting position in the bottom lane. Typically a marksman and a Support work together to get gold.');
	
	--position_role
	INSERT INTO position_role (position_id, role_id) VALUES (1, 1);
	INSERT INTO position_role (position_id, role_id) VALUES (1, 2);
	INSERT INTO position_role (position_id, role_id) VALUES (1, 6);
	INSERT INTO position_role (position_id, role_id) VALUES (2, 1);
	INSERT INTO position_role (position_id, role_id) VALUES (2, 2);
	INSERT INTO position_role (position_id, role_id) VALUES (2, 3);
	INSERT INTO position_role (position_id, role_id) VALUES (3, 1);
	INSERT INTO position_role (position_id, role_id) VALUES (3, 2);
	INSERT INTO position_role (position_id, role_id) VALUES (3, 6);
	INSERT INTO position_role (position_id, role_id) VALUES (4, 4);
	INSERT INTO position_role (position_id, role_id) VALUES (4, 5);
