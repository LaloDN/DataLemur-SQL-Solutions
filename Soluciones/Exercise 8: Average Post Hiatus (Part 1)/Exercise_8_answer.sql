SELECT user_id,
        MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
FROM posts WHERE
user_id in (
            SELECT user_id FROM posts 
            WHERE DATE_PART('year',post_date::DATE)=2021
            GROUP BY user_id
            HAVING count(user_id)>1)
GROUP by user_id;