BEGIN;

CREATE SCHEMA IF NOT EXISTS outdoors;

CREATE TABLE IF NOT EXISTS outdoors.population(

  citytown varchar(30),
  stname varchar(30),
  popestimate2017 integer (10),
  );

COPY outdoors.population FROM '/Users/graceshea/Documents/Galvanize/ga_da_finalproject/data/population.csv'
WITH HEADER DELIMITER ',' CSV;
COMMIT;