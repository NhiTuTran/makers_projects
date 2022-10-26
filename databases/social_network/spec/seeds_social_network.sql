-- Create the table without the foreign key first.
DROP TABLE IF EXISTS posts;
CREATE SEQUENCE IF NOT EXISTS posts_id_seq;

DROP TABLE IF EXISTS accounts;
CREATE SEQUENCE IF NOT EXISTS accounts_id_seq;

CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  email_address text,
  username text
);


-- Then the table with the foreign key first.
CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title text,
  content text,
  views int,
-- The foreign key name is always {other_table_singular}_id
  account_id int,
  constraint fk_account foreign key(account_id)
    references accounts(id)
    on delete cascade
);

INSERT INTO accounts (email_address, username) VALUES ('joebloggs@makers.com', 'JB72');
INSERT INTO accounts (email_address, username) VALUES ('jeff@makers.com', 'J123');

INSERT INTO posts (title, content, views, account_id) VALUES ('Baking #1', 'Today I made a cake.', '2', '1');
INSERT INTO posts (title, content, views, account_id) VALUES ('Baking #2', 'Today I made a cookies.', '4', '1');
INSERT INTO posts (title, content, views, account_id) VALUES ('Hobby #1', 'Today I played my guitar.', '10', '2');