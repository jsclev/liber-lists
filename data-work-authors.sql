insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Ancillary Justice'),
    (select id from author where first_name = 'Ann' and last_name = 'Leckie'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Mark' and last_name = 'Clifton'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Frank' and last_name = 'Riley'));
