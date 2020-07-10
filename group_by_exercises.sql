# Use the GROUP BY clause to create more complex queries
# Create a new file named group_by_exercises.sql.
use employees;

describe titles;


# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
#
# distinct title from titles
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager
select distinct title
from titles;

select title, count(*)
from titles
group by title;





# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
# Eldridge
# Erbe
# Erde
# Erie
# Etalle


# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
group by first_name, last_name
order by last_name;



#     Find the unique last names with a 'q' but not 'qu'. Your results should be:
#
#
#     Chleq
#     Lindqvist
#     Qiwen
#     Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name not LIKE '%qu%'
group by last_name
order by last_name;








SELECT count(gender), gender
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
group by gender;





#

#
# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
#
#
# 441 M
# 268 F