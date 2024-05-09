create database chef_in;

create table receipts(
    id int primary key generated always as identity ,
    name varchar not null,
    category varchar not null,
    cooking_guide text not null,
    cooking_time int not null
);

create table ingredients(
   id int primary key generated always as identity ,
   name varchar not null ,
   unit int not null ,
   measure varchar not null,
   receipt_id int references receipts(id) on delete cascade
);

CREATE TABLE images (
   id SERIAL PRIMARY KEY,
   name VARCHAR NOT NULL,
   original_file_name VARCHAR NOT NULL,
   size BIGINT NOT NULL,
   content_type VARCHAR NOT NULL,
   bytes OID NOT NULL,
   receipt_id INT REFERENCES receipts(id)
);


INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Easiest Yeast Bread', 'Breads', 'This super crusty homemade bread recipe is going to blow your mind! The world’s easiest yeast bread that’s just like the very best artisan bread you pay top dollar for, with an incredible crispy, chewy crust.', 45);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Mapo Tofu', 'Lunch', 'Mapo tofu is a popular Chinese dish from Sichuan Province. It consists of tofu in a hot sauce, usually a thin, oily and bright red suspension based on duban, and douchi, as well as minced meat, traditionally beef.', 20);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Potato Salad', 'Breakfast', 'It was handed down from my grandma to my mom and then to me and includes their secret tips that makes it the very best potato salad recipe every single time.', 40);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Goulash', 'Dinner', 'This Ground Beef Goulash Recipe is a quick and easy one pan dinner that''s pure comfort food', 35);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Easy Stuffing', 'Dinner', 'This classic stuffing recipe will complete just about any meal! Celery, onions, and butter are tossed with dried bread cubes, then topped with broth and baked until hot and golden.', 70);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Moist lemon cake', 'Teatime', e'This moist Lemon Cake Recipe is fluffy, tangy and so easy to make from scratch! Every bite of this supremely moist pound cake is bursting with lemon flavor. If you like the Starbucks Lemon Loaf then you\'ll love this homemade lemon pound cake!
', 60);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Perfect Vanilla Cupcake', 'Teatime', 'This is the only vanilla cupcake recipe you need! They are perfectly soft, rise evenly and go well with just about any cupcake frosting. The best cupcakes!', 30);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Best Tiramisu', 'Teatime', 'Your friends and family will love my tiramisu recipe. It''s easy to make and I guarantee it will be the Best Tiramisu you''ve ever had! Can you believe that this classic dessert can be made in 30 minutes?', 30);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Scalloped Potatoes', 'Dinner', 'Scalloped Potatoes are the perfect potato casserole! Tender potatoes in a creamy onion sauce baked to golden perfection.', 105);
INSERT INTO receipts (name, category, cooking_guide, cooking_time) VALUES ('Tzatzuki Sauce', 'Breakfast', 'Creamy Greek Tztaziki Sauce recipe with cucumber, yogurt, and garlic. Add a tablespoon or two of fresh dill or mint, if you like. Do not skip draining the cucumbers or your yogurt dip will be too watery.', 10);


INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('All-Purpose Flour', 1, 'cups', 21);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Baking Powder', 1, 'teaspoons', 21);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Lemon Zest', 1, 'tablespoon', 21);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Granulated Sugar', 1, 'cup', 21);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Large Eggs', 2, 'pieces', 21);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Vanilla Extract', 1, 'teaspoon', 21);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('All-Purpose Flour', 1, 'cups', 22);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Baking Powder', 1, 'teaspoons', 22);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Large Eggs', 2, 'pieces', 22);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Pure Vanilla Extract', 2, 'teaspoons', 22);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Flour', 3, 'cups', 16);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Rapid Rise Yeast', 2, 'teaspoons', 16);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Kosher Salt', 2, 'teaspoons', 16);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Very Warm Tap Water', 1, 'cups', 16);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Flour (for dusting)', 1, 'tablespoons', 16);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Soft Tofu ', 450, ' grams', 17);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Pork', 100, ' grams ', 17);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Sesame Oil', 1, 'tablespoon', 17);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Oil', 3, 'tablespoons ', 17);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Doubanjiang ', 1, 'tablespoons ', 17);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Powder', 1, ' tablespoon', 17);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Yukon Golds', 3, 'pounds', 18);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('White Vinegar', 3, 'tablespoons', 18);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Stalks Celery', 2, 'pieces', 18);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Green Onions', 6, 'pieces', 18);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Hard-Boiled Eggs', 5, 'pieces', 18);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Yellow Mustard', 1, ' tablespoon ', 18);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Olive Oil', 1, 'tablespoon ', 19);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Onion (diced)', 1, 'cup ', 19);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Green Bell Pepper', 1, 'pieces', 19);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Ground Beef', 2, 'pounds ', 19);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Garlic', 3, 'teaspoons ', 19);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Beef Broth', 3, ' cups ', 19);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Small Yellow Onions', 2, 'pieces', 20);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Celery ', 4, 'ribs', 20);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Dry Bread Cubes', 12, 'cups', 20);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Chicken Broth', 4, 'cups', 20);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Fresh Parsley', 2, 'tablespoons', 20);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Fresh Herbs', 1, 'tablespoon', 20);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Large Egg Yolks ', 6, 'pieces', 23);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Sugar', 1, 'cup', 23);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Italian Ladyfingers', 30, 'eachs', 23);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Strong Coffee', 2, 'cups', 23);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Coffee Flavored Liqueur', 1, 'cup', 23);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Large Onion', 1, 'pieces', 24);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Garlic', 2, 'cloves', 24);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Milk', 2, 'cups', 24);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Chicken Broth', 1, 'cup', 24);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('White Potatoes', 3, 'pounds ', 24);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Kosher Salt', 1, 'teaspoon', 25);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Garlic Cloves', 5, 'pieces', 25);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('White Vinegar', 1, 'teaspoon', 25);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Early Harvest Greek Extra Virgin Olive Oil', 1, 'tablespoon', 25);
INSERT INTO ingredients (name, unit, measure, receipt_id) VALUES ('Plain Greek Yogurt', 2, 'cups', 25);



INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (13, 'image', 'Easiest Yeast Bread.jpg', 78590, 'image/jpeg', 62342, 16);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (14, 'image', 'Mapo Tofu.jpg', 62980, 'image/jpeg', 62343, 17);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (15, 'image', 'Potato Salad.jpg', 46775, 'image/jpeg', 62344, 18);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (16, 'image', 'Goulash.jpg', 60189, 'image/jpeg', 62345, 19);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (17, 'image', 'Easy Stufing.jpg', 102601, 'image/jpeg', 62346, 20);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (18, 'image', 'Moist Lemon Cake.jpg', 34159, 'image/jpeg', 62347, 21);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (19, 'image', 'Perfect Vanilla Cupcake.jpg', 38821, 'image/jpeg', 62348, 22);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (20, 'image', 'best Tiramisu.jpg', 50126, 'image/jpeg', 62349, 23);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (21, 'image', 'Scalloped Potatoes.jpg', 76504, 'image/jpeg', 62351, 24);
INSERT INTO images (id, name, original_file_name, size, content_type, bytes, receipt_id) VALUES (24, 'image', 'Tzatzuki Sause.jpg', 60308, 'image/jpeg', 62352, 25);
