-- Create scheme mindbox
CREATE DATABASE `mindbox`;

-- Create table products
CREATE TABLE `mindbox`.`products`(
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    stamp TIMESTAMP NOT NULL DEFAULT(current_timestamp),
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create table categories
CREATE TABLE `mindbox`.`categories`(
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL,
    stamp TIMESTAMP NOT NULL DEFAULT(current_timestamp),
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create table of relationship products and categories (2NF)
CREATE TABLE `mindbox`.`products_categories`(
    product_id INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (`product_id`, `category_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Insert test data in tables
INSERT INTO `mindbox`.`products`(product_name)
VALUES('iphone'), ('android'), ('macbook'), ('ipad'), ('airpods'), ('xiaomi mi band');

INSERT INTO `mindbox`.`categories`(category_name)
VALUES('phones'), ('notebooks'), ('headphones'), ('no_products'), ('apple');

INSERT INTO `mindbox`.`products_categories`(product_id, category_id)
VALUES(1, 1), (1, 5),(2, 1), (3, 2), (3, 5), (4, 5), (5, 3), (5, 5);