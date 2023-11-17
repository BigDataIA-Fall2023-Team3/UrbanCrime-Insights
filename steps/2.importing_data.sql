USE ROLE ANALYST_ROLE;
USE DATABASE A4_DB;
USE SCHEMA BIGDATA;
USE WAREHOUSE A4_WH;

-- Create a schema in A4_DB
CREATE OR REPLACE SCHEMA BIGDATA;

-- Create table in A4_DB
CREATE OR REPLACE TABLE A4_DB.BIGDATA.CYBERSYN_DATA_CATALOG AS
SELECT * FROM CRIME_STATISTICS.CYBERSYN.CYBERSYN_DATA_CATALOG;

-- Create table in A4_DB
CREATE OR REPLACE TABLE A4_DB.BIGDATA.GEOGRAPHY_INDEX AS
SELECT * FROM CRIME_STATISTICS.CYBERSYN.GEOGRAPHY_INDEX;

-- Create table in A4_DB
CREATE OR REPLACE TABLE A4_DB.BIGDATA.GEOGRAPHY_RELATIONSHIPS AS
SELECT * FROM CRIME_STATISTICS.CYBERSYN.GEOGRAPHY_RELATIONSHIPS;

-- Create table in A4_DB
CREATE OR REPLACE TABLE A4_DB.BIGDATA.URBAN_CRIME_ATTRIBUTES AS
SELECT * FROM CRIME_STATISTICS.CYBERSYN.URBAN_CRIME_ATTRIBUTES;

-- Create table in A4_DB
CREATE OR REPLACE TABLE A4_DB.BIGDATA.URBAN_CRIME_INCIDENT_LOG AS
SELECT * FROM CRIME_STATISTICS.CYBERSYN.URBAN_CRIME_INCIDENT_LOG;

-- Create table in A4_DB
CREATE OR REPLACE TABLE A4_DB.BIGDATA.URBAN_CRIME_TIMESERIES AS
SELECT * FROM CRIME_STATISTICS.CYBERSYN.URBAN_CRIME_TIMESERIES;


GRANT ALL PRIVILEGES ON DATABASE A4_DB TO ANALYST_ROLE;
GRANT ALL PRIVILEGES ON SCHEMA A4_DB.BIGDATA TO ANALYST_ROLE;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA A4_DB.BIGDATA TO ANALYST_ROLE;
GRANT ALL PRIVILEGES ON ALL VIEWS IN SCHEMA A4_DB.BIGDATA TO ANALYST_ROLE;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA A4_DB.BIGDATA TO ANALYST_ROLE;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA A4_DB.BIGDATA TO ANALYST_ROLE;
GRANT ALL PRIVILEGES ON ALL PROCEDURES IN SCHEMA A4_DB.BIGDATA TO ANALYST_ROLE;


