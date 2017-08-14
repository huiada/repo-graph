CREATE TABLE datasets (
  id serial PRIMARY KEY,
  name text not null,
  description text not null,
  attributes json,
  created_at timestamp,
  updated_at timestamp
);

COMMENT ON TABLE datasets IS 'Datasets created at NDOW';

INSERT INTO datasets
  (name, description, attributes)
VALUES
  ('rose guano cave', 'data for bats captured at rose guano cave', '{ "year": 2017, "creator": "Jason Williams" }'),
  ('gila monsters', 'data for gila monsters radio transmitters', '{ "year": 2017, "creator": "Jason Jones" }');
