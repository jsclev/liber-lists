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