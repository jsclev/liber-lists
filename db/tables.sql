DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS work;
DROP TABLE IF EXISTS award;
DROP TABLE IF EXISTS award_category;
DROP TABLE IF EXISTS work_author;
DROP TABLE IF EXISTS work_award_category;

CREATE TABLE author (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    middle_name TEXT,
    last_name TEXT NOT NULL
);

CREATE TABLE work (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    product_link TEXT
);

CREATE TABLE series (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    genre TEXT NOT NULL
);

CREATE TABLE work_series (
    id INTEGER PRIMARY KEY,
    work_id INTEGER NOT NULL,
    series_id INTEGER NOT NULL,
    ordinal INTEGER,
    ordinal_name TEXT,
    FOREIGN KEY (work_id) REFERENCES work (id),
    FOREIGN KEY (series_id) REFERENCES series (id)
);

CREATE TABLE award (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    genre TEXT NOT NULL,
    UNIQUE(name)
);

CREATE TABLE award_category (
    id INTEGER PRIMARY KEY,
    award_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    sort_order INTEGER NOT NULL,
    year INTEGER NOT NULL,
    FOREIGN KEY (award_id) REFERENCES award (id)
);

CREATE TABLE work_author (
    id INTEGER PRIMARY KEY,
    work_id INTEGER NOT NULL,
    author_id INTEGER NOT NULL,
    UNIQUE(work_id, author_id),
    FOREIGN KEY (work_id) REFERENCES work (id),
    FOREIGN KEY (author_id) REFERENCES author (id)
);

CREATE TABLE work_award_category (
    id INTEGER PRIMARY KEY,
    work_id INTEGER NOT NULL,
    award_category_id INTEGER NOT NULL,
    status INTEGER NOT NULL,
    UNIQUE(work_id, award_category_id),
    FOREIGN KEY (work_id) REFERENCES work (id),
    FOREIGN KEY (award_category_id) REFERENCES award_category (id)
);

CREATE TABLE user (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE user_work_stat (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    work_id INTEGER NOT NULL,
    read_status INTEGER,  -- 0=have not read, 1=want to read, 2=reading, 3=read
    own_status INTEGER,    -- 0=do not own, 1=want to own, 2=own it
    FOREIGN KEY (user_id) REFERENCES user (id),
    FOREIGN KEY (work_id) REFERENCES work (id)
);