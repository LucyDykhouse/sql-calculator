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
SELECT grade, project_title, first_name || ' ' || last_name student_name
FROM grades
JOIN students ON github = student_github;
-- Result:
-- grade    project_title   student_name
-- 10	"News Aggregator"	"Jane Hacker"
-- 50	"News Aggregator"	"Sarah Developer"
-- 2	"Snake Game"	"Jane Hacker"
-- 100	"Snake Game"	"Sarah Developer"


-- Produce a result set that shows each project, project id, and the number of grades that exist for that project. You will need to JOIN the projects and grades table.
SELECT p.title, p.id, COUNT(g.project_title)
FROM projects p
JOIN grades g ON p.title = g.project_title
GROUP BY p.title, p.id;
-- Result:
-- title                id      count
-- "Snake Game"	        1	    11
-- "News Aggregator"    2	    2


-- Filtering Using Aggregates

-- How many scores for the News Aggregator project were above the average score?
SELECT COUNT(grade)
FROM grades
WHERE grade >
    (SELECT AVG(grade) FROM grades 
    WHERE project_title = 'News Aggregator')
AND project_title = 'News Aggregator';
-- Result: count = 1

-- How many scores for the Snake Game were equal to the maximum score?
SELECT COUNT(grade)
FROM grades
WHERE grade =
    (SELECT MAX(grade) FROM grades WHERE project_title = 'Snake Game')
AND project_title = 'Snake Game';
-- Result: count = 4

-- Which projects have at least 5 grades in the grades table?

