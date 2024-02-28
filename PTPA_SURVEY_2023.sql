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
	(2, 2023, 8, NULL, 2, 'Managerial & administrative')
	(2, 2023, 8, NULL, 3, 'Clerical/support')
	(2, 2023, 8, NULL, 4, 'Computer - software & support')
	(2, 2023, 8, NULL, 5, 'Mapping/GIS')
	(2, 2023, 8, NULL, 6, 'Other')
	
	
;

/* need to create responses_categories */
INSERT INTO responses_categories	
([questionnaire_id], [year], [question_id], [category_id], [category_desc])
VALUES
	--(2, 2017, 16, 1601, 'Confidential by State/Province Statute'),
	;