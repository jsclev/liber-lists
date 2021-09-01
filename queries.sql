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
