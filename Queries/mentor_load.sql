-- Getting percentages of mentorship title vs. retirement titles
SELECT rt.title,
rt.count as retiring_count,
mt.mentorship_count,
-- Divide retiring counts by mentor counts to get mentor load
rt.count/mt.mentorship_count as mentor_load
FROM retiring_titles as rt
INNER JOIN mentorship_titles as mt
ON rt.title = mt.title
ORDER BY rt.count DESC


