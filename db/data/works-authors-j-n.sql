-- J
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Jonathan Strange & Mr Norrell'),
    (select id from author where first_name = 'Susanna' and last_name = 'Clarke'));

-- K

-- L
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Left Hand of Darkness'),
    (select id from author where first_name = 'Ursula' and last_name = 'Le Guin'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Leviathan Wakes'),
    (select id from author where first_name = 'James' and last_name = 'Corey'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Light Brigade'),
    (select id from author where first_name = 'Kameron' and last_name = 'Hurley'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Long Tomorrow'),
    (select id from author where first_name = 'Leigh' and last_name = 'Brackett'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Lord of Light'),
    (select id from author where first_name = 'Roger' and last_name = 'Zelazny'));

-- M
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Man in the High Castle'),
    (select id from author where first_name = 'Philip' and last_name = 'Dick'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Martian'),
    (select id from author where first_name = 'Andy' and last_name = 'Weir'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Memory Called Empire'),
    (select id from author where first_name = 'Arkady' and last_name = 'Martine'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Middlegame'),
    (select id from author where first_name = 'Seanan' and last_name = 'McGuire'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Mirror Dance'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Mona Lisa Overdrive'),
    (select id from author where first_name = 'William' and last_name = 'Gibson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Moon Is a Harsh Mistress'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Mote in God''s Eye'),
    (select id from author where first_name = 'Larry' and last_name = 'Niven'));

-- N
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Network Effect'),
    (select id from author where first_name = 'Martha' and last_name = 'Wells'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Neuromancer'),
    (select id from author where first_name = 'William' and last_name = 'Gibson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'New York 2140'),
    (select id from author where first_name = 'Kim' and last_name = 'Robinson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Ninefox Gambit'),
    (select id from author where first_name = 'Yoon Ha' and last_name = 'Lee'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Not This August'),
    (select id from author where first_name = 'Cyril' and last_name = 'Kornbluth'));