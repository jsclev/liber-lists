-- U
insert into series (name, genre) values ('The Uplift Saga', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Startide Rising'),
    (select id from series where name = 'The Uplift Saga'),
    2,
    'Book 2'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Uplift War'),
    (select id from series where name = 'The Uplift Saga'),
    3,
    'Book 3'
);
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Brightness Reef'),
    (select id from series where name = 'The Uplift Saga'),
    4,
    'Book 4'
);

-- W
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

insert into series (name, genre) values ('The Wheel of Time', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Eye of the World'),
    (select id from series where name = 'The Wheel of Time'),
    1,
    'Book One'
);

insert into series (name, genre) values ('Witch World Saga', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Witch World'),
    (select id from series where name = 'Witch World Saga'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('Witches of Karres', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'The Witches of Karres'),
    (select id from series where name = 'Witches of Karres'),
    1,
    'Book 1'
);

insert into series (name, genre) values ('WWW Trilogy', 'Science Fiction');
insert into work_series (work_id, series_id, ordinal, ordinal_name) values (
    (select id from work where title = 'Wake'),
    (select id from series where name = 'WWW Trilogy'),
    1,
    'Book 1'
);

-- Z
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