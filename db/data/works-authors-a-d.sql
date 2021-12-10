-- Numbers
insert into work_author (work_id, author_id) values (
    (select id from work where title = '2010: Odyssey Two'),
    (select id from author where first_name = 'Arthur' and last_name = 'Clarke'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = '2312'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));

-- A
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Accelerando'),
    (select id from author where first_name = 'Charles' and last_name = 'Stross'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Algebraist'),
    (select id from author where first_name = 'Iain' and last_name = 'Banks'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'All the Birds in the Sky'),
    (select id from author where first_name = 'Charlie' and last_name = 'Anders'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'All the Weyrs of Pern'),
    (select id from author where first_name = 'Anne' and last_name = 'McCaffrey'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Ancillary Justice'),
    (select id from author where first_name = 'Ann' and last_name = 'Leckie'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Ancillary Mercy'),
    (select id from author where first_name = 'Ann' and last_name = 'Leckie'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Ancillary Sword'),
    (select id from author where first_name = 'Ann' and last_name = 'Leckie'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'American Gods'),
    (select id from author where first_name = 'Neil' and last_name = 'Gaiman'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Among Others'),
    (select id from author where first_name = 'Jo' and last_name = 'Walton'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Anathem'),
    (select id from author where first_name = 'Neal' and last_name = 'Stephenson'));

-- B
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Babel-17'),
    (select id from author where first_name = 'Samuel' and last_name = 'Delany'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Barrayar'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Beggars and Choosers'),
    (select id from author where first_name = 'Nancy' and last_name = 'Kress'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Beggars in Spain'),
    (select id from author where first_name = 'Nancy' and last_name = 'Kress'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Beyond the Blue Event Horizon'),
    (select id from author where first_name = 'Frederik' and last_name = 'Pohl'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Big Time'),
    (select id from author where first_name = 'Fritz' and last_name = 'Leiber'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Black Sun'),
    (select id from author where first_name = 'Rebecca' and last_name = 'Roanhorse'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Blackout'),
    (select id from author where first_name = 'Mira' and last_name = 'Grant'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Blackout' and image_name = 'blackout2'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'All Clear'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Blind Lake'),
    (select id from author where first_name = 'Robert' and last_name = 'Wilson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Blind Voices'),
    (select id from author where first_name = 'Tom' and last_name = 'Reamy'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Blue Mars'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Boat of a Million Years'),
    (select id from author where first_name = 'Poul' and last_name = 'Anderson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Bones of the Earth'),
    (select id from author where first_name = 'Michael' and last_name = 'Swanwick'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Book of Skulls'),
    (select id from author where first_name = 'Robert' and last_name = 'Silverberg'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Black Genesis'),
    (select id from author where first_name = 'L.' and last_name = 'Hubbard'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Blindsight'),
    (select id from author where first_name = 'Peter' and last_name = 'Watts'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Blood Music'),
    (select id from author where first_name = 'Greg' and last_name = 'Bear'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Bone Dance'),
    (select id from author where first_name = 'Emma' and last_name = 'Bull'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Boneshaker'),
    (select id from author where first_name = 'Cherie' and last_name = 'Priest'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Brasyl'),
    (select id from author where first_name = 'Ian' and last_name = 'McDonald'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Brightness Reef'),
    (select id from author where first_name = 'David' and last_name = 'Brin'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Brittle Innings'),
    (select id from author where first_name = 'Michael' and last_name = 'Bishop'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Bug Jack Barron'),
    (select id from author where first_name = 'Norman' and last_name = 'Spinrad'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Butterfly Kid'),
    (select id from author where first_name = 'Chester' and last_name = 'Anderson'));


-- C
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Calculating God'),
    (select id from author where first_name = 'Robert' and last_name = 'Sawyer'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Calculating Stars'),
    (select id from author where first_name = 'Mary' and last_name = 'Kowal'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Call Him Dead'),
    (select id from author where first_name = 'Eric' and last_name = 'Russell'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'A Canticle for Leibowitz'),
    (select id from author where first_name = 'Walter' and last_name = 'Miller, Jr.'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Captain Vorpatril''s Alliance'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'A Case of Conscience'),
    (select id from author where first_name = 'James' and last_name = 'Blish'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Cat''s Cradle'),
    (select id from author where first_name = 'Kurt' and last_name = 'Vonnegut, Jr.'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Children of God'),
    (select id from author where first_name = 'Mary' and last_name = 'Russell'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'China Mountain Zhang'),
    (select id from author where first_name = 'Maureen' and last_name = 'McHugh'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'A Choice of Gods'),
    (select id from author where first_name = 'Clifford' and last_name = 'Simak'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The City & the City'),
    (select id from author where first_name = 'China' and last_name = 'Miéville'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'A Civil Campaign'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Cinder Spires: The Aeronaut''s Windlass'),
    (select id from author where first_name = 'Jim' and last_name = 'Butcher'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The City in the Middle of the Night'),
    (select id from author where first_name = 'Charlie' and last_name = 'Anders'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The City We Became'),
    (select id from author where first_name = 'N.' and last_name = 'Jemisin'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Claw of the Conciliator'),
    (select id from author where first_name = 'Gene' and last_name = 'Wolfe'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'A Closed and Common Orbit'),
    (select id from author where first_name = 'Becky' and last_name = 'Chambers'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Cordelia''s Honor'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Cosmonaut Keep'),
    (select id from author where first_name = 'Ken' and last_name = 'MacLeod'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Count Zero'),
    (select id from author where first_name = 'William' and last_name = 'Gibson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Courtship Rite'),
    (select id from author where first_name = 'Donald' and last_name = 'Kingsbury'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Children of Dune'),
    (select id from author where first_name = 'Frank' and last_name = 'Herbert'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Chronoliths'),
    (select id from author where first_name = 'Robert' and last_name = 'Wilson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Chthon'),
    (select id from author where first_name = 'Piers' and last_name = 'Anthony'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'City on Fire'),
    (select id from author where first_name = 'Walter' and last_name = 'Williams'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Cryoburn'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Cryptonomicon'),
    (select id from author where first_name = 'Neal' and last_name = 'Stephenson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Cyteen'),
    (select id from author where first_name = 'C.' and last_name = 'Cherryh'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Collapsing Empire'),
    (select id from author where first_name = 'John' and last_name = 'Scalzi'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Computer Connection'),
    (select id from author where first_name = 'Alfred' and last_name = 'Bester'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Cuckoo''s Egg'),
    (select id from author where first_name = 'C.' and last_name = 'Cherryh'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Curse of Chalion'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));

-- D
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'A Dance with Dragons'),
    (select id from author where first_name = 'George' and last_name = 'Martin'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dandelion Wine'),
    (select id from author where first_name = 'Ray' and last_name = 'Bradbury'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Dark Between the Stars'),
    (select id from author where first_name = 'Kevin' and last_name = 'Anderson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dark Universe'),
    (select id from author where first_name = 'Daniel' and last_name = 'Galouye'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Darwin''s Radio'),
    (select id from author where first_name = 'Greg' and last_name = 'Bear'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Darwinia'),
    (select id from author where first_name = 'Robert' and last_name = 'Wilson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Davy'),
    (select id from author where first_name = 'Edgar' and last_name = 'Pangborn'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Day of the Minotaur'),
    (select id from author where first_name = 'Thomas' and last_name = 'Swann'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Deadline'),
    (select id from author where first_name = 'Mira' and last_name = 'Grant'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Death''s End'),
    (select id from author where first_name = 'Cixin' and last_name = 'Liu'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Deathworld'),
    (select id from author where first_name = 'Harry' and last_name = 'Harrison'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'A Deepness in the Sky'),
    (select id from author where first_name = 'Vernor' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Demolished Man'),
    (select id from author where first_name = 'Alfred' and last_name = 'Bester'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Dervish House'),
    (select id from author where first_name = 'Ian' and last_name = 'McDonald'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Diamond Age'),
    (select id from author where first_name = 'Neal' and last_name = 'Stephenson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Distraction'),
    (select id from author where first_name = 'Bruce' and last_name = 'Sterling'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Do Androids Dream of Electric Sheep?'),
    (select id from author where first_name = 'Philip' and last_name = 'Dick'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'The Dispossessed'),
    (select id from author where first_name = 'Ursula' and last_name = 'Le Guin'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Doomsday Book'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Doorways in the Sand'),
    (select id from author where first_name = 'Roger' and last_name = 'Zelazny'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dorsai!'),
    (select id from author where first_name = 'Gordon' and last_name = 'Dickson'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Double Star'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Downbelow Station'),
    (select id from author where first_name = 'C.' and last_name = 'Cherryh'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dragonquest'),
    (select id from author where first_name = 'Anne' and last_name = 'McCaffrey'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dreamsnake'),
    (select id from author where first_name = 'Vonda' and last_name = 'McIntyre'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dying of the Light'),
    (select id from author where first_name = 'George' and last_name = 'Martin'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dying Inside'),
    (select id from author where first_name = 'Robert' and last_name = 'Silverberg'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dune'),
    (select id from author where first_name = 'Frank' and last_name = 'Herbert'));
insert into work_author (work_id, author_id) values (
    (select id from work where title = 'Dune World'),
    (select id from author where first_name = 'Frank' and last_name = 'Herbert'));
