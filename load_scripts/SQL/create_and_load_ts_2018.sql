DROP TABLE IF EXISTS hmda_public.ts_2018;
CREATE TABLE hmda_public.ts_2018 (
	activity_year VARCHAR(4),
	calendar_quarter VARCHAR(1),
	lei VARCHAR(20),
	tax_id VARCHAR(10),
	agency_code VARCHAR(1),
	respondent_name VARCHAR,
	respondent_state VARCHAR(2),
	respondent_city VARCHAR,
	respondent_zip VARCHAR,
	lar_count VARCHAR
	);

COPY hmda_public.ts_2018
FROM 
'/Users/roellr/Documents/HMDA_Repos/HMDA_Data_Science_Kit/data/ts/ts_2018.txt'
    DELIMITER '|' ENCODING 'latin1';
COMMIT;
