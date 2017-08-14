-- select all the datasets, the dataset interaction, and people that interacted with that dataset
SELECT 
    datasets.name,
    interactions.interaction_type,
    dataset_interactions.interaction_date,
    people.first_name || ' ' || people.last_name AS person
FROM datasets 
    INNER JOIN dataset_interactions ON datasets.id = dataset_interactions.dataset_id
    INNER JOIN people ON dataset_interactions.person_id = people.id
    INNER JOIN interactions ON dataset_interactions.interaction_type = interactions.id;

-- if we wanted to serialize this as JSON for a web page

-- first build the persons sql
SELECT 
    people.first_name || ' ' || people.last_name AS person,
    interactions.interaction_type,
    dataset_interactions.interaction_date
FROM dataset_interactions
    INNER JOIN people ON dataset_interactions.person_id = people.id
    INNER JOIN interactions ON dataset_interactions.interaction_type = interactions.id;

-- then build the fields sql
SELECT 
    datasets.name,
    fields.name,
    fields.description,
    fields.type
FROM datasets 
    INNER JOIN dataset_fields ON datasets.id = dataset_fields.dataset_id
    INNER JOIN fields ON dataset_fields.field_id = fields.id;

-- then serialize to JSON
SELECT 
    datasets.name,
    datasets.description,
    (
        SELECT to_jsonb(array_agg(to_jsonb(d)))
        FROM (
            SELECT 
                people.first_name || ' ' || people.last_name AS person,
                interactions.interaction_type,
                dataset_interactions.interaction_date
            FROM dataset_interactions
                INNER JOIN people ON dataset_interactions.person_id = people.id
                INNER JOIN interactions ON dataset_interactions.interaction_type = interactions.id
            WHERE dataset_interactions.dataset_id = datasets.id
        ) d
    ) AS "Users",
    (
        SELECT to_jsonb(array_agg(to_jsonb(f)))
        FROM (
            SELECT 
                fields.name,
                fields.description,
                fields.type
            FROM datasets 
                INNER JOIN dataset_fields ON datasets.id = dataset_fields.dataset_id
                INNER JOIN fields ON dataset_fields.field_id = fields.id
            WHERE dataset_fields.dataset_id = datasets.id
        ) f
    ) AS "Fields"
FROM datasets;

-- export above query for better review
COPY (
    SELECT to_jsonb(array_agg(to_jsonb(t)))
    FROM (
        SELECT 
            datasets.name,
            datasets.description,
            (
                SELECT to_jsonb(array_agg(to_jsonb(d)))
                FROM (
                    SELECT 
                        people.first_name || ' ' || people.last_name AS person,
                        interactions.interaction_type,
                        dataset_interactions.interaction_date
                    FROM dataset_interactions
                        INNER JOIN people ON dataset_interactions.person_id = people.id
                        INNER JOIN interactions ON dataset_interactions.interaction_type = interactions.id
                    WHERE dataset_interactions.dataset_id = datasets.id
                ) d
            ) AS "Users",
            (
                SELECT to_jsonb(array_agg(to_jsonb(f)))
                FROM (
                    SELECT 
                        fields.name,
                        fields.description,
                        fields.type
                    FROM datasets 
                        INNER JOIN dataset_fields ON datasets.id = dataset_fields.dataset_id
                        INNER JOIN fields ON dataset_fields.field_id = fields.id
                    WHERE dataset_fields.dataset_id = datasets.id
                ) f
            ) AS "Fields"
        FROM datasets
    ) t
) to '/Users/mitchellgritts/Documents/projects/repo-graph/repo-schema/json-out.json';

-- check json-out.json to see what it looks like