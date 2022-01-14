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
