-- Show Hugo Best Novel awards, ordered by year
select
    aw.name,
    ac.year as Year,
    ac.name as Category,
    w.name as Name,
    a.first_name || ' ' || a.last_name as Author
from
    work w
inner join
    work_author wa on wa.work_id = w.id
inner join
    author a on a.id = wa.author_id
inner join
    work_award_category wac on wac.work_id = w.id
inner join
    award_category ac on ac.id = wac.award_category_id
inner join
    award aw on aw.id = ac.award_id
order by
    ac.year,
    wac.status,
    a.last_name,
    a.first_name;

select
    aw.name,
    ac.year as Year,
    ac.name as Category,
    w.name as Name,
    w.id as WorkId,
    a.first_name || ' ' || a.last_name as Author
from
    award aw
left outer join
    award_category ac on ac.award_id = aw.id
left outer join
    work_award_category wac on wac.award_category_id = ac.id
left outer join
    work w on w.id = wac.work_id
left outer join
    work_author wa on wa.work_id = w.id
left outer join
    author a on a.id = wa.author_id
where
    aw.name = 'Hugo Award' and
    ac.name = 'Best Novel'
order by
    ac.year,
    wac.status,
    w.name;

select * from work_author where work_id = 147;

select * from work_author order by work_id;

select * from work where name = 'The Demolished Man';
