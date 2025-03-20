use `project_for_op13`;

create table if not exists `user` (
    `login` varchar(255),
    `password_hash` varchar(32), -- SHA-256 hash
    constraint `user_pk` primary key(`login`)
);

create table if not exists `person` (
    `user` varchar(255),
    `first_name` varchar(255),
    `middle_name` varchar(255),
    `last_name` varchar(255),
    `birthdate` date,
    constraint `person_pk` primary key (`user`),
    constraint `person_user_user_login_fk` foreign key (`user`) references `user` (`login`) on update cascade on delete cascade
);

-- Test values
insert into `user` values ('bzakharov', 'same_hash');
insert into `person` (`user`, `first_name`) values ('bzakharov', 'Богдан');
