CREATE TABLE dataset_fields (
  id serial PRIMARY KEY,
  dataset_id integer references datasets(id),
  field_id integer references fields(id),
  guid uuid
);

COMMENT ON TABLE dataset_fields IS 'A joiner table to show which fields a dataset uses.';

INSERT INTO dataset_fields
  (dataset_id, field_id)
VALUES
 (1, 1),
 (1, 2),
 (1, 3),
 (1, 4);
