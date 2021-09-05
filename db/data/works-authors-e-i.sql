insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Fire Upon the Deep'),
    (select id from author where first_name = 'Vernor' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Forever Peace'),
    (select id from author where first_name = 'Joe' and last_name = 'Haldeman'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Green Mars'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Hyperion'),
    (select id from author where first_name = 'Dan' and last_name = 'Simmons'));