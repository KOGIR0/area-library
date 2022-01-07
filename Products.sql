CREATE TABLE products (
	ProductId int,
	ProductName varchar(255),
);

CREATE TABLE categories (
	CategoryId int,
	CategoryName varchar(255),
);

CREATE TABLE productId_categoryId (
	ProductId int,
	CategoryId int,
);

INSERT INTO products VALUES (1, 'apples');
INSERT INTO products VALUES (2, 'oranges');
INSERT INTO products VALUES (3, 'chicken');
INSERT INTO products VALUES (4, 'turkey');
INSERT INTO products VALUES (5, 'potato');

INSERT INTO categories VALUES (1, 'fruit');
INSERT INTO categories VALUES (2, 'meat');

INSERT INTO productId_categoryId VALUES (1, 1);
INSERT INTO productId_categoryId VALUES (2, 1);
INSERT INTO productId_categoryId VALUES (3, 2);
INSERT INTO productId_categoryId VALUES (4, 2);

SELECT products.ProductName, categories.CategoryName FROM products
LEFT JOIN productId_categoryId ON products.ProductId = productId_categoryId.ProductId
LEFT JOIN categories ON productId_categoryId.CategoryId = categories.CategoryId;