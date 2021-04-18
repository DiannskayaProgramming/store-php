create database store;
use store;

create table categories (id_cat int (5) primary key auto_increment,
                         name_cat varchar(50));

insert into categories(name_cat)
values ("Молочная продукция");
insert into categories(name_cat)
values ("Колбасы");
insert into categories(name_cat)
values ("Сыры");
insert into categories(name_cat)
values ("Деликатесы");

create table products(
    id_products int(5) primary key auto_increment,
    name_pr varchar(100),
    price_pr int(4),
    proizvod_pr varchar(50),
    sostav_pr varchar(100),
    srok_pr date
);

insert into products(name_pr, price_pr, proizvod_pr, sostav_pr)
values("Колбаса Вязанка", 399, "ООО Наб Челны Мясокомбинат","cвинина, говядина, растительные жиры");

insert into products(name_pr, price_pr, proizvod_pr, sostav_pr)
values("Сыр с плесенью", 999, "ООО Наб Челны Мясокомбинат","молоко, соль, нитрат натрия");

insert into products(name_pr, price_pr, proizvod_pr, sostav_pr)
values("Конина", 1999, "ООО Наб Челны Мясокомбинат","конина, соль, специи");


create table basket(
    id_bask char(15),
    id_pr int (5),
    kolvo int(3),
    date_bask date);


create table customers( id_cust int(5) primary key auto_increment,
fio varchar(50),
addr varchar(50),
email varchar(30),
login varchar (15),
password varchar (15),
subscribe int(1));

create table orders(
    id_ord char(15),
    date_ord date ,
    id_cust int(5),
    dostavka int (1),
    bonus int(5)
);

create table order_products(
    id_order char(15),
    id_prod int (5),
    kolbo int(2)
);

select * from categories;
select * from products;
select * from basket;
select * from customers;
select * from order_products;
select * from orders;

show databases ;

SELECT * FROM categories ORDER BY name_cat