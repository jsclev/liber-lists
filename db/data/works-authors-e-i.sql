-- E
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Ender''s Game'),
    (select id from author where first_name = 'Orson' and last_name = 'Card'));

-- F
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Fifth Season'),
    (select id from author where first_name = 'N.' and last_name = 'Jemisin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Fire Upon the Deep'),
    (select id from author where first_name = 'Vernor' and last_name = 'Vinge'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Forever Peace'),
    (select id from author where first_name = 'Joe' and last_name = 'Haldeman'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Forever War'),
    (select id from author where first_name = 'Joe' and last_name = 'Haldeman'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Foundation''s Edge'),
    (select id from author where first_name = 'Isaac' and last_name = 'Asimov'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Fountains of Paradise'),
    (select id from author where first_name = 'Arthur' and last_name = 'Clarke'));

-- G
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Gateway'),
    (select id from author where first_name = 'Frederik' and last_name = 'Pohl'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Graveyard Book'),
    (select id from author where first_name = 'Neil' and last_name = 'Gaiman'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Green Mars'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Here Gather the Stars'),
    (select id from author where first_name = 'Clifford' and last_name = 'Simak'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Gods Themselves'),
    (select id from author where first_name = 'Isaac' and last_name = 'Asimov'));

-- H
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Harry Potter and the Goblet of Fire'),
    (select id from author where first_name = 'J.' and last_name = 'Rowling'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Hominids'),
    (select id from author where first_name = 'Robert' and last_name = 'Sawyer'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Hyperion'),
    (select id from author where first_name = 'Dan' and last_name = 'Simmons'));

-- I
insert into work_author (work_id, author_id) values (
    (select id from work where name = '...And Call Me Conrad'),
    (select id from author where first_name = 'Roger' and last_name = 'Zelazny'));