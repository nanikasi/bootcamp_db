-- 以下にクエリを書いてください
SELECT tags.name, post_count.count AS posts_count
FROM tags
LEFT JOIN (
	SELECT tag_id, COUNT(*) AS count
	FROM post_tags
	GROUP BY tag_id
) AS post_count
ON tags.id = post_count.tag_id
WHERE post_count.count >= 12
ORDER BY post_count.count DESC, tags.name;