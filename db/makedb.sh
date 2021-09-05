rm scintillate.sqlite 2>/dev/null
sqlite3 scintillate.sqlite ""
sqlite3 scintillate.sqlite < tables.sql
sqlite3 scintillate.sqlite < data/works.sql
sqlite3 scintillate.sqlite < data/authors.sql
sqlite3 scintillate.sqlite < data/works-authors-a-d.sql
sqlite3 scintillate.sqlite < data/works-authors-e-i.sql
sqlite3 scintillate.sqlite < data/works-authors-j-n.sql
sqlite3 scintillate.sqlite < data/works-authors-o-t.sql
sqlite3 scintillate.sqlite < data/works-authors-u-z.sql
sqlite3 scintillate.sqlite < data/awards.sql
sqlite3 scintillate.sqlite < data/works-hugos.sql
sqlite3 scintillate.sqlite < data/works-product-links.sql

