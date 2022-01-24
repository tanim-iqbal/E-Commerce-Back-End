DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db;

CREATE TABLE category (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(30) NOT NULL
);

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id)
    ON DELETE CASCADE
);

CREATE TABLE  tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(100)
);

CREATE TABLE  productTag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id)
    ON DELETE SET NULL
    tag_id INT,
    FOREIGN KEY (tag_id) REFERENCES tag(id) ON DELETE SET NULL,
);