CREATE TABLE fields (
  id serial PRIMARY KEY,
  name text not null,
  type text not null,
  required boolean not null,
  description text not null,
  attributes json,
  created_at timestamp,
  updated_at timestamp
);

COMMENT ON TABLE fields IS 'Data fields that are used in datasets.';

INSERT INTO fields
  (name, type, required, description)
VALUES
  ('ndow_id', 'text', true, 'Internal reference number for all captured animals'),
  ('date', 'date', true, 'Date of observation or event'),
  ('species', 'text', true, 'Species observed, captured, or encounterd'),
  ('sex', 'text', true, 'The sex/gender of the animal. Required, however unknown values are acceptable.');
