insert into user
    (username, email, first_name, last_name) values
    ('jsclev', 'john.s.cleveland@gmail.com', 'John', 'Cleveland');

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'American Gods'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Ancillary Justice'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Brightness Reef'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'A Canticle for Leibowitz'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Childhood''s End'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Cordelia''s Honor'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Count Zero'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Cryptonomicon'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Dandelion Wine'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Do Androids Dream of Electric Sheep?'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Doomsday Book'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Downbelow Station'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Ender''s Game'),
    3,
    0
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Fall of Hyperion'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Fifth Season'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Forever War'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Foundation'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Foundation and Empire'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Frankenstein'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Ghost Brigades'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Green Mars'),
    2,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Have Space Suit - Will Travel'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Hyperion'),
    2,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Imperial Earth'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Leviathan Wakes'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Martian'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Mote in God''s Eye'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Neuromancer'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Ninefox Gambit'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Obelisk Gate'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Queen of Angels'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Quiet War'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Raven Stratagem'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Red Mars'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Red Rising'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Revelation Space'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Revenant Gun'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Road'),
    3,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Second Foundation'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Starship Troopers'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Startide Rising'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Strange Case of Dr. Jekyll & Mr. Hyde'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Stranger in a Strange Land'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'That Hideous Strength'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Three-Body Problem'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'To Your Scattered Bodies Go'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Time Machine'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'The Wanderer'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Wool'),
    1,
    2
);

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Xenocide'),
    1,
    2
);

