insert into author (first_name, last_name) values ('Fred', 'Bester');

insert into work (name, type) values ('The Demolished Man', 'Novel');

insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Demolished Man'),
    (select id from author where first_name = 'Fred' and last_name = 'Bester'));

insert into award (id, name) values (1, 'Hugo Award');
insert into award (id, name) values (2, 'Nebula Award');
insert into award (id, name) values (3, 'Edward E. Smith Memorial Award (the Skylark)');
insert into award (id, name) values (4, 'BSFA Award');
insert into award (id, name) values (5, 'Seiun Award');
insert into award (id, name) values (6, 'Locus Award');
insert into award (id, name) values (7, 'Saturn Award');
insert into award (id, name) values (8, 'John W. Campbell Memorial Award');
insert into award (id, name) values (9, 'Rhysling Award');
insert into award (id, name) values (10, 'Philip K. Dick Award');
insert into award (id, name) values (11, 'Arthur C. Clarke Award');
insert into award (id, name) values (12, 'Theodore Sturgeon Memorial Award');

insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1953);

insert into work_award_category (work_id, award_category_id, status) values (
   (select id from work where name = 'The Demolished Man'),
   (select id from award_category where award_id = 1 and name = 'Best Novel' and year = 1953),
   1
);