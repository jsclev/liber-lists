--------------------------------------------------------------------------------------------
-- A
--------------------------------------------------------------------------------------------
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Ancillary Justice'),
    (select id from author where first_name = 'Ann' and last_name = 'Leckie'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'American Gods'),
    (select id from author where first_name = 'Neil' and last_name = 'Gaiman'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Among Others'),
    (select id from author where first_name = 'Jo' and last_name = 'Walton'));

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
    (select id from work where name = 'Blackout/All Clear'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Blue Mars'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));
--------------------------------------------------------------------------------------------
-- C
--------------------------------------------------------------------------------------------
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Calculating Stars'),
    (select id from author where first_name = 'Mary' and last_name = 'Kowal'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Canticle for Leibowitz'),
    (select id from author where first_name = 'Walter' and last_name = 'Miller, Jr.'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Case of Conscience'),
    (select id from author where first_name = 'James' and last_name = 'Blish'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The City & the City'),
    (select id from author where first_name = 'China' and last_name = 'Miéville'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Cyteen'),
    (select id from author where first_name = 'C.' and last_name = 'Cherryh'));

--------------------------------------------------------------------------------------------
-- D
--------------------------------------------------------------------------------------------
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Deepness in the Sky'),
    (select id from author where first_name = 'Vernor' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Demolished Man'),
    (select id from author where first_name = 'Alfred' and last_name = 'Bester'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Diamond Age'),
    (select id from author where first_name = 'Neal' and last_name = 'Stephenson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Dispossessed'),
    (select id from author where first_name = 'Ursula' and last_name = 'Le Guin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Doomsday Book'),
    (select id from author where first_name = 'Connie' and last_name = 'Willis'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Double Star'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Downbelow Station'),
    (select id from author where first_name = 'James' and last_name = 'Blish'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Dreamsnake'),
    (select id from author where first_name = 'Vonda' and last_name = 'McIntyre'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Dune'),
    (select id from author where first_name = 'Frank' and last_name = 'Herbert'));

