insert into user
    (username, email, first_name, last_name) values
    ('jsclev', 'john.s.cleveland@gmail.com', 'John', 'Cleveland');

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Network Effect'),
    2,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Black Sun'),
    1,
    0
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'A Memory Called Empire'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'American Gods'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Ancillary Justice'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Brightness Reef'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'A Canticle for Leibowitz'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Childhood''s End'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Cordelia''s Honor'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Count Zero'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Cryptonomicon'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Dandelion Wine'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Do Androids Dream of Electric Sheep?'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Doomsday Book'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Downbelow Station'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Ender''s Game'),
    3,
    0
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Fall of Hyperion'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Fifth Season'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Forever War'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Foundation'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Foundation and Empire'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Frankenstein'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Ghost Brigades'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Green Mars'),
    2,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Have Space Suit - Will Travel'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Hyperion'),
    2,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Imperial Earth'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Leviathan Wakes'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Martian'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Mote in God''s Eye'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Neuromancer'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Ninefox Gambit'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Obelisk Gate'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Queen of Angels'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Quiet War'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Raven Stratagem'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Red Mars'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Red Rising'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Revelation Space'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Revenant Gun'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Road'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Second Foundation'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Starship Troopers'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Startide Rising'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Strange Case of Dr. Jekyll & Mr. Hyde'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Stranger in a Strange Land'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'That Hideous Strength'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Three-Body Problem'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'To Your Scattered Bodies Go'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Time Machine'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'The Wanderer'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Wool'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where title = 'Xenocide'),
    1,
    2
);

