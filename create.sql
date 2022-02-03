-- CREATE TABLE customer(
--     customer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     customer_email VARCHAR(50)
-- );

-- CREATE TABLE rating(
--     rating_id SERIAL PRIMARY KEY,
--     movie_rating VARCHAR(5)
-- );


-- CREATE TABLE concession(
--     concession_id SERIAL PRIMARY KEY,
--     concession_name VARCHAR(50),
--     concession_price DECIMAL(6,2),
--     vendor_name VARCHAR(50)
-- );

-- -- DROP TABLE IF EXISTS movie CASCADE;
-- -- CREATE TABLE movie(
-- --     movie_id SERIAL PRIMARY KEY,
-- --     movie_name VARCHAR(50),
-- --     rating_id INTEGER NOT NULL,
-- --     desc_1 VARCHAR(500),
-- --     FOREIGN KEY(rating_id) REFERENCES rating(rating_id) ON DELETE CASCADE
-- -- );

-- CREATE TABLE customer_concession(
--     customer_id INTEGER NOT NULL,
--     concession_id INTEGER NOT NULL,
--     FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
--     FOREIGN KEY(concession_id) REFERENCES concession(concession_id) ON DELETE CASCADE
-- );

-- DROP TABLE IF EXISTS ticket CASCADE;
-- CREATE TABLE ticket(
--     ticket_id SERIAL PRIMARY KEY,
--     customer_id INTEGER NOT NULL,
--     movie_id INTEGER NOT NULL,
--     ticket_price DECIMAL(6,2),
--     order_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc' ,now()),
--     FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
--     FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE

-- );