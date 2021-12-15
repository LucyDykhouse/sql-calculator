-- Basic info

-- What is the average grade for the project called News Aggregator? Be sure to use the AVG aggregate function in your query
SELECT AVG(grade) FROM grades
WHERE project_title = 'News Aggregator';
-- Result: avg = 30.0000000


-- What is the sum of all points that the entire class received on the project called Recipe Storage? Be sure to use the SUM aggregate function in your query.
SELECT SUM(grade)
FROM grades
WHERE project_title = 'Recipe Storage';
-- Result: sum = null (no projects of this type recorded)


-- How many total projects are there? Be sure to use the COUNT aggregate function in your query.
SELECT COUNT(project_title)
FROM grades;
-- Result: count = 13


-- What is the maximum grade that students received on the project called News Aggregator? Be sure to use the MAX function in your query.
SELECT MAX(grade)
FROM grades
WHERE project_title = 'News Aggregator';
-- Result: max = 50


-- What is the minimum project that any student received on ANY project? Be sure to use the MIN function in your query.
SELECT MIN(grade)
FROM grades;
-- Result: min = 0


-- Joins

-- Produce a result set that shows each grade, the project title, and the student name for that grade. (You will need to JOIN the grades and students table.)
