# filling data

use CampusBites;

INSERT INTO School (id, name, email_suffix)
VALUES (1, 'Stanford University', '@stanford.edu'),
       (2, 'Massachusetts Institute of Technology', '@mit.edu'),
       (3, 'Harvard University', '@harvard.edu'),
       (4, 'University of California, Berkeley', '@berkeley.edu'),
       (5, 'University of Michigan', '@umich.edu'),
       (6, 'Yale University', '@yale.edu'),
       (7, 'Princeton University', '@princeton.edu'),
       (8, 'Columbia University', '@columbia.edu'),
       (9, 'University of Pennsylvania', '@upenn.edu'),
       (10, 'California Institute of Technology', '@caltech.edu'),
       (11, 'Cornell University', '@cornell.edu'),
       (12, 'University of Chicago', '@uchicago.edu'),
       (13, 'Duke University', '@duke.edu'),
       (14, 'University of Washington', '@washington.edu'),
       (15, 'University of Texas at Austin', '@utexas.edu'),
       (16, 'Georgia Institute of Technology', '@gatech.edu'),
       (17, 'University of Wisconsin–Madison', '@wisc.edu'),
       (18, 'Northwestern University', '@northwestern.edu'),
       (19, 'University of Florida', '@ufl.edu'),
       (20, 'University of Southern California', '@usc.edu'),
       (21, 'SUNY New Paltz', '@newpaltz.edu'),
       (22, 'The Culinary Institute of America (CIA)', '@culinary.edu');


-- New Paltz Restaurants
INSERT INTO Restaurant (id, school_id, name, campus_location)
VALUES (1, 21, 'Peregrine Dining', 'Peregrine Dining Hall'),
       (2, 21, 'Pomodoro''s', 'Student Union Building (SUB)'),
       (3, 21, 'Hissho Sushi', 'Student Union Building (SUB)'),
       (4, 21, 'Atrium Brew', 'Student Union Building (SUB)'),
       (5, 21, 'SubConnection', 'Student Union Building (SUB)'),
       (6, 21, 'The Nest', 'Student Union Building (SUB)'),
       (7, 21, 'World of Wings', 'Student Union Building (SUB)'),
       (8, 21, 'Sweets & Treats Bakery', 'Peregrine Dining Hall / Student Union Bakery'),
       (9, 21, 'Starbucks (SUB)', 'Student Union Building (SUB)'),
       (10, 21, 'Hugo''s Fresh Nest', 'Student Union Building (SUB)'),
       (11, 21, 'Element 93', 'Wooster Hall - Lower Level'),
       (12, 21, 'Yadi''s Empanadas', 'Student Union Building (SUB)'),
       (13, 21, 'The Roost at Ridgeview', 'Ridgeview Hall - Convenience Store'),
       (14, 21, 'The Terrace', 'College Terrace'),
       (15, 21, 'Nester''s Marketplace', 'Student Union Building (SUB)');

-- General Tags
INSERT INTO Tag (tag_name)
VALUES
-- Main types / categories (primary tags)
('Pizza'),
('Burger'),
('Sushi'),
('Salad'),
('Sandwich'),
('Pasta'),
('Soup'),
('Dessert'),
('Snack'),
('Beverage'),
('Vegetable'),
('Seafood'),
('Chicken'),
('Beef'),
-- Dietary preferences
('Vegetarian'),
('Vegan'),
('Pescatarian'),
('Gluten-Free'),
('Dairy-Free'),
('Nut-Free'),
('Keto'),
('Low-Carb'),
('High-Protein'),
('Low-Fat'),
('Low-Sodium'),
-- Flavor / spiciness
('Spicy'),
('Mild'),
('Sweet'),
('Savory'),
('Sour'),
('Umami'),
('Bitter'),
('Tangy'),
('Smoky'),
-- Cuisine tags
('Italian'),
('Chinese'),
('Japanese'),
('Mexican'),
('Indian'),
('Mediterranean'),
('Middle Eastern'),
('American'),
('French'),
('Fusion'),
-- Special interest / other
('Organic'),
('Local'),
('Sustainable'),
('Comfort'),
('Quick'),
('Seasonal');

-- Tags more specific to Hissho Sushi
-- Primary types
INSERT INTO Tag (tag_name)
VALUES ('Roll'),
       ('Poke Bowl'),
       ('Nigiri'),
       ('Sashimi');
-- Ingredients
INSERT INTO Tag (tag_name)
VALUES ('Imitation Crab'),
       ('California Roll'),
       ('Shrimp'),
       ('Salmon'),
       ('Tuna'),
       ('Yellowtail'),
       ('Avocado'),
       ('Cucumber'),
       ('Carrot'),
       ('Cream Cheese'),
       ('Seaweed Salad'),
       ('Ponzu Sauce'),
       ('Chili Oil'),
       ('Masago'),
       ('Sesame Seeds'),
       ('Fried Onions'),
       ('Mango'),
       ('Jalapeño'),
       ('Spicy Mayo'),
       ('Japanese BBQ Sauce'),
       ('Tempura Crunch'),
       ('Sriracha Peas'),
       ('Lime'),
       ('Lettuce'),
       ('Seaweed'),
       ('Dumplings'),
       ('Pork');
-- Cuisine
INSERT INTO Tag (tag_name)
VALUES ('Asian');
-- Preparation styles
INSERT INTO Tag (tag_name)
VALUES ('Raw'),
       ('Cooked'),
       ('Tempura'),
       ('Grilled'),
       ('Steamed');

insert into tag (tag_name)
values ('Scallions');

insert into tag (tag_name)
values ('Cilantro');

insert into tag (tag_name)
values ('Squid');

-- Allergens
INSERT INTO Allergen (name)
VALUES ('Peanuts'),
       ('Tree Nuts'),
       ('Dairy'),
       ('Eggs'),
       ('Gluten'),
       ('Shellfish'),
       ('Fish'),
       ('Soy'),
       ('Wheat'),
       ('Sesame'),
       ('Mustard'),
       ('Sulphites'),
       ('Allium');
-- garlic, onions, etc.


-- MenuItem inserts for Hissho Sushi
INSERT INTO MenuItem (restaurant_id, name, description, price)
VALUES (3, 'Spicy California Roll', 'Spicy imitation crab, avocado, and cucumber wrapped in rice and nori.', 7.49),
       (3, 'California Roll', 'Imitation crab, avocado, and cucumber wrapped in rice and nori.', 6.49),
       (3, 'Dynamite Roll',
        'Spicy cooked shrimp, tuna, or salmon, imitation crab, and avocado wrapped in rice and nori.', 7.99),
       (3, 'Nippon Favorite', 'Cooked shrimp, tuna, or salmon wrapped in rice and nori.', 6.99),
       (3, 'Spicy Roll', 'Spicy cooked shrimp, tuna, or salmon with cucumber wrapped in rice and nori.', 7.49),
       (3, 'Sushicado', 'Cooked shrimp, tuna, or salmon with avocado wrapped in rice and nori.', 7.49),
       (3, 'Spicy Pepper Roll', 'Roasted red peppers, cucumber, avocado, and spicy mayo wrapped in rice and nori.',
        7.99),
       (3, 'Veggie Roll', 'Avocado, carrot, and cucumber wrapped in rice and nori.', 6.49),
       (3, 'Crunchy Shrimp Roll',
        'Spicy cooked shrimp and cucumber topped with tempura crunch, Japanese BBQ sauce, and spicy mayo.', 7.99),
       (3, 'Krispy Krab',
        'Spicy imitation crab, cucumber, and avocado topped with spicy mayo, Japanese BBQ sauce, and fried onions.',
        7.49),
       (3, 'Living Color Roll', 'California roll topped with fish slices and cooked shrimp.', 8.99),
       (3, 'Nagano Special', 'Nigiri with cooked shrimp, tuna, or salmon.', 9.99),
       (3, 'Outer Banks Roll',
        'Tuna, salmon, optional yellowtail, and avocado topped with sesame seeds, sriracha sauce, and spicy mayo.',
        9.99),
       (3, 'Rising Sun Roll',
        'Tempura shrimp, avocado, and cucumber topped with slices of tuna, salmon, diced jalapeños, and spicy mayo.',
        10.99),
       (3, 'Veggie TNT Roll',
        'Roasted red bell pepper, avocado, cucumber, and jalapeño topped with spicy mayo and scallions.', 8.99),
       (3, 'Salmon Lover', 'Spicy salmon, avocado, and cream cheese topped with salmon slices, scallions, and mayo.',
        9.99),
       (3, 'Sriracha Party',
        'Spicy tuna, imitation crab, and cucumber topped with sriracha peas, Japanese BBQ sauce, and spicy mayo.',
        8.99),
       (3, 'Sunset Roll',
        'Spicy imitation crab, cucumber, and avocado topped with spicy diced tuna and salmon mixture, masago, and scallions.',
        9.99),
       (3, 'Tempura Shrimp Roll',
        'Tempura shrimp, avocado, and cucumber topped with spicy mayo, Japanese BBQ sauce, tempura crunch, and sesame seeds.',
        8.99),
       (3, 'TNT', 'Dynamite roll topped with spicy shrimp, tuna, or salmon.', 9.99),
       (3, 'Wasabi Crunch', 'Wasabi shrimp, avocado, and cucumber topped with wasabi peas and wasabi mayo.', 9.99),
       (3, 'Hissho Spicy Combo', 'Sriracha Party, Krispy Krab, and TNT.', 12.99),
       (3, 'Special Cooked Combo', 'Krispy Krab, Tempura Shrimp Roll, or Wasabi Crunch.', 9.99),
       (3, 'Maui Bento', 'Chef’s choice sushi sampler lunch box with seaweed salad and chef’s choice nigiri.', 11.99),
       (3, 'Classic Hawaiian Poke',
        'Tuna cubes mixed with seaweed salad, chopped onion, cilantro, scallions, ponzu sauce, and chili oil. Served with carrot, lettuce, lime, and sushi rice.',
        10.99),
       (3, 'Mango Salmon Poke',
        'Salmon and mango cubes mixed with masago, scallion, cilantro, sweet chili sauce, and ponzu sauce. Served with sesame seeds, lettuce, lime, and sushi rice.',
        11.99),
       (3, 'Blazing Dragon Poke',
        'Spicy shrimp and spicy crab mixed with sriracha sauce, chili oil, cayenne pepper, ponzu sauce, Japanese BBQ sauce, and scallion. Served with sesame seeds, lettuce, lime, and sushi rice.',
        12.99),
       (3, 'Edamame', 'Steamed edamame pods.', 3.99),
       (3, 'Spring Roll', 'Lettuce, cucumber, carrot, avocado, cooked shrimp, and imitation crab.', 6.99),
       (3, 'Seaweed Salad', 'Fresh seaweed salad with sesame.', 4.49),
       (3, 'Squid Salad', 'Prepared squid salad.', 4.99),
       (3, 'Gyoza', 'Dumplings: chicken, vegetable, or pork.', 4.99);

-- Hissho Sushi MenuItemTag inserts
-- 1. Spicy California Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (1, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Spicy'), FALSE),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Sesame Seeds'), FALSE),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 2. California Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (2, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Sesame Seeds'), FALSE),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 3. Dynamite Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (3, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Spicy'), FALSE),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Sesame Seeds'), FALSE),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 4. Nippon Favorite
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (4, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (4, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (4, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (4, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (4, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 5. Spicy Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (5, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Spicy'), FALSE),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 6. Sushicado
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (6, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 7. Spicy Pepper Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (7, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Jalapeño'), FALSE),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 8. Veggie Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (8, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Carrot'), FALSE),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Vegetarian'), FALSE),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Vegan'), FALSE),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 9. Crunchy Shrimp Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (9, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Tempura'), FALSE),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Tempura Crunch'), FALSE),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 10. Krispy Krab
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (10, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Japanese BBQ Sauce'), FALSE),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Fried Onions'), FALSE),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 11. Living Color Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (11, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (11, (SELECT id FROM Tag WHERE tag_name = 'California Roll'), FALSE),
       (11, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (11, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (11, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (11, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 12. Nagano Special
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (12, (SELECT id FROM Tag WHERE tag_name = 'Nigiri'), TRUE),
       (12, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (12, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (12, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (12, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 13. Outer Banks Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (13, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Yellowtail'), FALSE),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Sesame Seeds'), FALSE),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Sriracha Peas'), FALSE),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 14. Rising Sun Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (14, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Tempura'), FALSE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Jalapeño'), FALSE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 15. Veggie TNT Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (15, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Carrot'), FALSE),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Jalapeño'), FALSE),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Scallions'), FALSE),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Vegetarian'), FALSE),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Vegan'), FALSE),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 16. Salmon Lover
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (16, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Spicy'), FALSE),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Cream Cheese'), FALSE),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Scallions'), FALSE),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 17. Sriracha Party
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (17, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Sriracha Peas'), FALSE),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Japanese BBQ Sauce'), FALSE),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 18. Sunset Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (18, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Masago'), FALSE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Scallions'), FALSE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 19. Tempura Shrimp Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (19, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Tempura'), FALSE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Tempura Crunch'), FALSE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Japanese BBQ Sauce'), FALSE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Sesame Seeds'), FALSE),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 20. TNT
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (20, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Spicy'), FALSE),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 21. Wasabi Crunch
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (21, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (21, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (21, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (21, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (21, (SELECT id FROM Tag WHERE tag_name = 'Spicy Mayo'), FALSE),
       (21, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 22. Hissho Spicy Combo
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (22, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (22, (SELECT id FROM Tag WHERE tag_name = 'Spicy'), FALSE),
       (22, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 23. Special Cooked Combo
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (23, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (23, (SELECT id FROM Tag WHERE tag_name = 'Cooked'), FALSE),
       (23, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 24. Maui Bento
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (24, (SELECT id FROM Tag WHERE tag_name = 'Sushi'), TRUE),
       (24, (SELECT id FROM Tag WHERE tag_name = 'Seaweed Salad'), FALSE),
       (24, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 25. Classic Hawaiian Poke
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (25, (SELECT id FROM Tag WHERE tag_name = 'Poke Bowl'), TRUE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Tuna'), FALSE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Seaweed Salad'), FALSE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Ponzu Sauce'), FALSE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Chili Oil'), FALSE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Carrot'), FALSE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Lettuce'), FALSE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Lime'), FALSE),
       (25, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 26. Mango Salmon Poke
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (26, (SELECT id FROM Tag WHERE tag_name = 'Poke Bowl'), TRUE),
       (26, (SELECT id FROM Tag WHERE tag_name = 'Salmon'), FALSE),
       (26, (SELECT id FROM Tag WHERE tag_name = 'Mango'), FALSE),
       (26, (SELECT id FROM Tag WHERE tag_name = 'Masago'), FALSE),
       (26, (SELECT id FROM Tag WHERE tag_name = 'Scallions'), FALSE),
       (26, (SELECT id FROM Tag WHERE tag_name = 'Cilantro'), FALSE),
       (26, (SELECT id FROM Tag WHERE tag_name = 'Ponzu Sauce'), FALSE),
       (26, (SELECT id FROM Tag WHERE tag_name = 'Sweet'), FALSE),
       (26, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 27. Blazing Dragon Poke
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (27, (SELECT id FROM Tag WHERE tag_name = 'Poke Bowl'), TRUE),
       (27, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (27, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (27, (SELECT id FROM Tag WHERE tag_name = 'Spicy'), FALSE),
       (27, (SELECT id FROM Tag WHERE tag_name = 'Chili Oil'), FALSE),
       (27, (SELECT id FROM Tag WHERE tag_name = 'Ponzu Sauce'), FALSE),
       (27, (SELECT id FROM Tag WHERE tag_name = 'Japanese BBQ Sauce'), FALSE),
       (27, (SELECT id FROM Tag WHERE tag_name = 'Scallions'), FALSE),
       (27, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 28. Edamame
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (28, (SELECT id FROM Tag WHERE tag_name = 'Vegetable'), TRUE),
       (28, (SELECT id FROM Tag WHERE tag_name = 'Steamed'), FALSE),
       (28, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 29. Spring Roll
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (29, (SELECT id FROM Tag WHERE tag_name = 'Roll'), TRUE),
       (29, (SELECT id FROM Tag WHERE tag_name = 'Lettuce'), FALSE),
       (29, (SELECT id FROM Tag WHERE tag_name = 'Cucumber'), FALSE),
       (29, (SELECT id FROM Tag WHERE tag_name = 'Carrot'), FALSE),
       (29, (SELECT id FROM Tag WHERE tag_name = 'Avocado'), FALSE),
       (29, (SELECT id FROM Tag WHERE tag_name = 'Shrimp'), FALSE),
       (29, (SELECT id FROM Tag WHERE tag_name = 'Imitation Crab'), FALSE),
       (29, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 30. Seaweed Salad
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (30, (SELECT id FROM Tag WHERE tag_name = 'Vegetable'), TRUE),
       (30, (SELECT id FROM Tag WHERE tag_name = 'Seaweed Salad'), FALSE),
       (30, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 31. Squid Salad
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (31, (SELECT id FROM Tag WHERE tag_name = 'Seafood'), TRUE),
       (31, (SELECT id FROM Tag WHERE tag_name = 'Squid'), FALSE),
       (31, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- 32. Gyoza
INSERT INTO MenuItemTag (menu_item_id, tag_id, is_primary)
VALUES (32, (SELECT id FROM Tag WHERE tag_name = 'Snack'), TRUE),
       (32, (SELECT id FROM Tag WHERE tag_name = 'Dumplings'), FALSE),
       (32, (SELECT id FROM Tag WHERE tag_name = 'Pork'), FALSE),
       (32, (SELECT id FROM Tag WHERE tag_name = 'Chicken'), FALSE),
       (32, (SELECT id FROM Tag WHERE tag_name = 'Vegetable'), FALSE),
       (32, (SELECT id FROM Tag WHERE tag_name = 'Japanese'), FALSE);

-- Hissho Sushi MenuItemAllergen Inserts
INSERT INTO MenuItemAllergen (menu_item_id, allergen_id)
VALUES (1, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (1, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (2, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (2, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (3, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (3, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (3, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (3, (SELECT id FROM Allergen WHERE name = 'Fish')),
       (4, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (4, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (5, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (5, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (5, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (6, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (6, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (6, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (7, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (7, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (8, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (9, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (9, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (10, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (10, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (10, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (11, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (12, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (12, (SELECT id FROM Allergen WHERE name = 'Fish')),
       (13, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (13, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (13, (SELECT id FROM Allergen WHERE name = 'Fish')),
       (14, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (14, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (14, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (15, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (15, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (16, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (16, (SELECT id FROM Allergen WHERE name = 'Dairy')),
       (17, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (17, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (18, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (18, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (19, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (19, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (20, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (20, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (20, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (21, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (21, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (22, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (22, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (23, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (23, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (24, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (25, (SELECT id FROM Allergen WHERE name = 'Fish')),
       (25, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (26, (SELECT id FROM Allergen WHERE name = 'Fish')),
       (27, (SELECT id FROM Allergen WHERE name = 'Fish')),
       (27, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (28, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (29, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (29, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (30, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (31, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (32, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (32, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (32, (SELECT id FROM Allergen WHERE name = 'Eggs'));


# users
INSERT INTO User (username, password, email, school_id)
VALUES ('jdoe', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'jdoe@newpaltz.edu', 21),
       ('asmith', '$2b$12$C6UzMDM.H6dfI/f/IKcEe.Eeqc8ZoG8Zt8R8rjZp0gY3Q0P/Gui2.', 'asmith@newpaltz.edu', 21),
       ('mrivera', '$2b$12$8pAhtq3aIZy5Wl9kUu7p0usq84H7C9ZrjY5yEylZf6CqWmGz8jZ1G', 'mrivera@newpaltz.edu', 21),
       ('kpatel', '$2b$12$WIXHlNfP2bdBOx2p5xHZKOdL2T0PyQ9cF0V7GmZfJ3uj.TQa7U5A2', 'kpatel@newpaltz.edu', 21),
       ('lchen', '$2b$12$6VdE4nUJ9Pk6N.3yxOe2c.OChXGf0L4lQt3i4sk8sNfutZQ.DSbAm', 'lchen@newpaltz.edu', 21);

# more users (passwords are bcrypt placeholders)
INSERT INTO User (username, password, email, school_id)
VALUES ('bthompson', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'bthompson@newpaltz.edu', 21),
       ('cwilson', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'cwilson@newpaltz.edu', 21),
       ('dlee', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'dlee@newpaltz.edu', 21),
       ('eroberts', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'eroberts@newpaltz.edu', 21),
       ('fnguyen', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'fnguyen@newpaltz.edu', 21),
       ('gmartin', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'gmartin@newpaltz.edu', 21),
       ('hkim', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'hkim@newpaltz.edu', 21),
       ('ijackson', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'ijackson@newpaltz.edu', 21),
       ('jgarcia', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'jgarcia@newpaltz.edu', 21),
       ('kmurphy', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'kmurphy@newpaltz.edu', 21),
       ('lrodriguez', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'lrodriguez@newpaltz.edu', 21),
       ('mperez', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'mperez@newpaltz.edu', 21),
       ('nallen', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'nallen@newpaltz.edu', 21),
       ('opatel', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'opatel@newpaltz.edu', 21),
       ('qwright', '$2b$12$N9qo8uLOickgx2ZMRZo4i.ez7QWZ3jG6x9Y0z7P1a0Q5J7JqzWQMO', 'qwright@newpaltz.edu', 21);

-- User Tag Inserts
-- User 1
INSERT INTO UserTag (user_id, tag_id)
VALUES (1, (SELECT id FROM Tag WHERE tag_name = 'Vegetarian')),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Gluten-Free')),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Low-Fat')),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Salad')),
       (1, (SELECT id FROM Tag WHERE tag_name = 'Italian'));

-- User 2
INSERT INTO UserTag (user_id, tag_id)
VALUES (2, (SELECT id FROM Tag WHERE tag_name = 'Vegan')),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Low-Sodium')),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Spicy')),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Asian')),
       (2, (SELECT id FROM Tag WHERE tag_name = 'Snack'));

-- User 3
INSERT INTO UserTag (user_id, tag_id)
VALUES (3, (SELECT id FROM Tag WHERE tag_name = 'Sushi')),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Seafood')),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Japanese')),
       (3, (SELECT id FROM Tag WHERE tag_name = 'Umami')),
       (3, (SELECT id FROM Tag WHERE tag_name = 'High-Protein'));

-- User 4
INSERT INTO UserTag (user_id, tag_id)
VALUES (4, (SELECT id FROM Tag WHERE tag_name = 'Pescatarian')),
       (4, (SELECT id FROM Tag WHERE tag_name = 'Spicy')),
       (4, (SELECT id FROM Tag WHERE tag_name = 'Seafood')),
       (4, (SELECT id FROM Tag WHERE tag_name = 'Low-Carb')),
       (4, (SELECT id FROM Tag WHERE tag_name = 'Asian'));

-- User 5
INSERT INTO UserTag (user_id, tag_id)
VALUES (5, (SELECT id FROM Tag WHERE tag_name = 'Low-Carb')),
       (5, (SELECT id FROM Tag WHERE tag_name = 'High-Protein')),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Keto')),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Chicken')),
       (5, (SELECT id FROM Tag WHERE tag_name = 'Savory'));

-- User 6
INSERT INTO UserTag (user_id, tag_id)
VALUES (6, (SELECT id FROM Tag WHERE tag_name = 'Sweet')),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Dessert')),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Comfort')),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Snack')),
       (6, (SELECT id FROM Tag WHERE tag_name = 'Beverage'));

-- User 7
INSERT INTO UserTag (user_id, tag_id)
VALUES (7, (SELECT id FROM Tag WHERE tag_name = 'Pizza')),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Beef')),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Italian')),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Savory')),
       (7, (SELECT id FROM Tag WHERE tag_name = 'Vegetarian'));

-- User 8
INSERT INTO UserTag (user_id, tag_id)
VALUES (8, (SELECT id FROM Tag WHERE tag_name = 'Spicy')),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Asian')),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Chicken')),
       (8, (SELECT id FROM Tag WHERE tag_name = 'Gluten-Free')),
       (8, (SELECT id FROM Tag WHERE tag_name = 'High-Protein'));

-- User 9
INSERT INTO UserTag (user_id, tag_id)
VALUES (9, (SELECT id FROM Tag WHERE tag_name = 'Vegetarian')),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Sushi')),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Salad')),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Dairy-Free')),
       (9, (SELECT id FROM Tag WHERE tag_name = 'Seaweed Salad'));

-- User 10
INSERT INTO UserTag (user_id, tag_id)
VALUES (10, (SELECT id FROM Tag WHERE tag_name = 'Keto')),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Low-Fat')),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Chicken')),
       (10, (SELECT id FROM Tag WHERE tag_name = 'High-Protein')),
       (10, (SELECT id FROM Tag WHERE tag_name = 'Savory'));

-- User 11
INSERT INTO UserTag (user_id, tag_id)
VALUES (11, (SELECT id FROM Tag WHERE tag_name = 'Burger')),
       (11, (SELECT id FROM Tag WHERE tag_name = 'Beef')),
       (11, (SELECT id FROM Tag WHERE tag_name = 'American')),
       (11, (SELECT id FROM Tag WHERE tag_name = 'Comfort')),
       (11, (SELECT id FROM Tag WHERE tag_name = 'Quick'));

-- User 12
INSERT INTO UserTag (user_id, tag_id)
VALUES (12, (SELECT id FROM Tag WHERE tag_name = 'Gluten-Free')),
       (12, (SELECT id FROM Tag WHERE tag_name = 'Vegan')),
       (12, (SELECT id FROM Tag WHERE tag_name = 'Salad')),
       (12, (SELECT id FROM Tag WHERE tag_name = 'Vegetable')),
       (12, (SELECT id FROM Tag WHERE tag_name = 'Organic'));

-- User 13
INSERT INTO UserTag (user_id, tag_id)
VALUES (13, (SELECT id FROM Tag WHERE tag_name = 'Vegan')),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Organic')),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Gluten-Free')),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Low-Sodium')),
       (13, (SELECT id FROM Tag WHERE tag_name = 'Salad'));

-- User 14
INSERT INTO UserTag (user_id, tag_id)
VALUES (14, (SELECT id FROM Tag WHERE tag_name = 'Low-Sodium')),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Vegetable')),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Gluten-Free')),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Vegan')),
       (14, (SELECT id FROM Tag WHERE tag_name = 'Salad'));

-- User 15
INSERT INTO UserTag (user_id, tag_id)
VALUES (15, (SELECT id FROM Tag WHERE tag_name = 'Sweet')),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Dessert')),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Snack')),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Beverage')),
       (15, (SELECT id FROM Tag WHERE tag_name = 'Comfort'));

-- Users 16–20
INSERT INTO UserTag (user_id, tag_id)
VALUES (16, (SELECT id FROM Tag WHERE tag_name = 'Vegetarian')),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Salad')),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Vegan')),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Low-Fat')),
       (16, (SELECT id FROM Tag WHERE tag_name = 'Gluten-Free')),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Dairy-Free')),
       (17, (SELECT id FROM Tag WHERE tag_name = 'High-Protein')),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Chicken')),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Savory')),
       (17, (SELECT id FROM Tag WHERE tag_name = 'Asian')),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Low-Fat')),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Vegetable')),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Keto')),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Low-Carb')),
       (18, (SELECT id FROM Tag WHERE tag_name = 'Snack')),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Spicy')),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Asian')),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Chicken')),
       (19, (SELECT id FROM Tag WHERE tag_name = 'High-Protein')),
       (19, (SELECT id FROM Tag WHERE tag_name = 'Fusion')),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Vegan')),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Organic')),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Vegetable')),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Gluten-Free')),
       (20, (SELECT id FROM Tag WHERE tag_name = 'Low-Sodium'));


-- User Allergen inserts
-- User 1: Dairy & Gluten
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (1, (SELECT id FROM Allergen WHERE name = 'Dairy')),
       (1, (SELECT id FROM Allergen WHERE name = 'Gluten'));

-- User 2: Peanuts
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (2, (SELECT id FROM Allergen WHERE name = 'Peanuts'));

-- User 3: None

-- User 4: Shellfish
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (4, (SELECT id FROM Allergen WHERE name = 'Shellfish'));

-- User 5: None

-- User 6: Soy & Eggs
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (6, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (6, (SELECT id FROM Allergen WHERE name = 'Eggs'));

-- User 7: Gluten & Dairy
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (7, (SELECT id FROM Allergen WHERE name = 'Gluten')),
       (7, (SELECT id FROM Allergen WHERE name = 'Dairy'));

-- User 8: None
-- User 9: Tree Nuts
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (9, (SELECT id FROM Allergen WHERE name = 'Tree Nuts'));

-- User 10: Eggs
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (10, (SELECT id FROM Allergen WHERE name = 'Eggs'));

-- User 11: None
-- User 12: Soy & Sesame
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (12, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (12, (SELECT id FROM Allergen WHERE name = 'Sesame'));

-- User 13: Gluten
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (13, (SELECT id FROM Allergen WHERE name = 'Gluten'));

-- User 14: Peanuts
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (14, (SELECT id FROM Allergen WHERE name = 'Peanuts'));

-- Users 15-20: random
INSERT INTO UserAllergen (user_id, allergen_id)
VALUES (15, (SELECT id FROM Allergen WHERE name = 'Dairy')),
       (16, (SELECT id FROM Allergen WHERE name = 'Shellfish')),
       (17, (SELECT id FROM Allergen WHERE name = 'Eggs')),
       (18, (SELECT id FROM Allergen WHERE name = 'Tree Nuts')),
       (19, (SELECT id FROM Allergen WHERE name = 'Soy')),
       (20, (SELECT id FROM Allergen WHERE name = 'Gluten'));


-- UserLikedRestaurant inserts
-- Randomly liking Hissho Sushi
INSERT INTO UserLikedRestaurant (user_id, restaurant_id)
VALUES (1, 3),
       (2, 3),
       (3, 3),
       (4, 3),
       (5, 3),
       (7, 3),
       (8, 3),
       (10, 3),
       (12, 3),
       (15, 3),
       (16, 3),
       (18, 3),
       (20, 3);

-- Assigning random menu items (menu_item_id 1–20) for each user
INSERT INTO UserLikedMenuItem (user_id, menu_item_id)
VALUES
-- User 1
(1, 1),
(1, 3),
(1, 5),
(1, 7),
(1, 9),
-- User 2
(2, 2),
(2, 4),
(2, 6),
(2, 8),
(2, 10),
-- User 3
(3, 1),
(3, 4),
(3, 7),
(3, 10),
(3, 12),
-- User 4
(4, 3),
(4, 5),
(4, 8),
(4, 11),
(4, 14),
-- User 5
(5, 2),
(5, 6),
(5, 9),
(5, 13),
(5, 15),
-- User 7
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
-- User 8
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
-- User 10
(10, 11),
(10, 12),
(10, 13),
(10, 14),
(10, 15),
-- User 12
(12, 1),
(12, 3),
(12, 5),
(12, 7),
(12, 9),
-- User 15
(15, 2),
(15, 4),
(15, 6),
(15, 8),
(15, 10),
-- User 16
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
-- User 18
(18, 6),
(18, 7),
(18, 8),
(18, 9),
(18, 10),
-- User 20
(20, 11),
(20, 12),
(20, 13),
(20, 14),
(20, 15);

# restaurant reviews
INSERT INTO RestaurantReview (user_id, restaurant_id, rating, review)
VALUES (1, 3, 4.5, 'Great sushi selection, especially the rolls. Friendly staff!'),
       (3, 3, 5.0, 'Absolutely love the poke bowls here. Fresh and tasty.'),
       (5, 3, 3.5, 'Good food, but the wait can be long during lunch.'),
       (8, 3, 4.0, 'Nice variety of sushi and appetizers. Always fresh.'),
       (12, 3, 4.5, 'Perfect spot for a quick sushi lunch. Really enjoyed the nigiri.');

# menu item reviews
INSERT INTO MenuItemReview (user_id, menu_item_id, rating, review)
VALUES (1, 1, 5.0, 'California Roll is perfect, creamy avocado and fresh crab.'),
       (1, 3, 4.5, 'Spicy Tuna Roll was great, but could use a little more heat.'),
       (2, 2, 4.0, 'Salmon Nigiri was fresh and tasty.'),
       (3, 5, 5.0, 'Tempura Shrimp Roll was crunchy and delicious.'),
       (4, 7, 3.5, 'Vegetable Roll was decent, not much flavor though.'),
       (5, 6, 4.0, 'Dragon Roll is amazing, presentation is perfect.'),
       (8, 8, 4.5, 'Rainbow Roll is visually stunning and tastes as good as it looks.'),
       (8, 10, 4.0, 'Spicy Salmon Roll has a nice kick.'),
       (12, 12, 5.0, 'Poke Bowl with tuna was fresh and flavorful.'),
       (12, 14, 4.5, 'Shrimp Nigiri was well-prepared, very satisfying.'),
       (3, 9, 3.5, 'Avocado Roll is okay, nothing special.'),
       (5, 11, 4.0, 'Sashimi platter is fresh, worth ordering.');









