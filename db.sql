create schema dockerlearn collate utf8mb4_bin;
use dockerlearn;
create table user
(
    id   varchar(32) not null
        primary key,
    name varchar(32) not null,
    age  int         not null
);
INSERT INTO dockerlearn.user (id, name, age) VALUES ('u01', '张三', 12);
INSERT INTO dockerlearn.user (id, name, age) VALUES ('u02', '李四', 13);
