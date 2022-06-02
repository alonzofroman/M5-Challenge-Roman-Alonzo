create schema if not exists game_store_catalog;
use game_store_catalog;

create table if not exists game (
game_id int auto_increment primary key,
title varchar(25),
esrb_rating varchar(25),
description varchar(50),
studio varchar(50),
price decimal(5, 2),
quantity long
);

create table if not exists console (
   console_id int auto_increment not null primary key,
   model varchar(50) not null,
   manufacturer varchar(50) not null,
   memory_amount varchar(20),
   processor varchar(20),
   price decimal(5, 2) not null,
   quantity long not null
);

create table if not exists t_shirt (
   t_shirt_id int auto_increment not null primary key,
   size varchar(20) not null,
   color varchar(20) not null,
   description varchar(255) not null,
   price decimal(5,2) not null,
   quantity long not null
);



