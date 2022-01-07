DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS productId_categoryId;


CREATE TABLE products (
	ProductId int,
	ProductName varchar(255),

	CONSTRAINT ProductPK PRIMARY KEY (ProductId)
);

CREATE TABLE categories (
	CategoryId int,
	CategoryName varchar(255),
	
	CONSTRAINT CategoryPK PRIMARY KEY (CategoryId)
);

CREATE TABLE productId_categoryId (
	ProductId int,
	CategoryId int,

	CONSTRAINT fk_product FOREIGN KEY (ProductId) REFERENCES products(ProductId),
	CONSTRAINT fk_category FOREIGN KEY (CategoryId) REFERENCES categories(CategoryId)
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