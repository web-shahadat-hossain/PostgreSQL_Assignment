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
-- Problem 1️⃣
-- ===============================================
INSERT INTO rangers (name, region) VALUES
('Derek Fox', 'Coastal Plains');

-- ===============================================
-- Problem 2️⃣
-- =============================================== 
SELECT count(*) as unique_species_count FROM (SELECT species_id FROM sightings GROUP BY species_id);


-- ===============================================
-- Problem 3️⃣
-- =============================================== 
SELECT * FROM sightings WHERE location ILIKE '%Pass%';

-- ===============================================
-- Problem 4️⃣
-- =============================================== 
SELECT r.name, count(s.ranger_id) as total_sightings  FROM sightings as s  JOIN rangers as r ON s.ranger_id = r.ranger_id GROUP BY r.name ; 


-- ===============================================
-- Problem 5️⃣
-- =============================================== 
SELECT *  FROM species WHERE species_id NOT IN (SELECT species_id FROM sightings);

-- ===============================================
-- Problem 6️⃣
-- =============================================== 
SELECT * FROM sightings ORDER BY sighting_time DESC LIMIT 2;


-- ===============================================
-- Problem 7️⃣
-- =============================================== 
UPDATE  species set conservation_status ='Historic' WHERE extract(YEAR FROM discovery_date::Date) < 1800;

-- ===============================================
-- Problem 8️⃣
-- =============================================== 
CREATE OR REPLACE FUNCTION get_the_time_of_day(p_time TIMESTAMP)
RETURNS TEXT
LANGUAGE plpgsql
AS $$
BEGIN
    IF EXTRACT(HOUR FROM p_time) < 12 THEN
        RETURN 'Morning';
    ELSIF EXTRACT(HOUR FROM p_time) BETWEEN 12 AND 17 THEN
        RETURN 'Afternoon';
    ELSE
        RETURN 'Evening';
    END IF;
END;
$$;

SELECT sighting_id, get_the_time_of_day(sighting_time)  AS time_of_day  FROM sightings;



-- ===============================================
-- Problem 9️⃣
-- =============================================== 
DELETE FROM rangers WHERE ranger_id NOT IN(SELECT ranger_id FROM sightings)

 