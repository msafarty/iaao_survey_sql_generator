INSERT INTO questions
([questionnaire_id], [year], [question_id], [question_num], [question_desc])
VALUES
(2, 2023, 1, 1, 'Please provide information about you.'),
(2, 2023, 2, 2, 'In what country do you live?'),
(2, 2023, 3, 3, 'Is your jurisdiction a nation, state, county, city, province, or other?'),
(2, 2023, 4, 4, 'If your jurisdiction is in the United States, please identify the correct state or U.S. territory.'),
(2, 2023, 5, 5, 'Your Agency'),
(2, 2023, 6, 6, 'Your jurisdiction''s currency symbol'),
(2, 2023, 7, 7, 'How many assessment jurisdictions are under the agency''s oversight?'),
(2, 2023, 8, 8, 'At the state/provincial level, how many full-time-equivalent positions currently are engaged in property assessment administration?'),
(2, 2023, 9, 9, 'At the state/provincial level, what are the primary role(s) of full-time-equivalent positions currently engaged in property assessment administration?'),
(2, 2023, 10, 10, 'What are the roles and authorities of your agency?'),
(2, 2023, 11, 11, 'Does your state/province provide a website for any of the following listed categories? (Check all that apply)')
(2, 2023, 12, 12, 'How many of each property type are assessed in your State (in United States)?');
(2, 2023, 13, 13, 'What properties, if any, are centrally assessed under your agency''s jurisdiction?');
)
;



INSERT INTO sub_questions
([questionnaire_id], [year], [question_id], [category_id], [sub_question_id], [sub_question])
VALUES
	(2, 2023, 1, NULL, 1, 'Your Name'),
	(2, 2023, 1, NULL, 2, 'Your email'),
	(2, 2023, 1, NULL, 3, 'Your phone number'),
	(2, 2023, 1, NULL, 4, 'Your current title and division within your agency'),
	(2, 2023, 5, NULL, 1, 'Full agency name'),
	(2, 2023, 5, NULL, 2, 'Jurisdiction'),
	(2, 2023, 5, NULL, 3, 'Agency website address'),
  (2, 2023, 8, NULL, 1, 'Professional/technical (including appraisers & analysts)'),
	(2, 2023, 8, NULL, 2, 'Managerial & administrative'),
	(2, 2023, 8, NULL, 3, 'Clerical/support'),
	(2, 2023, 8, NULL, 4, 'Computer - software & support'),
	(2, 2023, 8, NULL, 5, 'Mapping/GIS'),
	(2, 2023, 8, NULL, 6, 'Other'),
  (2, 2023, 9, NULL, 1, 'Professional/technical (including appraisers & analysts)'),
	(2, 2023, 9, NULL, 2, 'Managerial & administrative'),
	(2, 2023, 9, NULL, 3, 'Clerical/support'),
	(2, 2023, 9, NULL, 4, 'Computer - software & support'),
	(2, 2023, 9, NULL, 5, 'Mapping/GIS'),
	(2, 2023, 9, NULL, 6, 'Other'),
	(2, 2023, 9, NULL, 7, 'For any other significant role, please provide further explanation'),
  (2, 2023, 10, NULL, 1, 'Standard setting'),
  (2, 2023, 10, NULL, 2, 'Education'),
  (2, 2023, 10, NULL, 3, 'Credentialing'),
  (2, 2023, 10, NULL, 4, 'Providing reference materials'),
  (2, 2023, 10, NULL, 5, 'Technical advice'),
  (2, 2023, 10, NULL, 6, 'Conduct equalization studies'),
  (2, 2023, 10, NULL, 7, 'Performance audits required by law'),
  (2, 2023, 10, NULL, 8, 'Performance audits required by request only'),
  (2, 2023, 10, NULL, 9, 'Have authority to compel reassessments'),
  (2, 2023, 10, NULL, 10, 'Have authority for direct equalization'),
  (2, 2023, 10, NULL, 11, 'Have authority for indirect equalization'),
  (2, 2023, 10, NULL, 12, 'Conduct statewide assessment'),
  (2, 2023, 10, NULL, 13, 'Approve roll'),
  (2, 2023, 10, NULL, 14, 'Certify revaluation'),
  (2, 2023, 10, NULL, 15, 'Provide legal advice'),
  (2, 2023, 10, NULL, 16, 'Review and/or approve tax relief claims'),
  (2, 2023, 10, NULL, 17, 'Review and/or approve taxing district levies'),
  (2, 2023, 10, NULL, 18, 'For any other significant role, please provide further explanation'),
  (2, 2023, 11, NULL, 1, 'Business Property Tax Incentives'),
  (2, 2023, 11, NULL, 2, 'Annual Reports'),
	(2, 2023, 11, NULL, 3, 'Ratio Study Results'),
	(2, 2023, 11, NULL, 4, 'Local Assessed Values/Abstract'),
	(2, 2023, 11, NULL, 5, 'Property Tax Appeals Information/Reporting'),
	(2, 2023, 11, NULL, 6, 'Assessor Manual and/or Guidelines'),
	(2, 2023, 11, NULL, 7, 'Compensation/Salary Survey'),
	(2, 2023, 11, NULL, 8, 'Tax Increment Financing (TIF) District Reporting'),
	(2, 2023, 11, NULL, 9, 'Open Data Portal'),
	(2, 2023, 11, NULL, 10, 'Statewide Mapping/GIS Site'),
	(2, 2023, 12, NULL, 1, 'Real property parcels (#)'),
	(2, 2023, 12, NULL, 2, 'Personal property records (#)'),
	(2, 2023, 12, NULL, 3, 'Centrally assessed (#)'),
	(2, 2023, 12, NULL, 4, 'Comment?'),
	--make category? eh...
	(2, 2023, 13, NULL, 1, 'All are assessed - Real'),
	(2, 2023, 13, NULL, 2, 'All are assessed - Personal property'),
	(2, 2023, 13, NULL, 3, 'All are assessed - Operating'),
	
	
	
	
	
;

/* need to create responses_categories */
INSERT INTO responses_categories	
([questionnaire_id], [year], [question_id], [category_id], [category_desc])
VALUES
	--first category survey pg7?
	;