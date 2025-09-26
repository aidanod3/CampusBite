# database initialization

# DROP DATABASE CampusBites;

CREATE DATABASE CampusBites;

use CampusBites;

-- Created by Dmytro Baranovych
CREATE TABLE School
(
    id           int primary key auto_increment not null,
    name         varchar(255)                   not null,
    email_suffix varchar(255) unique            not null # would only be for verifying student is from school.
);

-- Created by Adrian Viano-Robles
CREATE TABLE Restaurant
(
    id              int         not null primary key auto_increment,
    school_id       int         not null references School (id),
    name            varchar(30) not null unique,
#     hours_of_operation varchar (add later. might need multiple tables?)
    campus_location varchar(50) not null
);

CREATE TABLE MenuItem
(
    id            int         not null primary key auto_increment,
    restaurant_id int         not null references Restaurant (id),
    name          varchar(30) not null,
    description   varchar(200) not null,
    price         double
);

-- Created by Jaheen Reza
CREATE TABLE User
(   # not making username/email the primary key, in case these need to be changed ever.
    id        int         not null primary key auto_increment,
    username  varchar(30) not null unique,
    password  char(60)    not null, #bcrypt hash
    email     varchar(50) not null unique,
    school_id int         not null references School (id)
    #constraint to check that email contains School(email_suffix)?
);

CREATE TABLE Tag
(
    id       int         not null primary key auto_increment,
    tag_name varchar(20) not null unique # e.g. Vegetarian, Vegan, Spicy
);

CREATE TABLE Allergen
(
    id   int         not null primary key auto_increment,
    name varchar(20) not null unique # e.g. Allium, Lactose-Intolerant
);

CREATE TABLE RestaurantReview
(                                                                           # using id instead of a composite key of (user_id and restaurant_id) so a user can revise reviews (w/o deleting old data)
    id            int           not null primary key auto_increment,
    user_id       int           not null references User (id),
    restaurant_id int           not null references Restaurant (id),
    rating        decimal(2, 1) not null,
    review        varchar(200),                                             # nullable. let user rate out of 5, but not need to leave a review.

    CONSTRAINT rr_chk_rating_value CHECK (rating >= 1.0 AND rating <= 5.0), # makes sure rating is between 1 and 5.
    CONSTRAINT rr_chk_rating_half CHECK (MOD(rating * 10, 5) = 0)           # makes sure rating decimal is only in half increments (e.g. 2, 2.5, etc)
);

CREATE TABLE MenuItemReview
(                                                                            # using id instead of a composite key of (user_id and menu_item_id) so a user can revise reviews (w/o deleting old data)
    id           int           not null primary key auto_increment,
    user_id      int           not null references User (id),
    menu_item_id int           not null references MenuItem (id),
    rating       decimal(2, 1) not null,
    review       varchar(200),                                               # nullable. let user rate out of 5, but not need to leave a review.

    CONSTRAINT mir_chk_rating_value CHECK (rating >= 1.0 AND rating <= 5.0), # makes sure rating is between 1 and 5.
    CONSTRAINT mir_chk_rating_half CHECK (MOD(rating * 10, 5) = 0)           # makes sure rating decimal is only in half increments (e.g. 2, 2.5, etc)
);

# restaurant review comments & menuitem review comments optional, but seems a little bit much.

CREATE TABLE UserLikedRestaurant
(
    user_id int not null references User (id),
    restaurant_id int not null references Restaurant (id),
    primary key (user_id, restaurant_id)
);

CREATE TABLE UserLikedMenuItem
(
    user_id      int not null references User (id),
    menu_item_id int not null references MenuItem (id),
    primary key (user_id, menu_item_id)
);


# combines users and their tags
CREATE TABLE UserTag
(
    user_id int not null references User (id),
    tag_id  int not null references Tag (id),
    primary key (user_id, tag_id)
);

# combines users and their allergies
CREATE TABLE UserAllergen
(
    user_id     int not null references User (id),
    allergen_id int not null references Allergen (id),
    primary key (user_id, allergen_id)
);

# combines menu items and their tags
CREATE TABLE MenuItemTag
(
    menu_item_id int not null references MenuItem (id),
    tag_id       int not null references Tag (id),
    is_primary   boolean default false, # a menu item should only have 1 primary tag.
    primary key (menu_item_id, tag_id)
);

# combines menu items and their allergens
CREATE TABLE MenuItemAllergen
(
    menu_item_id int not null references MenuItem (id),
    allergen_id  int not null references Allergen (id),
    primary key (menu_item_id, allergen_id)
);
