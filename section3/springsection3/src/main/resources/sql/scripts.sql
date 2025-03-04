create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);

insert ignore into `users` values('arich', '{noop}12345', 1);
insert ignore into `authorities` values('arich', 'read');

insert ignore into `users` values('admin', '{noop}12345', 1);
insert ignore into `authorities` values('admin', 'admin');