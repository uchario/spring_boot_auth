create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);

insert ignore into `users` values('arich', '{noop}12345', 1);
insert ignore into `authorities` values('arich', 'read');

insert ignore into `users` values('admin', '{noop}12345', 1);
insert ignore into `authorities` values('admin', 'admin');

create table `customers` (
	`id` int NOT NULL auto_increment,
    `email` varchar(45) not null,
    `pwd` varchar(200) not null,
    `role` varchar(45) not null,
    primary key(`id`)
);

insert into `customers` ('email', 'pwd', 'role') values('uchario@yahoo.com', '{noop}Csp_1234', 'read');
insert into `customers` (`email`, `pwd`, `role`) values('uariolu@gmail.com', '{noop}Csp_1234', 'admin');