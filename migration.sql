USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(240) NOT NULL,
  email    VARCHAR(240) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE category (
  id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
  category VARCHAR(240) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id     INT UNSIGNED NOT NULL,
  title       VARCHAR(240) NOT NULL,
  description TEXT         NOT NULL,
  category    INT UNSIGNED,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (category) REFERENCES category (id)
);

INSERT INTO category (`id`, `category`) VALUES (1, 'community');
INSERT INTO category (`id`, `category`) VALUES (2, 'personals');
INSERT INTO category (`id`, `category`) VALUES (3, 'discussion forums');
INSERT INTO category (`id`, `category`) VALUES (4, 'housing');
INSERT INTO category (`id`, `category`) VALUES (5, 'for sale');
INSERT INTO category (`id`, `category`) VALUES (6, 'services');
INSERT INTO category (`id`, `category`) VALUES (7, 'jobs');
INSERT INTO category (`id`, `category`) VALUES (8, 'gigs');