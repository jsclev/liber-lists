-- K
insert into series (name, genre) values ('The Kiln Books', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Kiln People'),
    (select id from series where name = 'The Kiln Books'),
    1,
    'Book 1'
);

-- L
insert into series (name, genre) values ('Lady Astronaut', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Calculating Stars'),
    (select id from series where name = 'Lady Astronaut'),
    1,
    'Book 1 of 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Relentless Moon'),
    (select id from series where name = 'Lady Astronaut'),
    3,
    'Book 3 of 3'
);

insert into series (name, genre) values ('Little Brother', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Little Brother'),
    (select id from series where name = 'Little Brother'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Locked Tomb', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Gideon the Ninth'),
    (select id from series where name = 'The Locked Tomb'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Harrow the Ninth'),
    (select id from series where name = 'The Locked Tomb'),
    2,
    'Book 2'
);

-- M
insert into series (name, genre) values ('Machineries of Empire', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Ninefox Gambit'),
    (select id from series where name = 'Machineries of Empire'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Raven Stratagem'),
    (select id from series where name = 'Machineries of Empire'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Revenant Gun'),
    (select id from series where name = 'Machineries of Empire'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Middlegame', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Middlegame'),
    (select id from series where name = 'Middlegame'),
    1,
    'Part 1'
);

insert into series (name, genre) values ('Murderbot Diaries', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Network Effect'),
    (select id from series where name = 'Murderbot Diaries'),
    5,
    'Book 5'
);

insert into series (name, genre) values ('The Mars Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Red Mars'),
    (select id from series where name = 'The Mars Trilogy'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Green Mars'),
    (select id from series where name = 'The Mars Trilogy'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Blue Mars'),
    (select id from series where name = 'The Mars Trilogy'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Metropolitan', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'City on Fire'),
    (select id from series where name = 'Metropolitan'),
    2,
    'Book 2'
);

insert into series (name, genre) values ('Miles Vorkosigan', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Vor Game'),
    (select id from series where name = 'Miles Vorkosigan'),
    6,
    'Book 6'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Barrayar'),
    (select id from series where name = 'Miles Vorkosigan'),
    7,
    'Book 7'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Mirror Dance'),
    (select id from series where name = 'Miles Vorkosigan'),
    8,
    'Book 8'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Memory'),
    (select id from series where name = 'Miles Vorkosigan'),
    10,
    'Book 10'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Civil Campaign'),
    (select id from series where name = 'Miles Vorkosigan'),
    14,
    'Book 14'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Cryoburn'),
    (select id from series where name = 'Miles Vorkosigan'),
    14,
    'Book 14'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Captain Vorpatril''s Alliance'),
    (select id from series where name = 'Miles Vorkosigan'),
    15,
    'Book 15'
);

-- N
insert into series (name, genre) values ('Neanderthal Parallax', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Hominids'),
    (select id from series where name = 'Neanderthal Parallax'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Humans'),
    (select id from series where name = 'Neanderthal Parallax'),
    2,
    'Book 2'
);

insert into series (name, genre) values ('Newsflesh', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Feed'),
    (select id from series where name = 'Newsflesh'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Deadline'),
    (select id from series where name = 'Newsflesh'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Blackout'),
    (select id from series where name = 'Newsflesh'),
    3,
    'Book 3'
);
