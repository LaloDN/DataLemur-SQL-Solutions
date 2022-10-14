SELECT pag.page_id
FROM pages as pag
LEFT JOIN page_likes as pal on pag.page_id=pal.page_id
WHERE pal.user_id is NULL
ORDER BY pag.page_id ASC;