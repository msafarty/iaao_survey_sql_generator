select qn.questionnaire_name, j.jurisdiction_name, j.jurisdiction_type, q.question_id, q.question_num, q.question_desc, sq.sub_question_id, sq.sub_question, rc.category_id, rc.category_desc, rd.response
from 
dbo.responses_detail rd
join dbo.jurisdictions j on rd.jurisdiction_id = j.jurisdiction_id
join dbo.questionnaire qn on rd.questionnaire_id = qn.questionnaire_id
join dbo.questions q on qn.questionnaire_id = q.questionnaire_id  and rd.question_id = q.question_id and rd.year = q.year
left join dbo.responses_categories rc ON q.question_id = rc.question_id and qn.questionnaire_id = rc.questionnaire_id and q.year = rc.year and rd.category_id = rc.category_id 
left join dbo.sub_questions sq on q.question_id = sq.question_id and qn.questionnaire_id = sq.questionnaire_id and q.year = sq.year and rd.sub_question_id = sq.sub_question_id 
-- and rd.category_id = sq.category_id
--left join dbo.responses r on q.question_id = r.question_id and qn.questionnaire_id = r.questionnaire_id and q.year = r.year
where q.year = 2017  --and q.question_num = 8 and j.jurisdiction_id = 1001
order by j.jurisdiction_name, q.question_num asc

