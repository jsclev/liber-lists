rm liber-lists.sqlite 2>/dev/null
sqlite3 liber-lists.sqlite ""
sqlite3 liber-lists.sqlite < tables.sql
sqlite3 liber-lists.sqlite < data/works.sql
sqlite3 liber-lists.sqlite < data/authors.sql
sqlite3 liber-lists.sqlite < data/work-authors-a-d.sql
sqlite3 liber-lists.sqlite < data/work-authors-e-i.sql
sqlite3 liber-lists.sqlite < data/work-authors-j-n.sql
sqlite3 liber-lists.sqlite < data/work-authors-o-t.sql
sqlite3 liber-lists.sqlite < data/work-authors-u-x.sql
sqlite3 liber-lists.sqlite < data/awards.sql
sqlite3 liber-lists.sqlite < data/work-hugos.sql
