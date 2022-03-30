SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

SELECT SUM(score)
FROM hacker_news;

SELECT user, SUM(score)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200
ORDER BY 2 desc;

SELECT (517.0 + 309.0 + 304.0 + 282.0) / 6366;

SELECT user, COUNT(*)
FROM hacker_news
GROUP BY user
HAVING url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
ORDER BY COUNT(*) desc;

SELECT CASE
  WHEN url LIKE '%github.com%' THEN 'Github'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Other'
  END AS 'Source', COUNT(*)
FROM hacker_news
GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp, strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT *
FROM hacker_news
LIMIT 10;

SELECT strftime('%H', timestamp) AS 'Hours', ROUND(AVG(score), 2) AS 'Average Scores', COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp is NOT NULL
GROUP BY strftime('%H', timestamp)
ORDER BY 1;