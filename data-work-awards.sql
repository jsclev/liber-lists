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
insert into work_award_category (work_id, award_category_id, status) values (
   (select id from work where name = 'Ancillary Justice'),
   (select id from award_category where award_id = 4 and name = 'Best Novel' and year = 2013),
   1
);
