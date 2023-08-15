-- 以下にクエリを書いてください
SELECT
    p.id AS post_id,
    p.content AS content
FROM
    post_tags pt
JOIN posts p ON pt.post_id = p.id
JOIN tags t ON pt.tag_id = t.id
WHERE t.name = 'programming'
ORDER BY p.id;
