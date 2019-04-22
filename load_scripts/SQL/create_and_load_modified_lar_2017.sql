DROP TABLE IF EXISTS modified_lar_2017;
CREATE TABLE modified_lar_2017 (  
    record_id NUMERIC,
    respondent_id VARCHAR,
    agency_code NUMERIC, 
    loan_type NUMERIC,
    property_type NUMERIC,
    loan_purpose NUMERIC,
    occupancy NUMERIC,
    loan_amount NUMERIC,
    preapprovals NUMERIC,
    action_type NUMERIC,
    msa VARCHAR,
    state_code VARCHAR,
    county_code VARCHAR,
    census_tract VARCHAR,
    applicant_ethnicity NUMERIC,
    co_applicant_ethnicity NUMERIC,
    applicant_race_1 NUMERIC,
    applicant_race_2 VARCHAR,
    applicant_race_3 VARCHAR,
    applicant_race_4 VARCHAR,
    applicant_race_5 VARCHAR,
    co_applicant_race_1 NUMERIC,
    co_applicant_race_2 VARCHAR,
    co_applicant_race_3 VARCHAR,
    co_applicant_race_4 VARCHAR,
    co_applicant_race_5 VARCHAR,
    applicant_sex NUMERIC,
    co_applicant_sex NUMERIC,
    income NUMERIC,
    purchaser_type NUMERIC,
    denial_1 VARCHAR,
    denial_2 VARCHAR,
    denial_3 VARCHAR,    
    rate_spread VARCHAR,
    hoepa_status NUMERIC,
    lien_status NUMERIC

COPY hmda_public.modified_lar_2017
FROM '{data_path}/data/lar/modified_lar_2017.txt'
DELIMITER '|' ENCODING 'latin1';
COMMIT;