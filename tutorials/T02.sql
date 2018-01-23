CREATE TABLE user (
    id varchar(10),
    name varchar(100) NOT NULL,
    password varchar(2000) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO user VALUES (1, 'Alice', 'abcABC123!@#');
