-- O
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

insert into series (name, genre) values ('Oxford Time Travel', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Doomsday Book'),
    (select id from series where name = 'Oxford Time Travel'),
    1,
    'Part of'
);

-- P
insert into series (name, genre) values ('Parasitology', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Parasite'),
    (select id from series where name = 'Parasitology'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Peace War', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Peace War'),
    (select id from series where name = 'Peace War'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Marooned in Realtime'),
    (select id from series where name = 'Peace War'),
    2,
    'Book 2'
);

insert into series (name, genre) values ('Pern', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Dragonquest'),
    (select id from series where name = 'Pern'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The White Dragon'),
    (select id from series where name = 'Pern'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Moreta: Dragonlady of Pern'),
    (select id from series where name = 'Pern'),
    7,
    'Book 7'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'All the Weyrs of Pern'),
    (select id from series where name = 'Pern'),
    11,
    'Book 11'
);

-- Q
insert into series (name, genre) values ('Queen of Angels', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Queen of Angels'),
    (select id from series where name = 'Queen of Angels'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Moving Mars'),
    (select id from series where name = 'Queen of Angels'),
    3,
    'Book 3'
);

-- R
insert into series (name, genre) values ('Rama', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Rendezvous with Rama'),
    (select id from series where name = 'Rama'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Red Rising Saga', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Red Rising'),
    (select id from series where name = 'Red Rising Saga'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Ringworld', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Ringworld'),
    (select id from series where name = 'Ringworld'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Ringworld Engineers'),
    (select id from series where name = 'Ringworld'),
    2,
    'Book 2'
);

insert into series (name, genre) values ('Riverworld Saga', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'To Your Scattered Bodies Go'),
    (select id from series where name = 'Riverworld Saga'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Robot Series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Robots of Dawn'),
    (select id from series where name = 'The Robot Series'),
    3,
    'Book 3'
);

-- S
insert into series (name, genre) values ('The Saga of Pliocene Exile', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Many-Colored Land'),
    (select id from series where name = 'The Saga of Pliocene Exile'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('The Saga of Shadows', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Dark Between the Stars'),
    (select id from series where name = 'The Saga of Shadows'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Singularity', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Singularity Sky'),
    (select id from series where name = 'Singularity'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Iron Sunrise'),
    (select id from series where name = 'Singularity'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Accelerando'),
    (select id from series where name = 'Singularity'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('The Sixth World', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Trail of Lightning'),
    (select id from series where name = 'The Sixth World'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Skylark', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Skylark DuQuesne'),
    (select id from series where name = 'Skylark'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('The Smoke Ring', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Integral Trees'),
    (select id from series where name = 'The Smoke Ring'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Snow Queen', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Snow Queen'),
    (select id from series where name = 'Snow Queen'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Summer Queen'),
    (select id from series where name = 'Snow Queen'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('A Song of Ice and Fire', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Storm of Swords'),
    (select id from series where name = 'A Song of Ice and Fire'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Feast for Crows'),
    (select id from series where name = 'A Song of Ice and Fire'),
    4,
    'Book 4'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Dance with Dragons'),
    (select id from series where name = 'A Song of Ice and Fire'),
    5,
    'Book 5'
);

insert into series (name, genre) values ('Space Odyssey Series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = '2010: Odyssey Two'),
    (select id from series where name = 'Space Odyssey Series'),
    2,
    'Book 2'
);

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

insert into series (name, genre) values ('Spin', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Spin'),
    (select id from series where name = 'Spin'),
    1,
    'Book 1'
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

-- T
insert into series (name, genre) values ('Tales of Alvin Maker', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Seventh Son'),
    (select id from series where name = 'Tales of Alvin Maker'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Red Prophet'),
    (select id from series where name = 'Tales of Alvin Maker'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Prentice Alvin'),
    (select id from series where name = 'Tales of Alvin Maker'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Teixcalaan', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'A Memory Called Empire'),
    (select id from series where name = 'Teixcalaan'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Temeraire', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'His Majesty''s Dragon'),
    (select id from series where name = 'Temeraire'),
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
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Death''s End'),
    (select id from series where name = 'The Three-Body Problem'),
    3,
    'Book 3'
);
