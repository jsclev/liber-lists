-- U
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Uplift War'),
    (select id from author where first_name = 'David' and last_name = 'Brin'));

-- V
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Vor Game'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));

-- W
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Wanderer'),
    (select id from author where first_name = 'Fritz' and last_name = 'Leiber'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'We Have Fed Our Sea'),
    (select id from author where first_name = 'Poul' and last_name = 'Anderson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Where Late the Sweet Birds Sang'),
    (select id from author where first_name = 'Kate' and last_name = 'Wilhelm'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Who?'),
    (select id from author where first_name = 'Algis' and last_name = 'Budrys'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Windup Girl'),
    (select id from author where first_name = 'Paolo' and last_name = 'Bacigalupi'));

-- X
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Xenocide'),
    (select id from author where first_name = 'Orson' and last_name = 'Card'));

-- Y
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Yiddish Policemen''s Union'),
    (select id from author where first_name = 'Michael' and last_name = 'Chabon'));

-- Z
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Zoe''s Tale'),
    (select id from author where first_name = 'John' and last_name = 'Scalzi'));