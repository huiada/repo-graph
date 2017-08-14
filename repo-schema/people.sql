CREATE TABLE people (
    id serial PRIMARY KEY,
    first_name text,
    last_name text,
    position text
);

COMMENT ON TABLE people IS 'a human employee, user of this system';

INSERT INTO people 
    (first_name, last_name, position)
VALUES
    ('bonnie', 'weller', 'dats: data manager'),
    ('tim', 'herrick', 'dats: data manager'),
    ('jason', 'williams', 'diversity: ely biologist'),
    ('jason', 'jones', 'diversity: reptile biologist'),
    ('jon', 'doe', 'scientific collector'),
    ('jane', 'doe', 'scientific collector');