use iaao_surveys
go

/* this was made to generate a spreadsheet to do the manual process of figuring out which subQs/categories should be matched with which others from the other survey */

/* basic data required */
select * from (
select distinct qn.questionnaire_name, 
q.question_num, q.question_desc,
case 
when q.question_num = 1 then 1 
when q.question_num = 5 and q.year = 2023 then 2
when q.question_num = 3 and q.year = 2017 then 2
when q.question_num = 8 and q.year = 2023 then 3
when q.question_num = 4 and q.year = 2017 then 3
when q.question_num = 10 and q.year = 2023 then 4
when q.question_num = 5 and q.year = 2017 then 4
when q.question_num = 11 and q.year = 2023 then 5
when q.question_num = 34 and q.year = 2017 then 5
when q.question_num = 12 and q.year = 2023 then 6
when q.question_num = 6 and q.year = 2017 then 6
when q.question_num = 13 and q.year = 2023 then 7
when q.question_num = 8 and q.year = 2017 then 7
when q.question_num = 15 and q.year = 2023 then 8
when q.question_num = 9 and q.year = 2017 then 8
when q.question_num = 28 and q.year = 2023 then 9
when q.question_num = 11 and q.year = 2017 then 9
when q.question_num = 32 and q.year = 2023 then 10
when q.question_num = 12 and q.year = 2017 then 10
when q.question_num = 33 and q.year = 2023 then 11
when q.question_num = 14 and q.year = 2017 then 11
when q.question_num = 35 and q.year = 2023 then 12
when q.question_num = 16 and q.year = 2017 then 12
when q.question_num = 36 and q.year = 2023 then 13
when q.question_num = 17 and q.year = 2017 then 13
when q.question_num = 37 and q.year = 2023 then 14
when q.question_num = 18 and q.year = 2017 then 14
when q.question_num = 38 and q.year = 2023 then 15
when q.question_num = 19 and q.year = 2017 then 15
when q.question_num = 39 and q.year = 2023 then 16
when q.question_num = 20 and q.year = 2017 then 16
when q.question_num = 40 and q.year = 2023 then 17
when q.question_num = 21 and q.year = 2017 then 17
when q.question_num = 45 and q.year = 2023 then 18
when q.question_num = 22 and q.year = 2017 then 18
when q.question_num = 46 and q.year = 2023 then 19
when q.question_num = 25 and q.year = 2017 then 19
when q.question_num = 47 and q.year = 2023 then 20
when q.question_num = 26 and q.year = 2017 then 20
when q.question_num = 49 and q.year = 2023 then 21
when q.question_num = 27 and q.year = 2017 then 21
when q.question_num = 51 and q.year = 2023 then 22
when q.question_num = 28 and q.year = 2017 then 22
when q.question_num = 54 and q.year = 2023 then 23
when q.question_num = 30 and q.year = 2017 then 23
when q.question_num = 55 and q.year = 2023 then 24
when q.question_num = 31 and q.year = 2017 then 24
when q.question_num = 56 and q.year = 2023 then 25
when q.question_num = 32 and q.year = 2017 then 25
when q.question_num = 57 and q.year = 2023 then 26
when q.question_num = 23 and q.year = 2017 then 26
when q.question_num = 58 and q.year = 2023 then 27
when q.question_num = 24 and q.year = 2017 then 27
when q.question_num = 59 and q.year = 2023 then 28
when q.question_num = 33 and q.year = 2017 then 28
when q.question_num = 61 and q.year = 2023 then 29
when q.question_num = 29 and q.year = 2017 then 29
when q.question_num = 62 and q.year = 2023 then 30
when q.question_num = 35 and q.year = 2017 then 30
when q.question_num = 65 and q.year = 2023 then 31
when q.question_num = 36 and q.year = 2017 then 31
when q.question_num = 66 and q.year = 2023 then 32
when q.question_num = 37 and q.year = 2017 then 32
when q.question_num = 68 and q.year = 2023 then 33
when q.question_num = 38 and q.year = 2017 then 33
when q.question_num = 69 and q.year = 2023 then 34
when q.question_num = 40 and q.year = 2017 then 34
when q.question_num = 80 and q.year = 2023 then 35
when q.question_num = 43 and q.year = 2017 then 35

end [matched_question],
sq.sub_question_id, sq.sub_question, q.year--, 
--rc.category_id, rc.category_desc
from 
dbo.responses_detail rd --detailed responses
join dbo.jurisdictions j on rd.jurisdiction_id = j.jurisdiction_id and rd.questionnaire_id = j.questionnaire_id and rd.year = j.year--jurisdictional info
join dbo.questionnaire qn on rd.questionnaire_id = qn.questionnaire_id --which survey is this?
join dbo.questions q on qn.questionnaire_id = q.questionnaire_id  and rd.question_id = q.question_id and rd.year = q.year -- get questions for this survey, year combo
left join dbo.responses_categories rc ON q.question_id = rc.question_id and qn.questionnaire_id = rc.questionnaire_id and q.year = rc.year and rd.category_id = rc.category_id --get categories, should left join as some questions have no (NULL) category.
left join dbo.sub_questions sq on q.question_id = sq.question_id and qn.questionnaire_id = sq.questionnaire_id and q.year = sq.year and rd.sub_question_id = sq.sub_question_id --get sub-questions, should left join as some questions have no (NULL) sub question.
/* was a table intended to show responses to each question, but we can functionally just query response = "NA" instead. rather not do manual work: */
--left join dbo.responses r on q.question_id = r.question_id and qn.questionnaire_id = r.questionnaire_id and q.year = r.year
where q.year in (2017, 2023)  --and q.question_num = 8 and j.jurisdiction_id = 1001
) base where [matched_question] is not null and matched_question > 2
order by matched_question asc


use iaao_surveys
go


/* basic data required */
select * from (
select distinct qn.questionnaire_name, 
q.question_num, q.question_desc,
case 
when q.question_num = 1 then 1 
when q.question_num = 5 and q.year = 2023 then 2
when q.question_num = 3 and q.year = 2017 then 2
when q.question_num = 8 and q.year = 2023 then 3
when q.question_num = 4 and q.year = 2017 then 3
when q.question_num = 10 and q.year = 2023 then 4
when q.question_num = 5 and q.year = 2017 then 4
when q.question_num = 11 and q.year = 2023 then 5
when q.question_num = 34 and q.year = 2017 then 5
when q.question_num = 12 and q.year = 2023 then 6
when q.question_num = 6 and q.year = 2017 then 6
when q.question_num = 13 and q.year = 2023 then 7
when q.question_num = 8 and q.year = 2017 then 7
when q.question_num = 15 and q.year = 2023 then 8
when q.question_num = 9 and q.year = 2017 then 8
when q.question_num = 28 and q.year = 2023 then 9
when q.question_num = 11 and q.year = 2017 then 9
when q.question_num = 32 and q.year = 2023 then 10
when q.question_num = 12 and q.year = 2017 then 10
when q.question_num = 33 and q.year = 2023 then 11
when q.question_num = 14 and q.year = 2017 then 11
when q.question_num = 35 and q.year = 2023 then 12
when q.question_num = 16 and q.year = 2017 then 12
when q.question_num = 36 and q.year = 2023 then 13
when q.question_num = 17 and q.year = 2017 then 13
when q.question_num = 37 and q.year = 2023 then 14
when q.question_num = 18 and q.year = 2017 then 14
when q.question_num = 38 and q.year = 2023 then 15
when q.question_num = 19 and q.year = 2017 then 15
when q.question_num = 39 and q.year = 2023 then 16
when q.question_num = 20 and q.year = 2017 then 16
when q.question_num = 40 and q.year = 2023 then 17
when q.question_num = 21 and q.year = 2017 then 17
when q.question_num = 45 and q.year = 2023 then 18
when q.question_num = 22 and q.year = 2017 then 18
when q.question_num = 46 and q.year = 2023 then 19
when q.question_num = 25 and q.year = 2017 then 19
when q.question_num = 47 and q.year = 2023 then 20
when q.question_num = 26 and q.year = 2017 then 20
when q.question_num = 49 and q.year = 2023 then 21
when q.question_num = 27 and q.year = 2017 then 21
when q.question_num = 51 and q.year = 2023 then 22
when q.question_num = 28 and q.year = 2017 then 22
when q.question_num = 54 and q.year = 2023 then 23
when q.question_num = 30 and q.year = 2017 then 23
when q.question_num = 55 and q.year = 2023 then 24
when q.question_num = 31 and q.year = 2017 then 24
when q.question_num = 56 and q.year = 2023 then 25
when q.question_num = 32 and q.year = 2017 then 25
when q.question_num = 57 and q.year = 2023 then 26
when q.question_num = 23 and q.year = 2017 then 26
when q.question_num = 58 and q.year = 2023 then 27
when q.question_num = 24 and q.year = 2017 then 27
when q.question_num = 59 and q.year = 2023 then 28
when q.question_num = 33 and q.year = 2017 then 28
when q.question_num = 61 and q.year = 2023 then 29
when q.question_num = 29 and q.year = 2017 then 29
when q.question_num = 62 and q.year = 2023 then 30
when q.question_num = 35 and q.year = 2017 then 30
when q.question_num = 65 and q.year = 2023 then 31
when q.question_num = 36 and q.year = 2017 then 31
when q.question_num = 66 and q.year = 2023 then 32
when q.question_num = 37 and q.year = 2017 then 32
when q.question_num = 68 and q.year = 2023 then 33
when q.question_num = 38 and q.year = 2017 then 33
when q.question_num = 69 and q.year = 2023 then 34
when q.question_num = 40 and q.year = 2017 then 34
when q.question_num = 80 and q.year = 2023 then 35
when q.question_num = 43 and q.year = 2017 then 35

end [matched_question],
q.year,
rc.category_id, rc.category_desc
from 
dbo.responses_detail rd --detailed responses
join dbo.jurisdictions j on rd.jurisdiction_id = j.jurisdiction_id and rd.questionnaire_id = j.questionnaire_id and rd.year = j.year--jurisdictional info
join dbo.questionnaire qn on rd.questionnaire_id = qn.questionnaire_id --which survey is this?
join dbo.questions q on qn.questionnaire_id = q.questionnaire_id  and rd.question_id = q.question_id and rd.year = q.year -- get questions for this survey, year combo
left join dbo.responses_categories rc ON q.question_id = rc.question_id and qn.questionnaire_id = rc.questionnaire_id and q.year = rc.year and rd.category_id = rc.category_id --get categories, should left join as some questions have no (NULL) category.
left join dbo.sub_questions sq on q.question_id = sq.question_id and qn.questionnaire_id = sq.questionnaire_id and q.year = sq.year and rd.sub_question_id = sq.sub_question_id --get sub-questions, should left join as some questions have no (NULL) sub question.
/* was a table intended to show responses to each question, but we can functionally just query response = "NA" instead. rather not do manual work: */
--left join dbo.responses r on q.question_id = r.question_id and qn.questionnaire_id = r.questionnaire_id and q.year = r.year
where q.year in (2017, 2023)  --and q.question_num = 8 and j.jurisdiction_id = 1001
) base where [matched_question] is not null and matched_question > 2
order by matched_question asc