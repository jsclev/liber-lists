rm liber-lists.sqlite 2>/dev/null
sqlite3 liber-lists.sqlite ""
sqlite3 liber-lists.sqlite < tables.sql
sqlite3 liber-lists.sqlite < data-works.sql
sqlite3 liber-lists.sqlite < data-authors.sql
sqlite3 liber-lists.sqlite < data-work-authors.sql
sqlite3 liber-lists.sqlite < data-awards.sql
sqlite3 liber-lists.sqlite < data-work-hugos.sql
