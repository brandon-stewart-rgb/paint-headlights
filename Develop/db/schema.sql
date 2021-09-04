-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category (
id INT NOT NULL AUTO_INCREMENT,
category_name CHARSET(30) NOT NULL,
id PRIMARY KEY
);

CREATE TABLE product (
    id INT NOT NUll AUTO_INCREMENT,
    id PRIMARY KEY,
    product_name CHARSET(30) NOT NULL,
    price DECIMAL NOT NULL,--validates that is a decimal
    stock INT NOT NULL, -- set default value to 10
    category_id FOREIGN KEY REFERENCES id
);

CREATE TABLE tag (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    tag_name CHARSET(30)

);

CREATE TABLE productTag ();