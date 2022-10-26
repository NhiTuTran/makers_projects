TRUNCATE TABLE items RESTART IDENTITY CASCADE;
TRUNCATE TABLE orders RESTART IDENTITY CASCADE;

INSERT INTO items (name, unit_price, quantity) VALUES ('Bread', '1.50', '99');
INSERT INTO items (name, unit_price, quantity) VALUES ('Milk', '1.99', '79');
INSERT INTO items (name, unit_price, quantity) VALUES ('Tea', '2.50', '50');

INSERT INTO orders (customer_name, order_date) VALUES ('Peter Parker', '2022-10-20');
INSERT INTO orders (customer_name, order_date) VALUES ('Tony Stark', '2022-10-21');
INSERT INTO orders (customer_name, order_date) VALUES ('Steve Rogers', '2022-10-22');

INSERT INTO items_orders (item_id, order_id) VALUES (1, 1);
INSERT INTO items_orders (item_id, order_id) VALUES (2, 2);
INSERT INTO items_orders (item_id, order_id) VALUES (3, 2);
INSERT INTO items_orders (item_id, order_id) VALUES (1, 3);
INSERT INTO items_orders (item_id, order_id) VALUES (2, 3);
INSERT INTO items_orders (item_id, order_id) VALUES (3, 3);

--CREATE TABLE items (
--  id SERIAL PRIMARY KEY,
--  name text,
--  unit_price numeric,
--  quantity numeric
--);

--CREATE TABLE orders (
--  id SERIAL PRIMARY KEY,
--  customer_name text,
--  order_date date
--);

--CREATE TABLE items_orders (
--  item_id int,
--  order_id int,
--  constraint fk_item foreign key(item_id) references items(id) on delete cascade,
--  constraint fk_order foreign key(order_id) references orders(id) on delete cascade,
--  PRIMARY KEY (item_id, order_id)
--);