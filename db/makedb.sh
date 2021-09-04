rm scintillate.sqlite 2>/dev/null
sqlite3 scintillate.sqlite ""
sqlite3 scintillate.sqlite < tables.sql
sqlite3 scintillate.sqlite < data/works.sql
sqlite3 scintillate.sqlite < data/authors.sql
sqlite3 scintillate.sqlite < data/work-authors-a-d.sql
sqlite3 scintillate.sqlite < data/work-authors-e-i.sql
sqlite3 scintillate.sqlite < data/work-authors-j-n.sql
sqlite3 scintillate.sqlite < data/work-authors-o-t.sql
sqlite3 scintillate.sqlite < data/work-authors-u-x.sql
sqlite3 scintillate.sqlite < data/awards.sql
sqlite3 scintillate.sqlite < data/work-hugos.sql
