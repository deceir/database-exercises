USE codeup_test_db;

drop table if exists albums;

create table albums (
    id int unsigned not null AUTO_INCREMENT,
    artist varchar(50) not null,
    name varchar(50) not null,
    release_date int unsigned not null,
    sales int unsigned,
    genre varchar(50),
    PRIMARY KEY (id)
);