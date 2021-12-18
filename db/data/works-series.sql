insert into series (name, genre) values ('Between Earth and Sky', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Black Sun'),
    (select id from series where name = 'Between Earth and Sky'),
    1,
    'Book 1 of 2'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = '?'),
--     (select id from series where name = 'Between Earth and Sky'),
--     2,
--     'Book 2 of 2'
-- );

insert into series (name, genre) values ('The Broken Earth', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Fifth Season'),
    (select id from series where name = 'The Broken Earth'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Obelisk Gate'),
    (select id from series where name = 'The Broken Earth'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Stone Sky'),
    (select id from series where name = 'The Broken Earth'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Darkover series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Forbidden Tower'),
    (select id from series where name = 'Darkover series'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('Dresden Files', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Skin Game'),
    (select id from series where name = 'Dresden Files'),
    15,
    'Book 15'
);

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

insert into series (name, genre) values ('The Great Cities', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The City We Became'),
    (select id from series where name = 'The Great Cities'),
    1,
    'Book 1'
);

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

insert into series (name, genre) values ('Lady Astronaut', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Calculating Stars'),
    (select id from series where name = 'Lady Astronaut'),
    1,
    'Book 1 of 3'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'The Fated Sky'),
--     (select id from series where name = 'Lady Astronaut'),
--     2,
--     'Book 2 of 3'
-- );
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Relentless Moon'),
    (select id from series where name = 'Lady Astronaut'),
    3,
    'Book 3 of 3'
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

insert into series (name, genre) values ('Old Man''s War', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Old Man''s War'),
    (select id from series where name = 'Old Man''s War'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Ghost Brigades'),
    (select id from series where name = 'Old Man''s War'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Last Colony'),
    (select id from series where name = 'Old Man''s War'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Zoe''s Tale'),
    (select id from series where name = 'Old Man''s War'),
    4,
    'Book 4'
);

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
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'As Yet Unsent'),
--     (select id from series where name = 'The Locked Tomb'),
--     3,
--     'Book 2.5'
-- );

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
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'Foundation'),
--     (select id from series where name = 'Murderbot Diaries'),
--     1,
--     'Book 1'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'Foundation and Empire'),
--     (select id from series where name = 'Murderbot Diaries'),
--     2,
--     'Book 2'
-- );
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Network Effect'),
    (select id from series where name = 'Murderbot Diaries'),
    5,
    'Book 5'
);

insert into series (name, genre) values ('Red Rising Saga', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Red Rising'),
    (select id from series where name = 'Red Rising Saga'),
    1,
    'Book 1'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title IS NULL),
--     (select id from series where name = 'Red Rising Saga'),
--     2,
--     'Book 2'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title IS NULL),
--     (select id from series where name = 'Red Rising Saga'),
--     3,
--     'Book 3'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title IS NULL),
--     (select id from series where name = 'Red Rising Saga'),
--     4,
--     'Book 4'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title IS NULL),
--     (select id from series where name = 'Red Rising Saga'),
--     5,
--     'Book 5'
-- );

insert into series (name, genre) values ('The Saga of Shadows', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Dark Between the Stars'),
    (select id from series where name = 'The Saga of Shadows'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Sixth World', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Trail of Lightning'),
    (select id from series where name = 'The Sixth World'),
    1,
    'Book 1'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'Storm of Locusts'),
--     (select id from series where name = 'The Sixth World'),
--     2,
--     'Book 2'
-- );

insert into series (name, genre) values ('The Space Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Out of the Silent Planet'),
    (select id from series where name = 'The Space Trilogy'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Perelandra'),
    (select id from series where name = 'The Space Trilogy'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'That Hideous Strength'),
    (select id from series where name = 'The Space Trilogy'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('The Sprawl Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Neuromancer'),
    (select id from series where name = 'The Sprawl Trilogy'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Count Zero'),
    (select id from series where name = 'The Sprawl Trilogy'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Mona Lisa Overdrive'),
    (select id from series where name = 'The Sprawl Trilogy'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Star Carrier', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Earth Strike'),
    (select id from series where name = 'Star Carrier'),
    1,
    'Book 1'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'Center of Gravity'),
--     (select id from series where name = 'Star Carrier'),
--     2,
--     'Book 2'
-- );
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'Singularity'),
--     (select id from series where name = 'Star Carrier'),
--     3,
--     'Book 3'
-- );

insert into series (name, genre) values ('Teixcalaan', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Memory Called Empire'),
    (select id from series where name = 'Teixcalaan'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Terra Ignota', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Too Like the Lightning'),
    (select id from series where name = 'Terra Ignota'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Three-Body Problem', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Three-Body Problem'),
    (select id from series where name = 'The Three-Body Problem'),
    1,
    'Book 1'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'The Dark Forest'),
--     (select id from series where name = 'The Three-Body Problem'),
--     2,
--     'Book 2'
-- );
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Death''s End'),
    (select id from series where name = 'The Three-Body Problem'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('The Uplift Saga', 'Science Fiction');
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'A Fire Upon the Deep'),
--     (select id from series where name = 'The Uplift Saga'),
--     1,
--     'Book 1'
-- );
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Startide Rising'),
    (select id from series where name = 'The Uplift Saga'),
    2,
    'Book 2'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'The Children of the Sky'),
--     (select id from series where name = 'The Uplift Saga'),
--     3,
--     'Book 3'
-- );
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Brightness Reef'),
    (select id from series where name = 'The Uplift Saga'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('Wayfarers', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Long Way to a Small, Angry Planet'),
    (select id from series where name = 'Wayfarers'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Closed and Common Orbit'),
    (select id from series where name = 'Wayfarers'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Record of a Spaceborn Few'),
    (select id from series where name = 'Wayfarers'),
    3,
    'Book 3'
);
-- insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
--     (select id from work where title = 'The Galaxy, and the Ground Within'),
--     (select id from series where name = 'Wayfarers'),
--     4,
--     'Book 4'
-- );

insert into series (name, genre) values ('Zones of Thought', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Fire Upon the Deep'),
    (select id from series where name = 'Zones of Thought'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Deepness in the Sky'),
    (select id from series where name = 'Zones of Thought'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Children of the Sky'),
    (select id from series where name = 'Zones of Thought'),
    3,
    'Book 3'
);
