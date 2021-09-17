insert into series (name, genre) values ('The Broken Earth', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Fifth Season'),
    (select id from series where name = 'The Broken Earth'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Obelisk Gate'),
    (select id from series where name = 'The Broken Earth'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Stone Sky'),
    (select id from series where name = 'The Broken Earth'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Darkover series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Forbidden Tower'),
    (select id from series where name = 'Darkover series'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('Ender Series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Ender''s Game'),
    (select id from series where name = 'Ender Series'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Speaker for the Dead'),
    (select id from series where name = 'Ender Series'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Xenocide'),
    (select id from series where name = 'Ender Series'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('The Expanse', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Leviathan Wakes'),
    (select id from series where name = 'The Expanse'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Forever War Series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Forever War'),
    (select id from series where name = 'The Forever War Series'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Foundation series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Foundation'),
    (select id from series where name = 'Foundation series'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Foundation and Empire'),
    (select id from series where name = 'Foundation series'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Second Foundation'),
    (select id from series where name = 'Foundation series'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Hyperion Cantos', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Hyperion'),
    (select id from series where name = 'Hyperion Cantos'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Fall of Hyperion'),
    (select id from series where name = 'Hyperion Cantos'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Endymion'),
    (select id from series where name = 'Hyperion Cantos'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Rise of Endymion'),
    (select id from series where name = 'Hyperion Cantos'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('The Mars Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Red Mars'),
    (select id from series where name = 'The Mars Trilogy'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Green Mars'),
    (select id from series where name = 'The Mars Trilogy'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Blue Mars'),
    (select id from series where name = 'The Mars Trilogy'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Old Man''s War', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Old Man''s War'),
    (select id from series where name = 'Old Man''s War'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Ghost Brigades'),
    (select id from series where name = 'Old Man''s War'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Last Colony'),
    (select id from series where name = 'Old Man''s War'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Zoe''s Tale'),
    (select id from series where name = 'Old Man''s War'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('Imperial Radch', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Ancillary Justice'),
    (select id from series where name = 'Imperial Radch'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Ancillary Sword'),
    (select id from series where name = 'Imperial Radch'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Ancillary Mercy'),
    (select id from series where name = 'Imperial Radch'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Machineries of Empire', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Ninefox Gambit'),
    (select id from series where name = 'Machineries of Empire'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Raven Stratagem'),
    (select id from series where name = 'Machineries of Empire'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Revenant Gun'),
    (select id from series where name = 'Machineries of Empire'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Red Rising Saga', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Red Rising'),
    (select id from series where name = 'Red Rising Saga'),
    1,
    'Book 1'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where name IS NULL),
--     (select id from series where name = 'Red Rising Saga'),
--     2,
--     'Book 2'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where name IS NULL),
--     (select id from series where name = 'Red Rising Saga'),
--     3,
--     'Book 3'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where name IS NULL),
--     (select id from series where name = 'Red Rising Saga'),
--     4,
--     'Book 4'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where name IS NULL),
--     (select id from series where name = 'Red Rising Saga'),
--     5,
--     'Book 5'
-- );

insert into series (name, genre) values ('The Space Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Out of the Silent Planet'),
    (select id from series where name = 'The Space Trilogy'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Perelandra'),
    (select id from series where name = 'The Space Trilogy'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'That Hideous Strength'),
    (select id from series where name = 'The Space Trilogy'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('The Sprawl Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Neuromancer'),
    (select id from series where name = 'The Sprawl Trilogy'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Count Zero'),
    (select id from series where name = 'The Sprawl Trilogy'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Mona Lisa Overdrive'),
    (select id from series where name = 'The Sprawl Trilogy'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Star Carrier', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Earth Strike'),
    (select id from series where name = 'Star Carrier'),
    1,
    'Book 1'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where name = 'Center of Gravity'),
--     (select id from series where name = 'Star Carrier'),
--     2,
--     'Book 2'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where name = 'Singularity'),
--     (select id from series where name = 'Star Carrier'),
--     3,
--     'Book 3'
-- );

insert into series (name, genre) values ('The Uplift Saga', 'Science Fiction');
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where name = 'A Fire Upon the Deep'),
--     (select id from series where name = 'The Uplift Saga'),
--     1,
--     'Book 1'
-- );
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Startide Rising'),
    (select id from series where name = 'The Uplift Saga'),
    2,
    'Book 2'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where name = 'The Children of the Sky'),
--     (select id from series where name = 'The Uplift Saga'),
--     3,
--     'Book 3'
-- );
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'Brightness Reef'),
    (select id from series where name = 'The Uplift Saga'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('Zones of Thought', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'A Fire Upon the Deep'),
    (select id from series where name = 'Zones of Thought'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'A Deepness in the Sky'),
    (select id from series where name = 'Zones of Thought'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where name = 'The Children of the Sky'),
    (select id from series where name = 'Zones of Thought'),
    3,
    'Book 3'
);
