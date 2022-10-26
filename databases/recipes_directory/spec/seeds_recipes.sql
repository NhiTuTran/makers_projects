DROP TABLE IF EXISTS recipes;

CREATE SEQUENCE IF NOT EXISTS recipes_id_seq;

CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name text,
  cooking_time int,
  rating int
);

INSERT INTO recipes ("name", "cooking_time", "rating") VALUES
('Toast', '2', '1'),
('Pho', '360', '5'),
('Pizza', '12', '3');