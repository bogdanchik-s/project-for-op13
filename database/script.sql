use `project_for_op13`;

create table if not exists `user` (
    `login` varchar(255),
    `password_hash` varchar(32),
    constraint `user_pk` primary key(`login`)
);

-- drop table `user` cascade;

create table if not exists `person` (
    `id` varchar(255) primary key references `user`(`login`) on update cascade on delete restrict,
    `first_name` varchar(255),
    `middle_name` varchar(255),
    `last_name` varchar(255),
    `birthdate` date
);