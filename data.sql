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
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1955);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1956);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1957);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1958);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1959);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1960);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1961);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1962);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1963);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1964);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1965);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1966);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1967);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1968);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1969);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1970);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1971);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1972);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1973);
insert into award_category (award_id, name, sort_order, year) values (1, 'Best Novel', 1, 1974);

insert into author (first_name, last_name) values ('Fred', 'Bester');
insert into author (first_name, last_name) values ('Mark', 'Clifton');
insert into author (first_name, last_name) values ('Frank', 'Riley');

insert into work (name, type) values ('The Demolished Man', 'Novel');
insert into work (name, type) values ('They''d Rather Be Right', 'Novel');

insert into work_author (work_id, author_id) values (
    (select id from work where name = 'The Demolished Man'),
    (select id from author where first_name = 'Fred' and last_name = 'Bester'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Mark' and last_name = 'Clifton'));
insert into work_author (work_id, author_id) values (
    (select id from work where name = 'They''d Rather Be Right'),
    (select id from author where first_name = 'Frank' and last_name = 'Riley'));

insert into work_award_category (work_id, award_category_id, status) values (
   (select id from work where name = 'The Demolished Man'),
   (select id from award_category where award_id = 1 and name = 'Best Novel' and year = 1953),
   1
);
insert into work_award_category (work_id, award_category_id, status) values (
   (select id from work where name = 'They''d Rather Be Right'),
   (select id from award_category where award_id = 1 and name = 'Best Novel' and year = 1955),
   1
);
