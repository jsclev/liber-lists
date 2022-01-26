-- E
insert into series (name, genre) values ('Eight Worlds', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Steel Beach'),
    (select id from series where name = 'Eight Worlds'),
    2,
    'Book 2'
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

insert into series (name, genre) values ('Engines of Light', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Cosmonaut Keep'),
    (select id from series where name = 'Engines of Light'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Expanse', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Leviathan Wakes'),
    (select id from series where name = 'The Expanse'),
    1,
    'Book 1'
);

-- F
insert into series (name, genre) values ('Fall Revolution', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Sky Road'),
    (select id from series where name = 'Fall Revolution'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('Firefall', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Blindsight'),
    (select id from series where name = 'Firefall'),
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
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Forever Peace'),
    (select id from series where name = 'The Forever War Series'),
    2,
    'Book 2'
);

insert into series (name, genre) values ('Forge of God', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Forge of God'),
    (select id from series where name = 'Forge of God'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Foundation Series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Foundation'),
    (select id from series where name = 'Foundation Series'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Foundation and Empire'),
    (select id from series where name = 'Foundation Series'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Second Foundation'),
    (select id from series where name = 'Foundation Series'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Foundation''s Edge'),
    (select id from series where name = 'Foundation Series'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('A Freyaverse Novel (2 Books)', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Saturn''s Children'),
    (select id from series where name = 'A Freyaverse Novel (2 Books)'),
    1,
    'Book 1'
);

-- G
insert into series (name, genre) values ('Gaia', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Titan'),
    (select id from series where name = 'Gaia'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Wizard'),
    (select id from series where name = 'Gaia'),
    2,
    'Book 2'
);

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

insert into series (name, genre) values ('The Godhead Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Towing Jehovah'),
    (select id from series where name = 'The Godhead Trilogy'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('The Greenwich Village Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Butterfly Kid'),
    (select id from series where name = 'The Greenwich Village Trilogy'),
    1,
    'Book 1'
);

-- H
insert into series (name, genre) values ('Halting State', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Halting State'),
    (select id from series where name = 'Halting State'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Harry Potter', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Harry Potter and the Prisoner of Azkaban'),
    (select id from series where name = 'Harry Potter'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Harry Potter and the Goblet of Fire'),
    (select id from series where name = 'Harry Potter'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('Heechee Saga', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Beyond the Blue Event Horizon'),
    (select id from series where name = 'Heechee Saga'),
    2,
    'Book 2'
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

-- I
insert into series (name, genre) values ('Ilium', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Ilium'),
    (select id from series where name = 'Ilium'),
    1,
    'Book 1'
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

insert into series (name, genre) values ('Inferno series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Inferno'),
    (select id from series where name = 'Inferno series'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Inheritance Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Hundred Thousand Kingdoms'),
    (select id from series where name = 'The Inheritance Trilogy'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Interdependency', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Collapsing Empire'),
    (select id from series where name = 'The Interdependency'),
    1,
    'Book 1'
);
