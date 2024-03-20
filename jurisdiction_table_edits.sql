ALTER TABLE iaao_surveys.dbo.jurisdictions
add year int

ALTER TABLE iaao_surveys.dbo.jurisdictions
add cross_survey_id INT

ALTER TABLE iaao_surveys.dbo.jurisdictions
add questionnaire_id INT

select * from iaao_surveys.dbo.jurisdictions

update iaao_surveys.dbo.jurisdictions
set year = 2017

update iaao_surveys.dbo.jurisdictions
set cross_survey_id = 
(select jurisdiction_id - 1000
FROM iaao_surveys.DBO.jurisdictions j2
where iaao_surveys.dbo.jurisdictions.jurisdiction_id = j2.jurisdiction_id)


UPDATE iaao_surveys.DBO.jurisdictions
SET questionnaire_id = 2

INSERT INTO dbo.jurisdictions (questionnaire_id, jurisdiction_id, year, jurisdiction_name, jurisdiction_description, cross_survey_id)
VALUES
(2, 2002, 2023, 'Utah', 'Utah State Tax Commission', 45),
(2, 2003, 2023, 'Washington, D.C.', 'Office of Tax and Revenue', 49),
(2, 2004, 2023, 'South Africa', 'Rates Watch (Pty) Ltd', 66),
(2, 2005, 2023, 'Texas', 'Texas Comptroller of Public Accounts',44),
(2, 2006, 2023, 'Delaware', 'Sussex County Government', 8),
(2, 2007, 2023, 'Northwest Territories', 'Government of the Northwest Territories', 58),
(2, 2008, 2023, 'Netherlands', 'Netherlands Council for Real Estate Assessment' ,67),
(2, 2009, 2023, 'North Carolina', 'North Carolina Department of Revenue',34),
(2, 2010, 2023, 'Alabama', 'Alabama Department of Revenue', 1),
(2, 2011, 2023, 'Indiana', 'Department of Local Government Finance', 15),
(2, 2012, 2023, 'Ontario', 'Municipal Property Assessment Corporation', 61),
(2, 2013, 2023, 'Illinois', 'Illinois Department of Revenue', 14),
(2, 2014, 2023, 'Pennsylvania', 'State Tax Equalization Board', 39),
(2, 2015, 2023, 'Washington', 'Washington State Department of Revenue', 48),
(2, 2016, 2023, 'Slovenia', 'Ministry of Finance', 68),
(2, 2017, 2023, 'Saskatchewan', 'Saskatchewan Assessment Management Agency',64),
(2, 2018, 2023, 'New Brunswick', 'Service New Brunswick - Property Assessment Services', 56),
(2, 2019, 2023, 'Arkansas', 'Arkansas Assessment Coordination Division', 4),
(2, 2020, 2023, 'Massachusetts', 'Division of Local Services, Bureau of Local Assessment', 22),
(2, 2021, 2023, 'South Dakota', 'Department of Revenue',42),
(2, 2022, 2023, 'California','Board of Equalization', 5),
(2, 2023, 2023, 'Alberta','Alberta Municipal Affairs', 53),
(2, 2024, 2023, 'Kentucky', 'Department of Revenue / Office of Property Valuation', 18),
(2, 2025, 2023, 'Arizona','Arizona Department of Revenue - Local Jurisdictions District',3),
(2, 2026, 2023, 'Alaska', 'Office of the State Assessor', 2),
(2, 2027, 2023, 'Utah', 'Utah State Tax Commission', 45),
(2, 2028, 2023, 'Northern Territory', 'Department for Infrastructure Planning and Logistics', 69),
(2, 2029, 2023, 'Georgia','Georgia Department of Revenue, Local Government Services',10),
(2, 2030, 2023, 'Taipei City', 'Taipei City Government', 70),
(2, 2031, 2023, 'Nebraska','Department of Revenue, Property Assessment Division', 28),
(2, 2032, 2023, 'Montana','Department of Revenue', 27),
(2, 2033, 2023, 'China', 'China Institute of Real Estate Appraisers and Agents', 71),
(2, 2034, 2023, 'Taipei City','Taipei City Government', 70),
(2, 2035, 2023, 'Florida','Florida Department of Revenue',9),
(2, 2036, 2023, 'Estonia', 'Kinnisvaraekspert OU',72),
(2, 2037, 2023, 'Oregon', 'Oregon Department of Revenue', 38),
(2, 2038, 2023, 'Florida','Florida Department of Revenue',9),
(2, 2039, 2023, 'Hong Kong','Rating and Valuation Department', 73),
(2, 2040, 2023, 'Tennessee','Tennessee Comptroller of the Treasury', 43),
(2, 2041, 2023, 'Mississippi','Mississippi Department of Revenue', 25),
(2, 2042, 2023, 'Kansas','Kansas Division of Property Valuation', 17),
(2, 2043, 2023, 'Connecticut','Office of Policy and Management', 7),
(2, 2044, 2023, 'Saskatchewan','Saskatchewan Assessment Management Agency (SAMA)', 64),
(2, 2045, 2023, 'Slovenia','Republic of Slovenia, Ministry of Finance',68),
(2, 2046, 2023, 'Vermont','Vermont Department of Taxes', 46),
(2, 2047, 2023, 'New Zealand','Land Information New Zealand', 74),
(2, 2048, 2023, 'Hawaii', 'County of Maui - Real Property Assessment Division',11), /*maui*/
(2, 2049, 2023, 'Minnesota', 'Minnesota Department of Revenue', 24),
(2, 2050, 2023, 'Missouri', 'State Tax Commission of Missouri', 26),
(2, 2051, 2023, 'Wyoming', 'Wyoming Department of Revenue - Property Tax Division', 52),
(2, 2052, 2023, 'Manitoba', 'Municipal Relations, Property Assessment Services Branch',55),
(2, 2053, 2023, 'Oklahoma', 'Oklahoma Tax Commission',37),
(2, 2054, 2023, 'North Dakota', 'Office of State Tax Commissioner', 35),
(2, 2055, 2023, 'New Brunswick', 'Service New Brunswick - Property Assessment Services', 56),
(2, 2056, 2023, 'New Jersey', 'Division of Taxation',31),
(2, 2057, 2023, 'North Carolina', 'North Carolina Department of Revenue', 34),
(2, 2058, 2023, 'Western Australia', 'West Australian Land Information Authority (t/as Landgate)', 75),
(2, 2059, 2023, 'Hong Kong', 'Rating and Valuation Department',73),
(2, 2060, 2023, 'Maryland', 'Maryland Department of Assessments and Taxation',21),
(2, 2061, 2023, 'Rhode Island', 'Town of Smithfield',40),
(2, 2062, 2023, 'Taipei City', 'Taipei City Government', 70),
(2, 2063, 2023, 'Idaho', 'Idaho State Tax Commission', 13),
(2, 2064, 2023, 'Netherlands', 'Netherlands Council for Real Estate Assessment', 67),
(2, 2065, 2023, 'South Carolina', 'South Carolina Department of Revenue', 41),
(2, 2066, 2023, 'Iowa', 'Iowa Department of Revenue', 16),
(2, 2067, 2023, 'British Columbia', 'BC Assessment',54),
(2, 2068, 2023, 'Wisconsin', 'Wisconsin Department of Revenue', 51),
(2, 2069, 2023, 'Newfoundland and Labrador', 'Municipal Assessment Agency Inc.', 76)

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 
(select jurisdiction_country
FROM iaao_surveys.DBO.jurisdictions j2
where iaao_surveys.dbo.jurisdictions.cross_survey_id = j2.cross_survey_id and j2.year = 2017)
commit

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 
(select jurisdiction_type
FROM iaao_surveys.DBO.jurisdictions j2
where iaao_surveys.dbo.jurisdictions.cross_survey_id = j2.cross_survey_id and j2.year = 2017)
commit


begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'South Africa'
WHERE jurisdiction_id = 2004
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Country'
WHERE jurisdiction_id = 2004
commit

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Netherlands'
WHERE jurisdiction_id = 2008
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Country'
WHERE jurisdiction_id = 2008
commit

select * from jurisdictions where jurisdiction_country is null or jurisdiction_type is null

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Slovenia'
WHERE jurisdiction_id = 2016
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Country'
WHERE jurisdiction_id = 2016
commit

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Australia'
WHERE jurisdiction_id = 2028
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Territory'
WHERE jurisdiction_id = 2028
commit


begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Taiwan (Republic of China)'
WHERE cross_survey_id = 70
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'City'
WHERE cross_survey_id = 70
commit

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'China'
WHERE cross_survey_id = 71
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Country'
WHERE cross_survey_id = 71
commit

select * from jurisdictions where jurisdiction_country is null or jurisdiction_type is null

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Estonia'
WHERE cross_survey_id = 72
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Country'
WHERE cross_survey_id = 72
commit

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'China'
WHERE cross_survey_id = 73
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Territory'
WHERE cross_survey_id = 73
commit

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Slovenia'
WHERE cross_survey_id = 68
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Country'
WHERE cross_survey_id = 68
commit

select * from jurisdictions where jurisdiction_country is null or jurisdiction_type is null

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'New Zealand'
WHERE cross_survey_id = 74
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Country'
WHERE cross_survey_id = 74
commit

begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Australia'
WHERE cross_survey_id = 75
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'State'
WHERE cross_survey_id = 75
commit


begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Netherlands'
WHERE cross_survey_id = 67
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Country'
WHERE cross_survey_id = 67
commit


begin tran
update iaao_surveys.dbo.jurisdictions
set jurisdiction_country = 'Canada'
WHERE cross_survey_id = 76
update iaao_surveys.dbo.jurisdictions
set jurisdiction_type = 'Province'
WHERE cross_survey_id = 76
commit