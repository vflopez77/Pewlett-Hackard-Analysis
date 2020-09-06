-- Get title count from mentorship eligibility table
SELECT COUNT(emp_no) AS mentorship_count, title
INTO mentorship_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(emp_no) DESC;
