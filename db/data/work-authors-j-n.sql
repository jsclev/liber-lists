
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Mirror Dance'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));