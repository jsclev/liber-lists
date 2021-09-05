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
