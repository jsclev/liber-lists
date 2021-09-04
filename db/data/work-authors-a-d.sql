--------------------------------------------------------------------------------------------
-- A
--------------------------------------------------------------------------------------------
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Ancillary Justice'),
    (select id from author where first_name = 'Ann' and last_name = 'Leckie'));

--------------------------------------------------------------------------------------------
-- B
--------------------------------------------------------------------------------------------
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Barrayar'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Big Time'),
    (select id from author where first_name = 'Fritz' and last_name = 'Leiber'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Blue Mars'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));
--------------------------------------------------------------------------------------------
-- C
--------------------------------------------------------------------------------------------
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Case of Conscience'),
    (select id from author where first_name = 'James' and last_name = 'Blish'));

--------------------------------------------------------------------------------------------
-- D
--------------------------------------------------------------------------------------------
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Demolished Man'),
    (select id from author where first_name = 'Alfred' and last_name = 'Bester'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Diamond Age'),
    (select id from author where first_name = 'Neal' and last_name = 'Stephenson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Doomsday Book'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Double Star'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));

