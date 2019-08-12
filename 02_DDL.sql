DROP TABLE coffee_bean cascade constraint;

CREATE TABLE coffee_bean (
       name VARCHAR2(30) PRIMARY KEY,
       nickname VARCHAR2(30) NOT NULL,
       point VARCHAR2(50) NOT NULL,
       explain LONG NOT NULL,
       scent integer NOT NULL,
       sour integer NOT NULL,
       sweet integer NOT NULL,
       bitter integer NOT NULL,
       body integer NOT NULL
);