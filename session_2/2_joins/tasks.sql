-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 social.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

SELECT username,content from users join posts ON users.id=posts.user_id where posts.deleted=1;
SELECT username,content from users join posts on users.id=posts.user_id where users.username like 'a%';
SELECT username,content from users join posts on users.id=posts.user_id where posts.content like '%small';