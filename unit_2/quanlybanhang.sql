create database quanlybanhang;
use quanlybanhang;


create table customer (
    c_id int auto_increment primary key,
    c_name varchar(50) not null,
    c_age date not null
);

create table orders (
    o_id int auto_increment primary key,
    c_id int not null,
    o_date date not null,
    o_totalprice double not null default 0,
    foreign key (c_id) references customer(c_id)
);

create table order_detail (
    o_id int not null,
    p_id int not null,
    od_qty int not null default 1,
    primary key (o_id, p_id),
    foreign key (o_id) references orders(o_id),
    foreign key (p_id) references product(p_id)
);

create table product (
    p_id int auto_increment primary key,
    p_name varchar(100) not null,
    p_price double not null
);