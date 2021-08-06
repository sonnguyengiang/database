create database case_study;
use case_study;


create table account(
id_account int primary key auto_increment,
username varchar(200) unique,
password varchar(200),
phonenumber varchar(10) unique,
gmail varchar(200) unique,
address varchar(200),
type varchar(5) default "USER"
);
drop table account;

create table bill(
id_bill int primary key,
id_user int,
id_detail_bill int,
ngaymua date,
foreign key (id_detail_bill) references detail_bill(id_detail_bill),
foreign key (id_user) references account(id_account)
);

create table detail_bill(
id_detail_bill int primary key,
id_sp int,
count_price int,
soluongmua int,
foreign key (id_sp) references product(id_sp)
);

create table product(
id_sp int primary key auto_increment,
name_sp varchar(200),
mau_sp varchar(200),
tenhanng varchar(200),
loaisp varchar(200),
soluong int,
price int,
img varchar(1000)
);


select name_type from type inner join typeProduct on type.id_type = typeProduct.id_type
inner join product on product.id_sp = typeProduct.id_sp
where product.id_sp = 1
