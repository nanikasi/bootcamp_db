-- 以下にクエリを書いてください
SELECT users.username, posts.content AS latest_post_content
FROM users
LEFT JOIN posts
ON users.id = posts.user_id
WHERE posts.id = (
	SELECT sub_posts.id
	FROM posts AS sub_posts
	where posts.user_id = sub_posts.user_id
	ORDER BY sub_posts.posted_at DESC
	LIMIT 1
)
ORDER BY username;
