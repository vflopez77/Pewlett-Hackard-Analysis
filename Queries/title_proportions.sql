-- Getting percentages for retiring and mentorship titles
SELECT rt.title,
rt.count as retiring_count,
-- Casting INTs as NUMERIC (FLOAT) to get decimal places
ROUND((CAST(rt.count AS NUMERIC)/CAST((SELECT SUM(count) FROM retiring_titles) AS NUMERIC) * 100),2) as retiring_percentage,
mt.mentorship_count,
-- Casting INTs as NUMERIC (FLOAT) to get decimal places
ROUND((CAST(mt.mentorship_count AS NUMERIC)/CAST((SELECT SUM(mentorship_count) FROM mentorship_titles) AS NUMERIC) * 100),2) as mentorship_percentage
FROM retiring_titles as rt
INNER JOIN mentorship_titles as mt
ON rt.title = mt.title
ORDER BY rt.count DESC