mysql>  show databases;
+----------------------------+
| Database                   |
+----------------------------+
| college                    |
| company_db                 |
| customer                   |
| ecom                       |
| ecommerce_db               |
| employee                   |
| employee_1                 |
| employees                  |
| firsthibernate             |
| hibernate_annotation       |
| hibernate_manytomany       |
| hibernate_maven            |
| hibernate_onetomany        |
| hibernate_onetoone         |
| information_schema         |
| jdbc_example               |
| jdbc_image_crud            |
| jdbc_image_curd            |
| mysql                      |
| newdb                      |
| performance_schema         |
| react_springboot_crud      |
| sakila                     |
| springboot_aop             |
| springboot_mvc             |
| springbootapi              |
| springbootcrud             |
| springbootmvc              |
| student                    |
| student_management_servlet |
| studentmanagement_servlet  |
| studenttbt                 |
| sys                        |
| world                      |
+----------------------------+
34 rows in set (0.01 sec)

mysql> Create database ecommerce_db;
ERROR 1007 (HY000): Can't create database 'ecommerce_db'; database exists
mysql> use ecommerce_db;
Database changed
mysql> show tables;
+------------------------+
| Tables_in_ecommerce_db |
+------------------------+
| cart                   |
| category               |
| order_address          |
| product                |
| product_order          |
| user_dtls              |
+------------------------+
6 rows in set (0.01 sec)

mysql> create database ecommerce_db2;
Query OK, 1 row affected (0.03 sec)

mysql> use ecommerce_db2;
Database changed
mysql> CREATE TABLE products (
    ->     product_id INT PRIMARY KEY,
    ->     product_name VARCHAR(100),
    ->     category VARCHAR(50),
    ->     brand VARCHAR(50),
    ->     price DECIMAL(10,2),
    ->     quantity INT,
    ->     city VARCHAR(50),
    ->     status VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> describe products;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| product_id   | int           | NO   | PRI | NULL    |       |
| product_name | varchar(100)  | YES  |     | NULL    |       |
| category     | varchar(50)   | YES  |     | NULL    |       |
| brand        | varchar(50)   | YES  |     | NULL    |       |
| price        | decimal(10,2) | YES  |     | NULL    |       |
| quantity     | int           | YES  |     | NULL    |       |
| city         | varchar(50)   | YES  |     | NULL    |       |
| status       | varchar(20)   | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

mysql> show tables;
+-------------------------+
| Tables_in_ecommerce_db2 |
+-------------------------+
| products                |
+-------------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO products VALUES
    -> (201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available'),
    ->
    -> (202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available'),
    ->
    -> (203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available'),
    ->
    -> (204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available'),
    ->
    -> (205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available'),
    ->
    -> (206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock'),
    ->
    -> (207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available'),
    ->
    -> (208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available'),
    ->
    -> (209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available'),
    ->
    -> (209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available'),(210, 'JBL Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available
    '> ^C
mysql> select * from products;
Empty set (0.00 sec)

mysql> INSERT INTO products VALUES
    -> (201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available'),
    ->
    -> (202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available'),
    ->
    -> (203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available'),
    ->
    -> (204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available'),
    ->
    -> (205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available'),
    ->
    -> (206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock'),
    ->
    -> (207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available'),
    ->
    -> (208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available'),
    ->
    -> (209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available'),
    ->
    -> (210, 'JBL Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from products;
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status       |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
|        201 | Galaxy M55     | Mobile      | Samsung  | 32000.00 |       15 | Pune   | Available    |
|        202 | iPhone 15      | Mobile      | Apple    | 65000.00 |        8 | Mumbai | Available    |
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available    |
|        204 | Inspiron 15    | Laptop      | Dell     | 58000.00 |        6 | Nashik | Available    |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |       12 | Mumbai | Available    |
|        206 | Galaxy Watch 6 | Watch       | Samsung  | 22000.00 |        4 | Pune   | Out of Stock |
|        207 | Apple Watch SE | Watch       | Apple    | 30000.00 |       10 | Mumbai | Available    |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available    |
|        209 | OnePlus Pad    | Tablet      | OnePlus  | 35000.00 |        5 | Nashik | Available    |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available    |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
10 rows in set (0.00 sec)

mysql> select product_name from products;
+----------------+
| product_name   |
+----------------+
| Galaxy M55     |
| iPhone 15      |
| Moto Edge 50   |
| Inspiron 15    |
| IdeaPad Slim 3 |
| Galaxy Watch 6 |
| Apple Watch SE |
| Redmi Pad      |
| OnePlus Pad    |
| JBL Speaker    |
+----------------+
10 rows in set (0.00 sec)

mysql> select product_name,price from products;
+----------------+----------+
| product_name   | price    |
+----------------+----------+
| Galaxy M55     | 32000.00 |
| iPhone 15      | 65000.00 |
| Moto Edge 50   | 28000.00 |
| Inspiron 15    | 58000.00 |
| IdeaPad Slim 3 | 45000.00 |
| Galaxy Watch 6 | 22000.00 |
| Apple Watch SE | 30000.00 |
| Redmi Pad      | 24000.00 |
| OnePlus Pad    | 35000.00 |
| JBL Speaker    |  7000.00 |
+----------------+----------+
10 rows in set (0.00 sec)

mysql> select product_name,category,brand,price from products;
+----------------+-------------+----------+----------+
| product_name   | category    | brand    | price    |
+----------------+-------------+----------+----------+
| Galaxy M55     | Mobile      | Samsung  | 32000.00 |
| iPhone 15      | Mobile      | Apple    | 65000.00 |
| Moto Edge 50   | Mobile      | Motorola | 28000.00 |
| Inspiron 15    | Laptop      | Dell     | 58000.00 |
| IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |
| Galaxy Watch 6 | Watch       | Samsung  | 22000.00 |
| Apple Watch SE | Watch       | Apple    | 30000.00 |
| Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |
| OnePlus Pad    | Tablet      | OnePlus  | 35000.00 |
| JBL Speaker    | Accessories | JBL      |  7000.00 |
+----------------+-------------+----------+----------+
10 rows in set (0.00 sec)

mysql> select * from products;
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status       |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
|        201 | Galaxy M55     | Mobile      | Samsung  | 32000.00 |       15 | Pune   | Available    |
|        202 | iPhone 15      | Mobile      | Apple    | 65000.00 |        8 | Mumbai | Available    |
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available    |
|        204 | Inspiron 15    | Laptop      | Dell     | 58000.00 |        6 | Nashik | Available    |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |       12 | Mumbai | Available    |
|        206 | Galaxy Watch 6 | Watch       | Samsung  | 22000.00 |        4 | Pune   | Out of Stock |
|        207 | Apple Watch SE | Watch       | Apple    | 30000.00 |       10 | Mumbai | Available    |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available    |
|        209 | OnePlus Pad    | Tablet      | OnePlus  | 35000.00 |        5 | Nashik | Available    |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available    |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
10 rows in set (0.00 sec)

mysql> select * from products
    -> where city +'pune';
Empty set, 20 warnings (0.00 sec)

mysql> SELECT product_name, city FROM products;
+----------------+--------+
| product_name   | city   |
+----------------+--------+
| Galaxy M55     | Pune   |
| iPhone 15      | Mumbai |
| Moto Edge 50   | Pune   |
| Inspiron 15    | Nashik |
| IdeaPad Slim 3 | Mumbai |
| Galaxy Watch 6 | Pune   |
| Apple Watch SE | Mumbai |
| Redmi Pad      | Pune   |
| OnePlus Pad    | Nashik |
| JBL Speaker    | Mumbai |
+----------------+--------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM products
    -> WHERE city = 'Pune';
+------------+----------------+----------+----------+----------+----------+------+--------------+
| product_id | product_name   | category | brand    | price    | quantity | city | status       |
+------------+----------------+----------+----------+----------+----------+------+--------------+
|        201 | Galaxy M55     | Mobile   | Samsung  | 32000.00 |       15 | Pune | Available    |
|        203 | Moto Edge 50   | Mobile   | Motorola | 28000.00 |       20 | Pune | Available    |
|        206 | Galaxy Watch 6 | Watch    | Samsung  | 22000.00 |        4 | Pune | Out of Stock |
|        208 | Redmi Pad      | Tablet   | Xiaomi   | 24000.00 |       18 | Pune | Available    |
+------------+----------------+----------+----------+----------+----------+------+--------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM products
    -> where category = 'laptop';
+------------+----------------+----------+--------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand  | price    | quantity | city   | status    |
+------------+----------------+----------+--------+----------+----------+--------+-----------+
|        204 | Inspiron 15    | Laptop   | Dell   | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo | 45000.00 |       12 | Mumbai | Available |
+------------+----------------+----------+--------+----------+----------+--------+-----------+
2 rows in set (0.00 sec)

mysql> select * from products
    -> where city = 'Mumbai';
+------------+----------------+-------------+--------+----------+----------+--------+-----------+
| product_id | product_name   | category    | brand  | price    | quantity | city   | status    |
+------------+----------------+-------------+--------+----------+----------+--------+-----------+
|        202 | iPhone 15      | Mobile      | Apple  | 65000.00 |        8 | Mumbai | Available |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo | 45000.00 |       12 | Mumbai | Available |
|        207 | Apple Watch SE | Watch       | Apple  | 30000.00 |       10 | Mumbai | Available |
|        210 | JBL Speaker    | Accessories | JBL    |  7000.00 |       25 | Mumbai | Available |
+------------+----------------+-------------+--------+----------+----------+--------+-----------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where category = 'Mobile';
+------------+--------------+----------+----------+----------+----------+--------+-----------+
| product_id | product_name | category | brand    | price    | quantity | city   | status    |
+------------+--------------+----------+----------+----------+----------+--------+-----------+
|        201 | Galaxy M55   | Mobile   | Samsung  | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15    | Mobile   | Apple    | 65000.00 |        8 | Mumbai | Available |
|        203 | Moto Edge 50 | Mobile   | Motorola | 28000.00 |       20 | Pune   | Available |
+------------+--------------+----------+----------+----------+----------+--------+-----------+
3 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where category = 'Laptop';
+------------+----------------+----------+--------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand  | price    | quantity | city   | status    |
+------------+----------------+----------+--------+----------+----------+--------+-----------+
|        204 | Inspiron 15    | Laptop   | Dell   | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo | 45000.00 |       12 | Mumbai | Available |
+------------+----------------+----------+--------+----------+----------+--------+-----------+
2 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price > 30000;
+------------+----------------+----------+---------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand   | price    | quantity | city   | status    |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile   | Samsung | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15      | Mobile   | Apple   | 65000.00 |        8 | Mumbai | Available |
|        204 | Inspiron 15    | Laptop   | Dell    | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo  | 45000.00 |       12 | Mumbai | Available |
|        209 | OnePlus Pad    | Tablet   | OnePlus | 35000.00 |        5 | Nashik | Available |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
5 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price < 30000;
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status       |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available    |
|        206 | Galaxy Watch 6 | Watch       | Samsung  | 22000.00 |        4 | Pune   | Out of Stock |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available    |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available    |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price = 35000;
+------------+--------------+----------+---------+----------+----------+--------+-----------+
| product_id | product_name | category | brand   | price    | quantity | city   | status    |
+------------+--------------+----------+---------+----------+----------+--------+-----------+
|        209 | OnePlus Pad  | Tablet   | OnePlus | 35000.00 |        5 | Nashik | Available |
+------------+--------------+----------+---------+----------+----------+--------+-----------+
1 row in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price >= 45000;
+------------+----------------+----------+--------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand  | price    | quantity | city   | status    |
+------------+----------------+----------+--------+----------+----------+--------+-----------+
|        202 | iPhone 15      | Mobile   | Apple  | 65000.00 |        8 | Mumbai | Available |
|        204 | Inspiron 15    | Laptop   | Dell   | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo | 45000.00 |       12 | Mumbai | Available |
+------------+----------------+----------+--------+----------+----------+--------+-----------+
3 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price <= 30000;
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status       |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available    |
|        206 | Galaxy Watch 6 | Watch       | Samsung  | 22000.00 |        4 | Pune   | Out of Stock |
|        207 | Apple Watch SE | Watch       | Apple    | 30000.00 |       10 | Mumbai | Available    |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available    |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available    |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
5 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where quantity > 10;
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status    |
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile      | Samsung  | 32000.00 |       15 | Pune   | Available |
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |       12 | Mumbai | Available |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available |
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
5 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where quantity < 10;
+------------+----------------+----------+---------+----------+----------+--------+--------------+
| product_id | product_name   | category | brand   | price    | quantity | city   | status       |
+------------+----------------+----------+---------+----------+----------+--------+--------------+
|        202 | iPhone 15      | Mobile   | Apple   | 65000.00 |        8 | Mumbai | Available    |
|        204 | Inspiron 15    | Laptop   | Dell    | 58000.00 |        6 | Nashik | Available    |
|        206 | Galaxy Watch 6 | Watch    | Samsung | 22000.00 |        4 | Pune   | Out of Stock |
|        209 | OnePlus Pad    | Tablet   | OnePlus | 35000.00 |        5 | Nashik | Available    |
+------------+----------------+----------+---------+----------+----------+--------+--------------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where city = 'Pune' and category = 'Mobile';
+------------+--------------+----------+----------+----------+----------+------+-----------+
| product_id | product_name | category | brand    | price    | quantity | city | status    |
+------------+--------------+----------+----------+----------+----------+------+-----------+
|        201 | Galaxy M55   | Mobile   | Samsung  | 32000.00 |       15 | Pune | Available |
|        203 | Moto Edge 50 | Mobile   | Motorola | 28000.00 |       20 | Pune | Available |
+------------+--------------+----------+----------+----------+----------+------+-----------+
2 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where city = 'Mumbai' and status = 'Available';
+------------+----------------+-------------+--------+----------+----------+--------+-----------+
| product_id | product_name   | category    | brand  | price    | quantity | city   | status    |
+------------+----------------+-------------+--------+----------+----------+--------+-----------+
|        202 | iPhone 15      | Mobile      | Apple  | 65000.00 |        8 | Mumbai | Available |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo | 45000.00 |       12 | Mumbai | Available |
|        207 | Apple Watch SE | Watch       | Apple  | 30000.00 |       10 | Mumbai | Available |
|        210 | JBL Speaker    | Accessories | JBL    |  7000.00 |       25 | Mumbai | Available |
+------------+----------------+-------------+--------+----------+----------+--------+-----------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price > 30000 and quantity > 5;
+------------+----------------+----------+---------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand   | price    | quantity | city   | status    |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile   | Samsung | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15      | Mobile   | Apple   | 65000.00 |        8 | Mumbai | Available |
|        204 | Inspiron 15    | Laptop   | Dell    | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo  | 45000.00 |       12 | Mumbai | Available |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price >= 30000 and price <= 60000;
+------------+----------------+----------+---------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand   | price    | quantity | city   | status    |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile   | Samsung | 32000.00 |       15 | Pune   | Available |
|        204 | Inspiron 15    | Laptop   | Dell    | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo  | 45000.00 |       12 | Mumbai | Available |
|        207 | Apple Watch SE | Watch    | Apple   | 30000.00 |       10 | Mumbai | Available |
|        209 | OnePlus Pad    | Tablet   | OnePlus | 35000.00 |        5 | Nashik | Available |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
5 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where city = 'Pune' or city = 'Mumbai';
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status       |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
|        201 | Galaxy M55     | Mobile      | Samsung  | 32000.00 |       15 | Pune   | Available    |
|        202 | iPhone 15      | Mobile      | Apple    | 65000.00 |        8 | Mumbai | Available    |
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available    |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |       12 | Mumbai | Available    |
|        206 | Galaxy Watch 6 | Watch       | Samsung  | 22000.00 |        4 | Pune   | Out of Stock |
|        207 | Apple Watch SE | Watch       | Apple    | 30000.00 |       10 | Mumbai | Available    |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available    |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available    |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
8 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where category = 'Mobile' or category = 'Laptop';
+------------+----------------+----------+----------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand    | price    | quantity | city   | status    |
+------------+----------------+----------+----------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile   | Samsung  | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15      | Mobile   | Apple    | 65000.00 |        8 | Mumbai | Available |
|        203 | Moto Edge 50   | Mobile   | Motorola | 28000.00 |       20 | Pune   | Available |
|        204 | Inspiron 15    | Laptop   | Dell     | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo   | 45000.00 |       12 | Mumbai | Available |
+------------+----------------+----------+----------+----------+----------+--------+-----------+
5 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where quantity < 10 or price > 50000;
+------------+----------------+----------+---------+----------+----------+--------+--------------+
| product_id | product_name   | category | brand   | price    | quantity | city   | status       |
+------------+----------------+----------+---------+----------+----------+--------+--------------+
|        202 | iPhone 15      | Mobile   | Apple   | 65000.00 |        8 | Mumbai | Available    |
|        204 | Inspiron 15    | Laptop   | Dell    | 58000.00 |        6 | Nashik | Available    |
|        206 | Galaxy Watch 6 | Watch    | Samsung | 22000.00 |        4 | Pune   | Out of Stock |
|        209 | OnePlus Pad    | Tablet   | OnePlus | 35000.00 |        5 | Nashik | Available    |
+------------+----------------+----------+---------+----------+----------+--------+--------------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where category = 'Mobile' and price > 30000;
+------------+--------------+----------+---------+----------+----------+--------+-----------+
| product_id | product_name | category | brand   | price    | quantity | city   | status    |
+------------+--------------+----------+---------+----------+----------+--------+-----------+
|        201 | Galaxy M55   | Mobile   | Samsung | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15    | Mobile   | Apple   | 65000.00 |        8 | Mumbai | Available |
+------------+--------------+----------+---------+----------+----------+--------+-----------+
2 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where brand = 'Samsung' or brand = 'Apple';
+------------+----------------+----------+---------+----------+----------+--------+--------------+
| product_id | product_name   | category | brand   | price    | quantity | city   | status       |
+------------+----------------+----------+---------+----------+----------+--------+--------------+
|        201 | Galaxy M55     | Mobile   | Samsung | 32000.00 |       15 | Pune   | Available    |
|        202 | iPhone 15      | Mobile   | Apple   | 65000.00 |        8 | Mumbai | Available    |
|        206 | Galaxy Watch 6 | Watch    | Samsung | 22000.00 |        4 | Pune   | Out of Stock |
|        207 | Apple Watch SE | Watch    | Apple   | 30000.00 |       10 | Mumbai | Available    |
+------------+----------------+----------+---------+----------+----------+--------+--------------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where city = 'Pune' and status = 'Available' and quantity > 10;
+------------+--------------+----------+----------+----------+----------+------+-----------+
| product_id | product_name | category | brand    | price    | quantity | city | status    |
+------------+--------------+----------+----------+----------+----------+------+-----------+
|        201 | Galaxy M55   | Mobile   | Samsung  | 32000.00 |       15 | Pune | Available |
|        203 | Moto Edge 50 | Mobile   | Motorola | 28000.00 |       20 | Pune | Available |
|        208 | Redmi Pad    | Tablet   | Xiaomi   | 24000.00 |       18 | Pune | Available |
+------------+--------------+----------+----------+----------+----------+------+-----------+
3 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price between 25000 and 50000;
+------------+----------------+----------+----------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand    | price    | quantity | city   | status    |
+------------+----------------+----------+----------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile   | Samsung  | 32000.00 |       15 | Pune   | Available |
|        203 | Moto Edge 50   | Mobile   | Motorola | 28000.00 |       20 | Pune   | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo   | 45000.00 |       12 | Mumbai | Available |
|        207 | Apple Watch SE | Watch    | Apple    | 30000.00 |       10 | Mumbai | Available |
|        209 | OnePlus Pad    | Tablet   | OnePlus  | 35000.00 |        5 | Nashik | Available |
+------------+----------------+----------+----------+----------+----------+--------+-----------+
5 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where quantity between 5 and 15;
+------------+----------------+----------+---------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand   | price    | quantity | city   | status    |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile   | Samsung | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15      | Mobile   | Apple   | 65000.00 |        8 | Mumbai | Available |
|        204 | Inspiron 15    | Laptop   | Dell    | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo  | 45000.00 |       12 | Mumbai | Available |
|        207 | Apple Watch SE | Watch    | Apple   | 30000.00 |       10 | Mumbai | Available |
|        209 | OnePlus Pad    | Tablet   | OnePlus | 35000.00 |        5 | Nashik | Available |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
6 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where category in ('Mobile', 'Laptop', 'Tablet');
+------------+----------------+----------+----------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand    | price    | quantity | city   | status    |
+------------+----------------+----------+----------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile   | Samsung  | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15      | Mobile   | Apple    | 65000.00 |        8 | Mumbai | Available |
|        203 | Moto Edge 50   | Mobile   | Motorola | 28000.00 |       20 | Pune   | Available |
|        204 | Inspiron 15    | Laptop   | Dell     | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo   | 45000.00 |       12 | Mumbai | Available |
|        208 | Redmi Pad      | Tablet   | Xiaomi   | 24000.00 |       18 | Pune   | Available |
|        209 | OnePlus Pad    | Tablet   | OnePlus  | 35000.00 |        5 | Nashik | Available |
+------------+----------------+----------+----------+----------+----------+--------+-----------+
7 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where city in ('Pune', 'Mumbai');
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status       |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
|        201 | Galaxy M55     | Mobile      | Samsung  | 32000.00 |       15 | Pune   | Available    |
|        202 | iPhone 15      | Mobile      | Apple    | 65000.00 |        8 | Mumbai | Available    |
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available    |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |       12 | Mumbai | Available    |
|        206 | Galaxy Watch 6 | Watch       | Samsung  | 22000.00 |        4 | Pune   | Out of Stock |
|        207 | Apple Watch SE | Watch       | Apple    | 30000.00 |       10 | Mumbai | Available    |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available    |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available    |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
8 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where brand != 'Samsung';
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status    |
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
|        202 | iPhone 15      | Mobile      | Apple    | 65000.00 |        8 | Mumbai | Available |
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available |
|        204 | Inspiron 15    | Laptop      | Dell     | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |       12 | Mumbai | Available |
|        207 | Apple Watch SE | Watch       | Apple    | 30000.00 |       10 | Mumbai | Available |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available |
|        209 | OnePlus Pad    | Tablet      | OnePlus  | 35000.00 |        5 | Nashik | Available |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available |
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
8 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where status != 'Out of Stock';
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status    |
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile      | Samsung  | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15      | Mobile      | Apple    | 65000.00 |        8 | Mumbai | Available |
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available |
|        204 | Inspiron 15    | Laptop      | Dell     | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |       12 | Mumbai | Available |
|        207 | Apple Watch SE | Watch       | Apple    | 30000.00 |       10 | Mumbai | Available |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available |
|        209 | OnePlus Pad    | Tablet      | OnePlus  | 35000.00 |        5 | Nashik | Available |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available |
+------------+----------------+-------------+----------+----------+----------+--------+-----------+
9 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where price != 30000;
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
| product_id | product_name   | category    | brand    | price    | quantity | city   | status       |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
|        201 | Galaxy M55     | Mobile      | Samsung  | 32000.00 |       15 | Pune   | Available    |
|        202 | iPhone 15      | Mobile      | Apple    | 65000.00 |        8 | Mumbai | Available    |
|        203 | Moto Edge 50   | Mobile      | Motorola | 28000.00 |       20 | Pune   | Available    |
|        204 | Inspiron 15    | Laptop      | Dell     | 58000.00 |        6 | Nashik | Available    |
|        205 | IdeaPad Slim 3 | Laptop      | Lenovo   | 45000.00 |       12 | Mumbai | Available    |
|        206 | Galaxy Watch 6 | Watch       | Samsung  | 22000.00 |        4 | Pune   | Out of Stock |
|        208 | Redmi Pad      | Tablet      | Xiaomi   | 24000.00 |       18 | Pune   | Available    |
|        209 | OnePlus Pad    | Tablet      | OnePlus  | 35000.00 |        5 | Nashik | Available    |
|        210 | JBL Speaker    | Accessories | JBL      |  7000.00 |       25 | Mumbai | Available    |
+------------+----------------+-------------+----------+----------+----------+--------+--------------+
9 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where product_name like 'Galaxy%';
+------------+----------------+----------+---------+----------+----------+------+--------------+
| product_id | product_name   | category | brand   | price    | quantity | city | status       |
+------------+----------------+----------+---------+----------+----------+------+--------------+
|        201 | Galaxy M55     | Mobile   | Samsung | 32000.00 |       15 | Pune | Available    |
|        206 | Galaxy Watch 6 | Watch    | Samsung | 22000.00 |        4 | Pune | Out of Stock |
+------------+----------------+----------+---------+----------+----------+------+--------------+
2 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where product_name like '%Pad%';
+------------+----------------+----------+---------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand   | price    | quantity | city   | status    |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo  | 45000.00 |       12 | Mumbai | Available |
|        208 | Redmi Pad      | Tablet   | Xiaomi  | 24000.00 |       18 | Pune   | Available |
|        209 | OnePlus Pad    | Tablet   | OnePlus | 35000.00 |        5 | Nashik | Available |
+------------+----------------+----------+---------+----------+----------+--------+-----------+
3 rows in set (0.00 sec)

mysql>
mysql> select * from products
    -> where category = 'Mobile' and (price > 30000 or quantity > 15);
+------------+--------------+----------+----------+----------+----------+--------+-----------+
| product_id | product_name | category | brand    | price    | quantity | city   | status    |
+------------+--------------+----------+----------+----------+----------+--------+-----------+
|        201 | Galaxy M55   | Mobile   | Samsung  | 32000.00 |       15 | Pune   | Available |
|        202 | iPhone 15    | Mobile   | Apple    | 65000.00 |        8 | Mumbai | Available |
|        203 | Moto Edge 50 | Mobile   | Motorola | 28000.00 |       20 | Pune   | Available |
+------------+--------------+----------+----------+----------+----------+--------+-----------+
3 rows in set (0.00 sec)

mysql>
mysql> update products
    -> set price = 34000
    -> where product_name = 'Galaxy M55';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql> update products
    -> set quantity = 12
    -> where product_name = 'iPhone 15';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql> update products
    -> set status = 'Available'
    -> where product_name = 'Galaxy Watch 6';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql> update products
    -> set price = price + 2000
    -> where category = 'Mobile';
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql>
mysql> update products
    -> set quantity = quantity + 5
    -> where city = 'Pune';
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql>
mysql> update products
    -> set status = 'Out of Stock'
    -> where quantity < 5;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql>
mysql> delete from products
    -> where product_id = 210;
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> delete from products
    -> where price < 8000;
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> delete from products
    -> where status = 'Out of Stock' and quantity < 5;
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> delete from products
    -> where category = 'Tablet' and price > 30000;
Query OK, 1 row affected (0.01 sec)

mysql> select * from products;
+------------+----------------+----------+----------+----------+----------+--------+-----------+
| product_id | product_name   | category | brand    | price    | quantity | city   | status    |
+------------+----------------+----------+----------+----------+----------+--------+-----------+
|        201 | Galaxy M55     | Mobile   | Samsung  | 36000.00 |       20 | Pune   | Available |
|        202 | iPhone 15      | Mobile   | Apple    | 67000.00 |       12 | Mumbai | Available |
|        203 | Moto Edge 50   | Mobile   | Motorola | 30000.00 |       25 | Pune   | Available |
|        204 | Inspiron 15    | Laptop   | Dell     | 58000.00 |        6 | Nashik | Available |
|        205 | IdeaPad Slim 3 | Laptop   | Lenovo   | 45000.00 |       12 | Mumbai | Available |
|        206 | Galaxy Watch 6 | Watch    | Samsung  | 22000.00 |        9 | Pune   | Available |
|        207 | Apple Watch SE | Watch    | Apple    | 30000.00 |       10 | Mumbai | Available |
|        208 | Redmi Pad      | Tablet   | Xiaomi   | 24000.00 |       23 | Pune   | Available |
+------------+----------------+----------+----------+----------+----------+--------+-----------+
8 rows in set (0.00 sec)

mysql>