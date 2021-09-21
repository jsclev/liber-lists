-- O
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Obelisk Gate'),
    (select id from author where first_name = 'N.' and last_name = 'Jemisin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Old Man''s War'),
    (select id from author where first_name = 'John' and last_name = 'Scalzi'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'On Wings of Song'),
    (select id from author where first_name = 'Thomas' and last_name = 'Disch'));

-- P
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Paladin of Souls'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Palimpsest'),
    (select id from author where first_name = 'Catherynne' and last_name = 'Valente'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Parasite'),
    (select id from author where first_name = 'Mira' and last_name = 'Grant'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Passage'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Peace War'),
    (select id from author where first_name = 'Vernor' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The People of the Wind'),
    (select id from author where first_name = 'Poul' and last_name = 'Anderson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Perdido Street Station'),
    (select id from author where first_name = 'China' and last_name = 'Miéville'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Perelandra'),
    (select id from author where first_name = 'C.' and last_name = 'Lewis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Piranesi'),
    (select id from author where first_name = 'Susanna' and last_name = 'Clarke'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Postman'),
    (select id from author where first_name = 'David' and last_name = 'Brin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Prentice Alvin'),
    (select id from author where first_name = 'Orson' and last_name = 'Card'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Pride of Chanur'),
    (select id from author where first_name = 'C.' and last_name = 'Cherryh'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Project Pope'),
    (select id from author where first_name = 'Clifford' and last_name = 'Simak'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Protector'),
    (select id from author where first_name = 'Larry' and last_name = 'Niven'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Provenance'),
    (select id from author where first_name = 'Ann' and last_name = 'Leckie'));

-- Q
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Queen of Angels'),
    (select id from author where first_name = 'Greg' and last_name = 'Bear'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Quiet Pools'),
    (select id from author where first_name = 'Michael' and last_name = 'Kube-McDowell'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Quiet War'),
    (select id from author where first_name = 'Paul' and last_name = 'McAuley'));

-- R
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Ragged Astronauts'),
    (select id from author where first_name = 'Bob' and last_name = 'Shaw'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Rainbows End'),
    (select id from author where first_name = 'Vernor' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Raven Stratagem'),
    (select id from author where first_name = 'Yoon Ha' and last_name = 'Lee'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Record of a Spaceborn Few'),
    (select id from author where first_name = 'Becky' and last_name = 'Chambers'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Red Mars'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Red Rising'),
    (select id from author where first_name = 'Pierce' and last_name = 'Brown'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Red Prophet'),
    (select id from author where first_name = 'Orson' and last_name = 'Card'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Redshirts'),
    (select id from author where first_name = 'John' and last_name = 'Scalzi'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Relentless Moon'),
    (select id from author where first_name = 'Mary' and last_name = 'Kowal'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Remake'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Remnant Population'),
    (select id from author where first_name = 'Elizabeth' and last_name = 'Moon'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Rendezvous with Rama'),
    (select id from author where first_name = 'Arthur' and last_name = 'Clarke'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Revelation Space'),
    (select id from author where first_name = 'Alastair' and last_name = 'Reynolds'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Revenant Gun'),
    (select id from author where first_name = 'Yoon Ha' and last_name = 'Lee'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Ringworld'),
    (select id from author where first_name = 'Larry' and last_name = 'Niven'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Ringworld Engineers'),
    (select id from author where first_name = 'Larry' and last_name = 'Niven'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Rise of Endymion'),
    (select id from author where first_name = 'Dan' and last_name = 'Simmons'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'River of Gods'),
    (select id from author where first_name = 'Ian' and last_name = 'McDonald'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Road'),
    (select id from author where first_name = 'Cormac' and last_name = 'McCarthy'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Robots of Dawn'),
    (select id from author where first_name = 'Isaac' and last_name = 'Asimov'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Rollback'),
    (select id from author where first_name = 'Robert' and last_name = 'Sawyer'));

-- S
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Saturn''s Children'),
    (select id from author where first_name = 'Charles' and last_name = 'Stross'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Scar'),
    (select id from author where first_name = 'China' and last_name = 'Miéville'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'To Say Nothing of the Dog'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Second Foundation'),
    (select id from author where first_name = 'Isaac' and last_name = 'Asimov'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Seveneves'),
    (select id from author where first_name = 'Neal' and last_name = 'Stephenson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Seventh Son'),
    (select id from author where first_name = 'Orson' and last_name = 'Card'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Shadrach in the Furnace'),
    (select id from author where first_name = 'Robert' and last_name = 'Silverberg'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Singularity Sky'),
    (select id from author where first_name = 'Charles' and last_name = 'Stross'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Six Wakes'),
    (select id from author where first_name = 'Mur' and last_name = 'Lafferty'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Skin Game'),
    (select id from author where first_name = 'Jim' and last_name = 'Butcher'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Sky Road'),
    (select id from author where first_name = 'Ken' and last_name = 'MacLeod'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Slaughterhouse-Five'),
    (select id from author where first_name = 'Kurt' and last_name = 'Vonnegut, Jr.'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Snow Queen'),
    (select id from author where first_name = 'Joan' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Space Opera'),
    (select id from author where first_name = 'Catherynne' and last_name = 'Valente'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Speaker for the Dead'),
    (select id from author where first_name = 'Orson' and last_name = 'Card'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Spin'),
    (select id from author where first_name = 'Robert' and last_name = 'Wilson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Spinning Silver'),
    (select id from author where first_name = 'Naomi' and last_name = 'Novik'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Stand on Zanzibar'),
    (select id from author where first_name = 'John' and last_name = 'Brunner'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Star Light'),
    (select id from author where first_name = 'Hal' and last_name = 'Clement'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Starplex'),
    (select id from author where first_name = 'Robert' and last_name = 'Sawyer'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Starship Troopers'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Startide Rising'),
    (select id from author where first_name = 'David' and last_name = 'Brin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Stations of the Tide'),
    (select id from author where first_name = 'Michael' and last_name = 'Swanwick'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Steel Beach'),
    (select id from author where first_name = 'John' and last_name = 'Varley'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Stochastic Man'),
    (select id from author where first_name = 'Robert' and last_name = 'Silverberg'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Stone Sky'),
    (select id from author where first_name = 'N.' and last_name = 'Jemisin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Storm of Swords'),
    (select id from author where first_name = 'George' and last_name = 'Martin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Strange Case of Dr. Jekyll & Mr. Hyde'),
    (select id from author where first_name = 'Robert' and last_name = 'Stevenson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Stranger in a Strange Land'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Summer Queen'),
    (select id from author where first_name = 'Joan' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Sword of the Lictor'),
    (select id from author where first_name = 'Gene' and last_name = 'Wolfe'));

-- T
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Tau Zero'),
    (select id from author where first_name = 'Poul' and last_name = 'Anderson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Ten Thousand Doors of January'),
    (select id from author where first_name = 'Alix' and last_name = 'Harrow'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'That Hideous Strength'),
    (select id from author where first_name = 'C.' and last_name = 'Lewis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Tea with the Black Dragon'),
    (select id from author where first_name = 'R.' and last_name = 'MacAvoy'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Terminal Experiment'),
    (select id from author where first_name = 'Robert' and last_name = 'Sawyer'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'There Will Be Time'),
    (select id from author where first_name = 'Poul' and last_name = 'Anderson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Mark' and last_name = 'Clifton'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Frank' and last_name = 'Riley'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Three-Body Problem'),
    (select id from author where first_name = 'Cixin' and last_name = 'Liu'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Throne of the Crescent Moon'),
    (select id from author where first_name = 'Saladin' and last_name = 'Ahmed'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Time Enough for Love'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Time Killer'),
    (select id from author where first_name = 'Robert' and last_name = 'Sheckley'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Time Machine'),
    (select id from author where first_name = 'H.' and last_name = 'Wells'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Time of Changes'),
    (select id from author where first_name = 'Robert' and last_name = 'Silverberg'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Time Ships'),
    (select id from author where first_name = 'Stephen' and last_name = 'Baxter'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Time Storm'),
    (select id from author where first_name = 'Gordon' and last_name = 'Dickson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Titan'),
    (select id from author where first_name = 'John' and last_name = 'Varley'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'To Your Scattered Bodies Go'),
    (select id from author where first_name = 'Philip' and last_name = 'Farmer'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Too Like the Lightning'),
    (select id from author where first_name = 'Ada' and last_name = 'Palmer'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Tower of Glass'),
    (select id from author where first_name = 'Robert' and last_name = 'Silverberg'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Towing Jehovah'),
    (select id from author where first_name = 'James' and last_name = 'Morrow'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Trail of Lightning'),
    (select id from author where first_name = 'Rebecca' and last_name = 'Roanhorse'));
