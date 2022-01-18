-- A
insert into series (name, genre) values ('All Clear', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Blackout' and image_name = 'blackout2'),
    (select id from series where name = 'All Clear'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'All Clear'),
    (select id from series where name = 'All Clear'),
    2,
    'Book 2'
);

-- B
insert into series (name, genre) values ('Bas-Lag', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Perdido Street Station'),
    (select id from series where name = 'Bas-Lag'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Scar'),
    (select id from series where name = 'Bas-Lag'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Iron Council'),
    (select id from series where name = 'Bas-Lag'),
    3,
    'Book 3'
);

insert into series (name, genre) values ('Between Earth and Sky', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Black Sun'),
    (select id from series where name = 'Between Earth and Sky'),
    1,
    'Book 1 of 2'
);

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

-- C
insert into series (name, genre) values ('Chalion', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Curse of Chalion'),
    (select id from series where name = 'Chalion'),
    1,
    'Book 1'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Paladin of Souls'),
    (select id from series where name = 'Chalion'),
    2,
    'Book 2'
);

insert into series (name, genre) values ('The Clockwork Century', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Boneshaker'),
    (select id from series where name = 'The Clockwork Century'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Crescent Moon Kingdoms', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Throne of the Crescent Moon'),
    (select id from series where name = 'Crescent Moon Kingdoms'),
    1,
    'Book 1'
);

-- D
insert into series (name, genre) values ('Darkover series', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Forbidden Tower'),
    (select id from series where name = 'Darkover series'),
    4,
    'Book 4'
);

insert into series (name, genre) values ('Darwin''s Radio', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Darwin''s Radio'),
    (select id from series where name = 'Darwin''s Radio'),
    2,
    'Book 2'
);

insert into series (name, genre) values ('Dresden Files', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Skin Game'),
    (select id from series where name = 'Dresden Files'),
    15,
    'Book 15'
);
