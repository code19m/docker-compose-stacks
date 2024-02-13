CREATE TABLE IF NOT EXISTS outbox (
    id UUID NOT NULL,
    aggregatetype VARCHAR(255) NOT NULL,
    aggregateid VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    payload JSONB
);


CREATE TABLE IF NOT EXISTS movies (
    id bigint PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    year INTEGER NOT NULL,
    director VARCHAR(255) NOT NULL,
    rating DECIMAL NOT NULL
);

INSERT INTO movies (id, title, year, director, rating) VALUES (1, 'The Shawshank Redemption', 1994, 'Frank Darabont', 9.3);
INSERT INTO movies (id, title, year, director, rating) VALUES (2, 'The Godfather', 1972, 'Francis Ford Coppola', 9.2);
INSERT INTO movies (id, title, year, director, rating) VALUES (3, 'The Godfather: Part II', 1974, 'Francis Ford Coppola', 9.0);
INSERT INTO movies (id, title, year, director, rating) VALUES (4, 'The Dark Knight', 2008, 'Christopher Nolan', 9.0);
INSERT INTO movies (id, title, year, director, rating) VALUES (5, 'Interstellar', 2014, 'Christopher Nolan', 10);


INSERT INTO outbox (id, aggregatetype, aggregateid, type, payload)
VALUES 
    ('550e8400-e29b-41d4-a716-446655440000', 'TypeA', '123456', 'TypeX', '{"key1": "value1", "key2": "value2"}'),
    ('550e8400-e29b-41d4-a716-446655440001', 'TypeB', '789012', 'TypeY', '{"key1": "value3", "key2": "value4"}'),
    ('550e8400-e29b-41d4-a716-446655440002', 'TypeC', '345678', 'TypeZ', '{"key1": "value5", "key2": "value6"}');
