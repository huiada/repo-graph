CREATE TABLE dataset_interactions (
    id serial PRIMARY KEY,
    person_id integer references people(id),
    dataset_id integer references datasets(id),
    interaction_type integer references interactions(id),
    interaction_date timestamp
);

COMMENT ON TABLE dataset_interactions IS 'how people relate to datasets.';

INSERT INTO dataset_interactions 
    (person_id, dataset_id, interaction_type, interaction_date)
VALUES
    (3, 1, 1, '2016-08-01'),
    (4, 2, 1, '2015-01-01'),
    (2, 1, 2, '2017-08-01'),
    (1, 1, 5, '2016-01-01');

CREATE TABLE interactions (
    id serial PRIMARY KEY,
    interaction_type text
);

COMMENT ON TABLE interactions IS 'list of all possible interactions a user can have with the data';

INSERT INTO interactions 
    (interaction_type)
VALUES 
    ('creates'), -- 1
    ('edits'), -- 2
    ('downloads'), --3
    ('deletes'), --4
    ('uses'); --5