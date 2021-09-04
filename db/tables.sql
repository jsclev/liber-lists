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
    type TEXT NOT NULL
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
    year INTEGER NOT NULL
);

CREATE TABLE work_author (
    id INTEGER PRIMARY KEY,
    work_id INTEGER NOT NULL,
    author_id INTEGER NOT NULL,
    UNIQUE(work_id, author_id)
);

CREATE TABLE work_award_category (
    id INTEGER PRIMARY KEY,
    work_id INTEGER NOT NULL,
    award_category_id INTEGER NOT NULL,
    status INTEGER NOT NULL,
    UNIQUE(work_id, award_category_id)
);