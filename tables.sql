-- Tables

CREATE TABLE nocs (
    code CHAR(3) PRIMARY KEY,
    name VARCHAR NOT NULL,
    headqurter_country VARCHAR NOT NULL,
    headqurter_city VARCHAR NOT NULL
);

CREATE TABLE athletes (
    id SERIAL PRIMARY KEY,
    noc_code CHAR(3) REFERENCES nocs (code) NOT NULL,
    first_name VARCHAR NOT NULL,
    middle_name VARCHAR NULL,
    last_name VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    birth_country VARCHAR NOT NULL,
    passport_number VARCHAR NOT NULL UNIQUE
);

CREATE TABLE sports (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE disciplines (
    code CHAR(3) PRIMARY KEY,
    sport_id INTEGER REFERENCES sports (id) NULL,
    name VARCHAR NOT NULL,
    governing_body VARCHAR NULL
);

CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    discipline_code CHAR(3) REFERENCES disciplines (code) NOT NULL,
    name VARCHAR NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE doping_controls (
    id SERIAL PRIMARY KEY,
    result BOOLEAN NOT NULL,
    controller_id INTEGER NOT NULL,
    taken_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE requests (
    event_id INTEGER REFERENCES events (id) NOT NULL,
    athlete_id INTEGER REFERENCES athletes (id) NOT NULL,
    qualified BOOLEAN NULL,
    doping_control_id INTEGER NULL,
    PRIMARY KEY (event_id, athlete_id)
);

CREATE TABLE event_results (
    event_id INTEGER REFERENCES events (id) NOT NULL,
    athlete_id INTEGER REFERENCES athletes (id) NOT NULL,
    referee_id INTEGER NOT NULL,
    place INTEGER NOT NULL,
    PRIMARY KEY (event_id, athlete_id)
);

CREATE TABLE medal_table (
    noc_code CHAR(3) PRIMARY KEY REFERENCES nocs (code),
    gold INTEGER NOT NULL DEFAULT 0,
    silver INTEGER NOT NULL DEFAULT 0,
    bronze INTEGER NOT NULL DEFAULT 0
);

-- Index

CREATE INDEX medal_table_sort_idx ON medal_table USING btree (
    gold DESC,
    silver DESC,
    bronze DESC
);

-- Views

CREATE OR REPLACE VIEW requests_with_doping_control_result AS
SELECT 
	requests.event_id, 
	requests.athlete_id, 
	requests.qualified, 
	controls.result as doping_control
FROM requests
LEFT JOIN doping_controls controls
ON requests.doping_control_id = controls.id
