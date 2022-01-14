-- E
insert into series (name, genre) values ('Ender Series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Ender''s Game'),
    (select id from series where name = 'Ender Series'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Speaker for the Dead'),
    (select id from series where name = 'Ender Series'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Xenocide'),
    (select id from series where name = 'Ender Series'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('The Expanse', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Leviathan Wakes'),
    (select id from series where name = 'The Expanse'),
    1,
    'Book 1'
);

-- F
insert into series (name, genre) values ('The Forever War Series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Forever War'),
    (select id from series where name = 'The Forever War Series'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Foundation series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Foundation'),
    (select id from series where name = 'Foundation series'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Foundation and Empire'),
    (select id from series where name = 'Foundation series'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Second Foundation'),
    (select id from series where name = 'Foundation series'),
    3,
    'Book 3'
);

-- G
insert into series (name, genre) values ('The Great Cities', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The City We Became'),
    (select id from series where name = 'The Great Cities'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Grimnoir Chronicles', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Warbound'),
    (select id from series where name = 'The Grimnoir Chronicles'),
    3,
    'Book 3'
);

-- H
insert into series (name, genre) values ('Hyperion Cantos', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Hyperion'),
    (select id from series where name = 'Hyperion Cantos'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Fall of Hyperion'),
    (select id from series where name = 'Hyperion Cantos'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Endymion'),
    (select id from series where name = 'Hyperion Cantos'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Rise of Endymion'),
    (select id from series where name = 'Hyperion Cantos'),
    4,
    'Book 4'
);

-- I
insert into series (name, genre) values ('Imperial Radch', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Ancillary Justice'),
    (select id from series where name = 'Imperial Radch'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Ancillary Sword'),
    (select id from series where name = 'Imperial Radch'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Ancillary Mercy'),
    (select id from series where name = 'Imperial Radch'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('The Interdependency', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Collapsing Empire'),
    (select id from series where name = 'The Interdependency'),
    1,
    'Book 1'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'The Consuming Fire'),
--     (select id from series where name = 'The Interdependency'),
--     2,
--     'Book 2'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'The Last Emperox'),
--     (select id from series where name = 'The Interdependency'),
--     3,
--     'Book 3'
-- );
