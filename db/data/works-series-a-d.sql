-- B
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

-- D
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
