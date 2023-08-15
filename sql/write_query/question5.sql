-- 以下にクエリを書いてください
SELECT posts.id AS post_id, posts.content AS content, COALESCE(likes_count.count, 0) AS likes_count
FROM posts
LEFT JOIN (
	SELECT post_id, COUNT(*) AS count
	FROM likes
	GROUP BY post_id
) AS likes_count
ON likes_count.post_id = posts.id
ORDER BY likes_count.count DESC, posts.posted_at DESC;
