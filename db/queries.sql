-- Show Hugo Best Novel awards, ordered by year
select
    aw.title,
    ac.year as Year,
    ac.title as Category,
    case when wac.status = 1 then 'Winner'
         when wac.status = 2 then 'Finalist'
    end as Status,
    w.title as Name,
    case when a.middle_name is null then a.first_name || ' ' || a.last_name
         else a.first_name || ' ' || a.middle_name || ' ' || a.last_name
    end as AuthorName,
    case when uws.own_status = 2 then 'Owned'
         else ''
    end as Owned
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
left outer join
    user_work_stat uws on w.id = uws.work_id
left outer join
    user u on uws.user_id = u.id
where
    aw.title = 'Hugo Award' and
    u.username = 'jsclev'
order by
    aw.title,
    ac.year,
    wac.status,
    a.last_name,
    a.first_name;

-- Hugo Best Novel award winners and finalists
select
    aw.title,
    ac.year as Year,
    ac.title as Category,
    w.title as Name,
    case when wac.status = 1 then 'Winner'
         when wac.status = 2 then 'Finalist'
    end as Status,
    case when a.middle_name is null then a.first_name || ' ' || a.last_name
         else a.first_name || ' ' || a.middle_name || ' ' || a.last_name
    end as Author
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
    aw.title = 'Hugo Award' and
    ac.title = 'Best Novel'
order by
    ac.year,
    wac.status,
    w.title;

-- Books I own
select
    w.title,
    case when a.middle_name is null then a.first_name || ' ' || a.last_name
         else a.first_name || ' ' || a.middle_name || ' ' || a.last_name
    end as Author,
    s.title,
    ws.ordinal_name
from
    work w
left outer join
    work_author wa on w.id = wa.work_id
left outer join
    author a on wa.author_id = a.id
left outer join
    work_series ws on w.id = ws.work_id
left outer join
    series s on ws.series_id = s.id
inner join
    user_work_stat uws on uws.work_id = w.id
inner join
    user u on u.id = uws.user_id
where
    u.username = 'jsclev' and
    uws.own_status = 2
order by
    a.last_name,
    a.first_name,
    ws.ordinal,
    w.title;

-- Books I have read
select
    w.title,
    a.first_name,
    a.last_name,
    s.title,
    ws.ordinal_name
from
    work w
left outer join
    work_author wa on w.id = wa.work_id
left outer join
    author a on wa.author_id = a.id
left outer join
    work_series ws on w.id = ws.work_id
left outer join
    series s on ws.series_id = s.id
inner join
    user_work_stat uws on uws.work_id = w.id
inner join
    user u on u.id = uws.user_id
where
    u.username = 'jsclev' and
    uws.read_status = 3
order by
    w.title;