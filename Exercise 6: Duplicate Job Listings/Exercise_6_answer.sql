SELECT SUM(counts) AS co_w_duplicate_jobs
FROM
(SELECT COUNT(*)-1 AS counts FROM job_listings GROUP BY company_id,title, description)
AS Subquery;