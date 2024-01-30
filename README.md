# iaao_survey_sql_generator
Generates sql statements to create tables with survey data by reading survey data published in xlsx

## progress update
The functions to generate SQL cover the most laborious part of the SQL statement generation, which would be creating the records for insertion to dbo.responses_detail. The functions could be modified to potentially generate SQL for other tables - need to verify this - but possibly for dbo.sub_questions as well.
