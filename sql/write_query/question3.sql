-- 以下にクエリを書いてください
SELECT 
	(
    SELECT
      username
    FROM users USER
    WHERE USER.id = POST.user_id
  ) AS username,
  POST.content,
  POST.posted_at
FROM posts POST
ORDER BY posted_at DESC
LIMIT 20;
