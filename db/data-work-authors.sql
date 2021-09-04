insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Ancillary Justice'),
    (select id from author where first_name = 'Ann' and last_name = 'Leckie'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Barrayar'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Blue Mars'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Diamond Age'),
    (select id from author where first_name = 'Neal' and last_name = 'Stephenson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Doomsday Book'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
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
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Mirror Dance'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Mark' and last_name = 'Clifton'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Frank' and last_name = 'Riley'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'To Say Nothing of the Dog'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Vor Game'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
