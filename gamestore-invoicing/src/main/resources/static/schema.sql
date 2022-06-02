create schema if not exists game_store_invoice;
use game_store_invoice;

create table if not exists tax (
  state char(2) not null,
  rate decimal(3,2) not null
);

create table if not exists fee (
  product_type varchar(20) not null,
  fee decimal (4,2)
);


create table if not exists invoice (
   invoice_id int auto_increment not null primary key,
   name varchar(80) not null,
   street varchar(30) not null,
   city varchar(30) not null,
   state char(2) not null,
   zipcode varchar(5) not null,
   item_type varchar(20) not null,
   item_id long not null,
   unit_price decimal(5,2) not null,
   quantity long not null,
   subtotal decimal(5,2) not null,
   tax decimal(5,2) not null,
   processing_fee decimal (5,2) not null,
   total decimal(5,2) not null
);

