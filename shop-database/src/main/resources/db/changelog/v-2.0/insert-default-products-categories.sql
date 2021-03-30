INSERT INTO `products` (`title`, `description`, `price`)
    VALUE   ('product1', 'product1', '150'),
        ('product2', 'product2', '200'),
        ('product3', 'product3', '175'),
        ('product4', 'product4', '125');
GO

INSERT INTO `categories` (`title`)
VALUE ('category1'), ('category2');
GO

INSERT INTO `products_categories`(`product_id`, `category_id`)
SELECT (SELECT id FROM `products` WHERE `title` = 'product1'), (SELECT id FROM `categories` WHERE `title` = 'category1')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'product2'), (SELECT id FROM `categories` WHERE `title` = 'category1')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'product3'), (SELECT id FROM `categories` WHERE `title` = 'category2')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'product4'), (SELECT id FROM `categories` WHERE `title` = 'category2');
GO
