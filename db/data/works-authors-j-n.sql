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
    (select id from work where name = 'Lord of Light'),
    (select id from author where first_name = 'Roger' and last_name = 'Zelazny'));

-- M
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Man in the High Castle'),
    (select id from author where first_name = 'Philip' and last_name = 'Dick'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'A Memory Called Empire'),
    (select id from author where first_name = 'Arkady' and last_name = 'Martine'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Mirror Dance'),
    (select id from author where first_name = 'Lois' and last_name = 'Bujold'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Mona Lisa Overdrive'),
    (select id from author where first_name = 'William' and last_name = 'Gibson'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Moon Is a Harsh Mistress'),
    (select id from author where first_name = 'Robert' and last_name = 'Heinlein'));

-- N
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'Neuromancer'),
    (select id from author where first_name = 'William' and last_name = 'Gibson'));