
create table category 
( 
category_id identity, 
category_name varchar2(30) not null unique, 
category_description varchar2(100) 
)

create table product
(
product_id identity,
product_name varchar2(30) not null,
product_description varchar2(100),
product_price decimal(8,2) not null,
product_quantity number(5) not null,
category_id bigint(10) not null,
constraint fk_category_id FOREIGN KEY(category_id)
references category(category_id)
)

create table user 
(
user_id identity,
username varchar2(30) not null,
user_firstname varchar2(30) not null,
user_lastname varchar2(30) not null,
user_emailid varchar2(30),
user_mobileno varchar2(30) not null,
user_password varchar2(15) not null,
user_enable boolean default 'true',
user_role varchar(20) default 'customer',
)

create table address
(
address_id identity,
address_line_1 varchar2(30) not null,
address_line_2 varchar2(30) not null,
address_landmark varchar(15),
address_city varchar(30) not null,
address_state varchar(30) not null,
address_country varchar(30) not null,
address_pincode varchar(15) not null,
user_id bigint(10) not null,
constraint fk_add_user_id FOREIGN KEY(user_id)
references user(user_id)
)

create table cart
(
cart_id identity,
cart_grand_total decimal(8,2) not null,
user_id bigint(10) not null,
constraint fk_user_id FOREIGN KEY(user_id)
references user(user_id)
)

create table cart_items
(
item_id identity,
cart_id int(10) not null,
constraint fk_cart_id FOREIGN KEY(cart_id)
references cart(cart_id),
product_id int(10) not null,
constraint fk_product_id FOREIGN KEY(product_id)
references product(product_id)
)

create table order_history
(
order_history_id identity,
user_id bigint(10) not null,
constraint fk_order_history_user_id FOREIGN KEY(user_id)
references user(user_id)
)

create table ordered_item
(
ordered_item identity,
ordered_price decimal(8,2) not null,
ordered_quantity number(5) not null,
ordered_total decimal(8,2) not null,
order_history_id bigint(10) not null,
constraint fk_order_history_id FOREIGN KEY(order_history_id)
references order_history(order_history_id),
product_id bigint(10) not null,
constraint fk_ordered_product_id FOREIGN KEY(product_id)
references product(product_id)
)
