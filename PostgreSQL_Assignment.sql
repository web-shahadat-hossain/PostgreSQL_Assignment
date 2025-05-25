-- Active: 1716272212372@@127.0.0.1@5432@postgres
-------------- Create a database --------------
CREATE DATABASE conservation_db;

-------------- Create a Table --------------
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    region VARCHAR(100) NOT NULL
);
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(80) NOT NULL,
    scientific_name VARCHAR(80) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(100) NOT NULL
);
CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT NOT NULL REFERENCES rangers(ranger_id),
    species_id INT NOT NULL REFERENCES species(species_id),
    sighting_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    location TEXT NOT NULL,
    notes TEXT
);


-- ===============================================
-- Problem 1️⃣: 
-- Description: Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains
-- ===============================================
INSERT INTO rangers (name, region) VALUES
('Derek Fox', 'Coastal Plains');

-- ===============================================
-- Problem 2️⃣: 
-- Description: Count unique species ever sighted.
-- =============================================== 
SELECT count(*) as unique_species_count FROM (SELECT species_id FROM sightings GROUP BY species_id);


-- ===============================================
-- Problem 3️⃣: 
-- Description:  Find all sightings where the location includes "Pass".
-- =============================================== 
SELECT * FROM sightings WHERE location ILIKE '%Pass%';

-- ===============================================
-- Problem 4️⃣: 
-- Description: List each ranger's name and their total number of sightings.
-- =============================================== 
SELECT r.name, count(s.ranger_id) as total_sightings  FROM sightings as s  JOIN rangers as r ON s.ranger_id = r.ranger_id GROUP BY r.name ; 


-- ===============================================
-- Problem 5️⃣: 
-- Description: List species that have never been sighted.
-- =============================================== 
SELECT *  FROM species WHERE species_id NOT IN (SELECT species_id FROM sightings);

-- ===============================================
-- Problem 6️⃣: 
-- Description:  Show the most recent 2 sightings.
-- =============================================== 
SELECT * FROM sightings ORDER BY sighting_time DESC LIMIT 2;





 