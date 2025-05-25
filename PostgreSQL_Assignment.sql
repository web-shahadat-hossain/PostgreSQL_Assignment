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

SELECT * FROM sightings;




 