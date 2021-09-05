-- 0

-- P
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Paladin of Souls'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
-- Q

-- R
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Rainbows End'),
    (select id from author where first_name = 'Vernor' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Redshirts'),
    (select id from author where first_name = 'John' and last_name = 'Scalzi'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Rendezvous with Rama'),
    (select id from author where first_name = 'Arthur' and last_name = 'Clarke'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Ringworld'),
    (select id from author where first_name = 'Larry' and last_name = 'Niven'));

-- S
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'To Say Nothing of the Dog'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Snow Queen'),
    (select id from author where first_name = 'Joan' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Speaker for the Dead'),
    (select id from author where first_name = 'Orson' and last_name = 'Card'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Spin'),
    (select id from author where first_name = 'Robert' and last_name = 'Wilson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Stand on Zanzibar'),
    (select id from author where first_name = 'John' and last_name = 'Brunner'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Starship Troopers'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Startide Rising'),
    (select id from author where first_name = 'David' and last_name = 'Brin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Stone Sky'),
    (select id from author where first_name = 'N.' and last_name = 'Jemisin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Stranger in a Strange Land'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));

-- T
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Mark' and last_name = 'Clifton'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Frank' and last_name = 'Riley'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Three-Body Problem'),
    (select id from author where first_name = 'Cixin' and last_name = 'Liu'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'To Your Scattered Bodies Go'),
    (select id from author where first_name = 'Philip' and last_name = 'Farmer'));