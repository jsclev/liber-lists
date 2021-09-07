insert into user
    (username, email, first_name, last_name) values
    ('jsclev', 'john.s.cleveland@gmail.com', 'John', 'Cleveland');

insert into user_work_stat (user_id, work_id, read_status, own_status) values (
    (select id from user where username = 'jsclev'),
    (select id from work where name = 'Ancillary Justice'),
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
    (select id from work where name = 'Ender''s Game'),
    3,
    0
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
    (select id from work where name = 'Frankenstein'),
    3,
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
    (select id from work where name = 'Neuromancer'),
    3,
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
    (select id from work where name = 'Stranger in a Strange Land'),
    1,
    2
);

