CREATE TABLE user (
    id varchar(10),
    name varchar(100) NOT NULL,
    password varchar(2000) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO user VALUES (1, 'Alice', 'abcABC123!@#');

CREATE TABLE prices (
    ticker varchar(10),
    day date,
    price double NOT NULL,
    PRIMARY KEY (ticker, day)
);
INSERT INTO prices VALUES ('FB', '2018-01-01', 10);
INSERT INTO prices VALUES ('FB', '2018-01-02', 15);
INSERT INTO prices VALUES ('FB', '2018-01-03', 10);
INSERT INTO prices VALUES ('AAPL', '2018-01-01', 3.5);
INSERT INTO prices VALUES ('AAPL', '2018-01-02', 7);
INSERT INTO prices VALUES ('AAPL', '2018-01-03', 9);
