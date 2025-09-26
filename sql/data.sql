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


INSERT INTO Cuisine (id, type)
VALUES (1, 'American'),
       (2, 'BBQ'),
       (3, 'Breakfast/Brunch'),
       (4, 'Burger'),
       (5, 'Cajun/Creole'),
       (6, 'Chinese'),
       (7, 'Dim Sum'),
       (8, 'Japanese'),
       (9, 'Sushi'),
       (10, 'Korean'),
       (11, 'Thai'),
       (12, 'Vietnamese'),
       (13, 'Indian'),
       (14, 'Pakistani'),
       (15, 'Middle Eastern'),
       (16, 'Mediterranean'),
       (17, 'Greek'),
       (18, 'Turkish'),
       (19, 'Italian'),
       (20, 'Pizza'),
       (21, 'French'),
       (22, 'Spanish'),
       (23, 'Tapas'),
       (24, 'Mexican'),
       (25, 'Tex-Mex'),
       (26, 'Latin American'),
       (27, 'Brazilian'),
       (28, 'Caribbean'),
       (29, 'African'),
       (30, 'Ethiopian'),
       (31, 'Moroccan'),
       (32, 'Seafood'),
       (33, 'Vegetarian'),
       (34, 'Vegan'),
       (35, 'Gluten-Free'),
       (36, 'Fusion'),
       (37, 'Fast Food'),
       (38, 'Sandwiches'),
       (39, 'Steakhouse'),
       (40, 'Pub Food'),
       (41, 'Desserts'),
       (42, 'Coffee/Tea'),
       (43, 'Other');


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

-- Restaurants at The Culinary Institute of America (CIA), Hyde Park, NY
INSERT INTO Restaurant (id, school_id, name, campus_location)
VALUES (16, 22, 'American Bounty Restaurant', 'Roth Hall'),
       (17, 22, 'Bocuse Restaurant', 'Roth Hall'),
       (18, 22, 'Ristorante Caterina de\' Medici', 'Colavita Center for Italian Food and Wine'),
       (19, 22, 'Apple Pie Bakery Café', 'Roth Hall'),
       (20, 22, 'The Egg', 'Tim Ryan Student Commons');


-- New Paltz Restaurants and their Cuisines
INSERT INTO RestaurantCuisine (restaurant_id, cuisine_id)
VALUES
-- Peregrine (rotating stations: general American / deli / pizza / bakery)
(1, 1),   -- American
(1, 20),  -- Pizza
(1, 41),  -- Desserts / Bakery

-- Pomodoro's (pizza + Italian-style pasta bowls)
(2, 20),  -- Pizza
(2, 19),  -- Italian

-- Hissho Sushi
(3, 9),   -- Sushi
(3, 8),   -- Japanese

-- Atrium Brew (coffee shop / cafe)
(4, 42),  -- Coffee/Tea
(4, 41),  -- Desserts (pastries)

-- SubConnection (subs / sandwiches)
(5, 38),  -- Sandwiches
(5, 37),  -- Fast Food / Quick Service

-- The Nest / Nester's Marketplace (grab-and-go, deli & marketplace)
(6, 3),   -- Breakfast/Brunch (The Nest offers breakfast-style items)
(6, 38),  -- Sandwiches
(15, 38), -- Nester's Marketplace - Sandwiches / Grab-and-go

-- World of Wings (WOW)
(7, 2),   -- BBQ / Wings
(7, 1),   -- American (wing joint / casual food)

-- Sweets & Treats Bakery
(8, 41),  -- Desserts / Bakery
(8, 42),  -- Coffee/Tea (paired offerings)

-- Starbucks (campus)
(9, 42),  -- Coffee/Tea
(9, 38),  -- Sandwiches (grab-and-go)

-- Hugo's Fresh Nest (salads / smoothies / healthy bowls)
(10, 33), -- Vegetarian
(10, 34), -- Vegan

-- Element 93 (campus cafe / breakfast & lunch)
(11, 3),  -- Breakfast/Brunch
(11, 42), -- Coffee/Tea

-- Yadi's Empanadas
(12, 26), -- Latin American
(12, 41), -- Desserts (some empanada-sweet options may appear)

-- The Roost at Ridgeview (convenience store)
(13, 37), -- Fast Food / Convenience
(13, 33), -- Vegetarian (stocked options)

-- The Terrace (smaller dining hall / all-day)
(14, 1);
-- American


-- CIA Restaurants and their Cuisines
INSERT INTO RestaurantCuisine (restaurant_id, cuisine_id)
VALUES
-- American Bounty Restaurant
(16, 1),  -- American
(16, 8),  -- French
(16, 21), -- New American

-- Bocuse Restaurant
(17, 8),  -- French
(17, 21), -- New American

-- Ristorante Caterina de' Medici
(18, 19), -- Italian
(18, 21), -- New American

-- Apple Pie Bakery Café
(19, 8),  -- French
(19, 21), -- New American

-- The Egg
(20, 8),  -- French
(20, 21); -- New American

INSERT INTO FoodGroup (id, name)
VALUES (1, 'Pizza'),
       (2, 'Burger'),
       (3, 'Sandwich'),
       (4, 'Wrap'),
       (5, 'Panini'),
       (6, 'Hot Dog'),
       (7, 'Taco'),
       (8, 'Burrito'),
       (9, 'Quesadilla'),
       (10, 'Nachos'),
       (11, 'Pasta'),
       (12, 'Noodles'),
       (13, 'Rice Bowl'),
       (14, 'Sushi'),
       (15, 'Sashimi'),
       (16, 'Dumplings'),
       (17, 'Bao'),
       (18, 'Spring Roll'),
       (19, 'Soup'),
       (20, 'Salad'),
       (21, 'Grain Bowl'),
       (22, 'Stir Fry'),
       (23, 'Curry'),
       (24, 'Kebab'),
       (25, 'Falafel'),
       (26, 'Shawarma'),
       (27, 'Gyro'),
       (28, 'Steak'),
       (29, 'Ribs'),
       (30, 'Chicken Wings'),
       (31, 'Fried Chicken'),
       (32, 'Roast Chicken'),
       (33, 'Seafood'),
       (34, 'Fish & Chips'),
       (35, 'Crab Cakes'),
       (36, 'Lobster Roll'),
       (37, 'Clam Chowder'),
       (38, 'Oysters'),
       (39, 'Breakfast Platter'),
       (40, 'Pancakes'),
       (41, 'Waffles'),
       (42, 'French Toast'),
       (43, 'Omelette'),
       (44, 'Bagel'),
       (45, 'Croissant'),
       (46, 'Muffin'),
       (47, 'Donut'),
       (48, 'Cake'),
       (49, 'Pie'),
       (50, 'Cupcake'),
       (51, 'Brownie'),
       (52, 'Ice Cream'),
       (53, 'Gelato'),
       (54, 'Frozen Yogurt'),
       (55, 'Milkshake'),
       (56, 'Smoothie'),
       (57, 'Juice'),
       (58, 'Coffee'),
       (59, 'Tea'),
       (60, 'Hot Chocolate'),
       (61, 'Cocktail'),
       (62, 'Beer'),
       (63, 'Wine'),
       (64, 'Spirits'),
       (65, 'Appetizer'),
       (66, 'Side Dish'),
       (67, 'Fries'),
       (68, 'Onion Rings'),
       (69, 'Mozzarella Sticks'),
       (70, 'Chips & Salsa'),
       (71, 'Hummus & Pita'),
       (72, 'Charcuterie'),
       (73, 'Dessert Platter'),
       (74, 'Vegan Dish'),
       (75, 'Vegetarian Dish'),
       (76, 'Gluten-Free Dish'),
       (77, 'Kid’s Meal'),
       (78, 'Combo Meal'),
       (79, 'Daily Special'),
       (80, 'Other');

INSERT INTO FoodGroup (id, name)
VALUES
-- Core Western fast food
(81, 'Cheeseburger'),
(82, 'Veggie Burger'),
(83, 'Chicken Sandwich'),
(84, 'Grilled Cheese'),
(85, 'Club Sandwich'),
(86, 'BLT'),
(87, 'Philly Cheesesteak'),
(88, 'Sliders'),
(89, 'Pulled Pork Sandwich'),
(90, 'Turkey Sandwich'),

-- Italian
(91, 'Lasagna'),
(92, 'Ravioli'),
(93, 'Gnocchi'),
(94, 'Risotto'),
(95, 'Calzone'),
(96, 'Focaccia'),
(97, 'Bruschetta'),
(98, 'Caprese Salad'),
(99, 'Minestrone Soup'),
(100, 'Antipasto'),

-- Mexican / Latin American
(101, 'Enchilada'),
(102, 'Tamale'),
(103, 'Pozole'),
(104, 'Churro'),
(105, 'Elote'),
(106, 'Arepa'),
(107, 'Empanada'),
(108, 'Ceviche'),
(109, 'Tostada'),
(110, 'Sopes'),

-- Asian
(111, 'Ramen'),
(112, 'Udon'),
(113, 'Pho'),
(114, 'Pad Thai'),
(115, 'Tom Yum Soup'),
(116, 'Green Curry'),
(117, 'Red Curry'),
(118, 'Massaman Curry'),
(119, 'Satay'),
(120, 'Bibimbap'),
(121, 'Bulgogi'),
(122, 'Kimchi'),
(123, 'Japchae'),
(124, 'Gyoza'),
(125, 'Tempura'),
(126, 'Okonomiyaki'),
(127, 'Takoyaki'),
(128, 'Peking Duck'),
(129, 'Dim Sum'),
(130, 'Congee'),

-- Middle Eastern / Mediterranean
(131, 'Tabbouleh'),
(132, 'Baba Ganoush'),
(133, 'Lentil Soup'),
(134, 'Dolma'),
(135, 'Moussaka'),
(136, 'Spanakopita'),
(137, 'Baklava'),
(138, 'Pita Wrap'),
(139, 'Lamb Skewer'),
(140, 'Shakshuka'),

-- Indian
(141, 'Biryani'),
(142, 'Tandoori Chicken'),
(143, 'Butter Chicken'),
(144, 'Chana Masala'),
(145, 'Saag Paneer'),
(146, 'Naan'),
(147, 'Samosa'),
(148, 'Pakora'),
(149, 'Dosa'),
(150, 'Idli'),

-- African
(151, 'Jollof Rice'),
(152, 'Egusi Soup'),
(153, 'Injera'),
(154, 'Berbere Stew'),
(155, 'Bunny Chow'),
(156, 'Bobotie'),
(157, 'Mandazi'),
(158, 'Suya'),
(159, 'Tagine'),
(160, 'Couscous'),

-- American comfort food
(161, 'Mac and Cheese'),
(162, 'Meatloaf'),
(163, 'Chili'),
(164, 'Cornbread'),
(165, 'Biscuits and Gravy'),
(166, 'Mashed Potatoes'),
(167, 'Coleslaw'),
(168, 'Potato Salad'),
(169, 'Deviled Eggs'),
(170, 'BBQ Brisket'),

-- Seafood specifics
(171, 'Shrimp Cocktail'),
(172, 'Crab Legs'),
(173, 'Calamari'),
(174, 'Scallops'),
(175, 'Salmon Fillet'),
(176, 'Tuna Steak'),
(177, 'Caviar'),
(178, 'Fish Tacos'),
(179, 'Seaweed Salad'),
(180, 'Poke Bowl'),

-- Breakfast extras
(181, 'Avocado Toast'),
(182, 'Breakfast Burrito'),
(183, 'Hash Browns'),
(184, 'Granola'),
(185, 'Parfait'),
(186, 'Quiche'),
(187, 'Frittata'),
(188, 'Breakfast Sandwich'),
(189, 'Cereal'),
(190, 'Oatmeal'),

-- Desserts expanded
(191, 'Pudding'),
(192, 'Custard'),
(193, 'Tiramisu'),
(194, 'Cannoli'),
(195, 'Crème Brûlée'),
(196, 'Macaron'),
(197, 'Pavlova'),
(198, 'Cheesecake'),
(199, 'Fruit Tart'),
(200, 'Popsicle'),

-- Snacks
(201, 'Trail Mix'),
(202, 'Popcorn'),
(203, 'Pretzel'),
(204, 'Beef Jerky'),
(205, 'Energy Bar'),
(206, 'Granola Bar'),
(207, 'Potato Chips'),
(208, 'Corn Chips'),
(209, 'Pita Chips'),
(210, 'Veggie Chips'),

-- Beverages expanded
(211, 'Espresso'),
(212, 'Latte'),
(213, 'Cappuccino'),
(214, 'Macchiato'),
(215, 'Cold Brew Coffee'),
(216, 'Bubble Tea'),
(217, 'Matcha Latte'),
(218, 'Chai'),
(219, 'Lemonade'),
(220, 'Soda'),
(221, 'Energy Drink'),
(222, 'Sports Drink'),
(223, 'Kombucha'),
(224, 'Mocktail'),
(225, 'Whiskey'),
(226, 'Vodka'),
(227, 'Rum'),
(228, 'Tequila'),
(229, 'Gin'),
(230, 'Cider');

INSERT INTO FoodGroup (id, name)
VALUES (231, 'Vegetable');

# inserts for HISSHO Sushi
INSERT INTO MenuItem (restaurant_id, food_group_id, name, description, price)
VALUES
-- Standard Maki
(3, 14, 'Spicy California Roll', 'Spicy crab, avocado & cucumber', 7.49),
(3, 14, 'California Roll', 'Crab, avocado & cucumber', 6.49),
(3, 14, 'Dynamite Roll', 'Spicy shrimp/tuna/salmon, crab & avocado', 7.99),
(3, 14, 'Nippon Favorite', 'Cooked shrimp, tuna or salmon', 6.99),
(3, 14, 'Spicy Roll', 'Spicy shrimp/tuna/salmon & cucumber', 7.49),
(3, 14, 'Sushicado', 'Shrimp/tuna/salmon & avocado', 7.49),
(3, 14, 'Spicy Pepper Roll', 'Red peppers, cucumber, avocado & spicy mayo', 7.99),
(3, 14, 'Veggie Roll', 'Avocado, carrot & cucumber', 6.49),

-- Starters
(3, 231, 'Edamame', 'Steamed soybeans with sea salt', 3.99),
(3, 18, 'Spring Roll', 'Vegetable spring roll', 6.99),
(3, 20, 'Seaweed Salad', 'Marinated seaweed with sesame', 4.49),
(3, 20, 'Squid Salad', 'Marinated squid with vegetables', 4.99),
(3, 16, 'Gyoza', 'Dumplings: chicken, vegetable, or pork', 4.99),

-- Specialty Maki
(3, 14, 'Crunchy Shrimp Roll', 'Shrimp, cucumber, tempura crunch & spicy mayo', 7.49),
(3, 14, 'Krispy Krab', 'Spicy crab, cucumber, avocado & fried onions', 7.99),
(3, 14, 'Living Color Roll', 'California roll topped with fish & shrimp', 10.99),
(3, 14, 'Nagano Special', 'Chef’s nigiri shrimp, tuna or salmon', 11.99),
(3, 14, 'Outer Banks Roll', 'Tuna, salmon, avocado, sesame & spicy mayo', 10.99),
(3, 14, 'Rising Sun Roll', 'Tempura shrimp, tuna, salmon, jalapeños', 12.99),
(3, 14, 'Veggie TNT Roll', 'Pepper, avocado, cucumber, jalapeño & mayo', 8.99),
(3, 14, 'Salmon Lover', 'Spicy salmon, cream cheese, topped with salmon', 10.99),
(3, 14, 'Sriracha Party', 'Spicy tuna, crab, cucumber & sriracha peas', 9.99),
(3, 14, 'Sunset Roll', 'Spicy crab, cucumber, avocado, tuna & salmon', 8.99),
(3, 14, 'Tempura Shrimp Roll', 'Tempura shrimp, avocado, cucumber, sesame', 9.99),
(3, 14, 'TNT Roll', 'Dynamite roll topped with spicy fish', 12.99),
(3, 14, 'Wasabi Crunch', 'Wasabi shrimp, avocado, cucumber & wasabi mayo', 9.99),

-- Combos
(3, 14, 'Hissho Spicy Combo', 'Sriracha Party, Krispy Krab & TNT rolls', 12.99),
(3, 14, 'Special Cooked Combo', 'Krispy Krab + Tempura Shrimp Roll or Wasabi Crunch', 9.99),
(3, 14, 'Maui Bento', 'Sushi sampler box with salad & nigiri', 11.99),

-- Poke
(3, 180, 'Classic Hawaiian Poke', 'Tuna, seaweed salad, ponzu & chili oil', 8.99),
(3, 180, 'Mango Salmon Poke', 'Salmon, mango, masago & sweet chili sauce', 8.99),
(3, 180, 'Blazing Dragon Poke', 'Spicy shrimp & crab with chili & sriracha', 8.99);








