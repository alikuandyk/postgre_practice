CREATE TABLE categories
(
    id   SERIAL8 PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE category_attributes
(
    id          SERIAL8 PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    category_id INT8 REFERENCES categories (id)
);

CREATE TABLE products
(
    id          SERIAL8 PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    category_id INT8 references categories (id)
);

CREATE TABLE products_attributes
(
    product_id   INT8 REFERENCES products (id),
    attribute_id INT8 REFERENCES category_attributes (id),
    value        VARCHAR(255) NOT NULL
);

INSERT INTO categories (name)
VALUES ('Процессоры'),
       ('Мониторы');

INSERT INTO products (name, category_id)
VALUES ('Intel Core I9 9900', 5),
       ('AMD Ryzen R7 7700', 5),
       ('Samsung SU556270', 6),
       ('AOC Z215S659', 6);

INSERT INTO category_attributes (name, category_id)
VALUES ('Производитель', 5),
       ('Количество ядер', 5),
       ('Сокет', 5),
       ('Производитель', 6),
       ('Диагональ', 6),
       ('Матрица', 6),
       ('Разрешение', 6);

INSERT INTO products_attributes (product_id, attribute_id, value)
VALUES
(17, 36, 'Intel'),
(17, 37, '8'),
(17, 38, '1250'),
(18, 36, 'AMD'),
(18, 37, '12'),
(18, 38, 'AM4'),
(19, 39, 'Samsung'),
(19, 40, '27'),
(19, 41, 'TN'),
(19, 42, '2560*1440'),
(20, 39, 'AOC'),
(20, 40, '21.5'),
(20, 41, 'AH-IPS'),
(20, 42, '1920*1080');




