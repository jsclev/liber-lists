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

-- P
insert into series (name, genre) values ('Parasitology', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Parasite'),
    (select id from series where name = 'Parasitology'),
    1,
    'Book 1'
);

-- R
insert into series (name, genre) values ('Red Rising Saga', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Red Rising'),
    (select id from series where name = 'Red Rising Saga'),
    1,
    'Book 1'
);

-- S
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
