--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 3001

CREATE TABLE products (
id numeric PRIMARY KEY,
name varchar(50),
type char,
price numeric
);

GRANT SELECT ON products TO sql_user;

INSERT INTO products (id , name, type, price)
VALUES
(1, 'Monitor',  'B', 0),
(2, 'Headset',  'A', 0),
(3, 'PC Case',  'A', 0),
(4, 'Computer Desk', 'C', 0),
(5, 'Gaming Chair', 'C', 0),
(6, 'Mouse',  'A', 0);

/*  Execute this query to drop the tables */
-- DROP TABLE products;

select products.name,
case
    when products.type = 'A' then 20.0
    when products.type = 'B' then 70.0
    when products.type = 'C' then 530.5
end as price
from products order by products.type, products.id desc;
