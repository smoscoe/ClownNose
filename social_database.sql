create database if not exists social_database;

use social_database;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

create table users (
	id int(11) not null auto_increment,
	email varchar(25) not null,
	password varchar(20) not null,
	display_name varchar(20) not null,
	primary key (id)
);

create table posts (
	id int(15)  not null auto_increment,
	user_id int(11)  not null,
	content varchar(255) not null,
	primary key (id),
	foreign key (user_id) references users(id)
);

create table comments (
	id int(15) not null auto_increment,
	user_id int(11) not null,
	post_id int(15) not null,
	content varchar(255) not null,
	primary key(id),
	foreign key(user_id) references users(id),
	foreign key(post_id) references posts(id)
);