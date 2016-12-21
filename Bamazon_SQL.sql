USE Bamazon;

CREATE TABLE products (
  item_id MEDIUMINT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price INTEGER(10) NULL,
  stock_quantity INTEGER(10) NULL,
  PRIMARY KEY (position)
);

describe products

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1, "XBOX 360", "Video Games Department", 360, 37);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2, "Playstation", "Video Games Department", 350, 12);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (3, "Nintendo 64", "Video Games Department", 250, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (4, "Kindle", "Book Department", 70, 65);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5, "Kindle Fire", "Book Department", 50, 12);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (6, "Tape Recorder", "Technology Department", 30, 165);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (7, "Beat Box Machine", "Technology Department", 25, 9);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (8, "DVD Player", "Movie Department", 89, 15);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (9, "Fujifilm Camera", "Technology Department", 98, 68);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (10, "Projector", "Movie Department", 265, 42);

describe products

