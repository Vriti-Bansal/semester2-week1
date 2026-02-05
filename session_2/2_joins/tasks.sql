-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 social.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit
SELECT content from posts WHERE deleted = 1;
SELECT username from users where username like 'a%'; 
SELECT users.username,posts.content from users JOIN posts  ON users.id=posts.user_id where posts.content LIKE '%small%';
SELECT users.username,posts.content,posts.created_on from users JOIN posts ON users.id=posts.user_id where posts.deleted=0 order by posts.created_on ASC;
SELECT users.username, COUNT(posts.content) from users JOIN posts ON users.id=posts.user_id group by users.username;
SELECT users.username, COUNT(posts.content) from users JOIN posts ON users.id=posts.user_id group by users.username HAVING count(posts.content)>3;
SELECT users.username,COUNT(follows.following_user_id) from users LEFT JOIN follows on users.id=follows.following_user_id group by users.username;
SELECT users.username,COUNT(follows.followed_user_id) from users JOIN follows on users.id=follows.followed_user_id group by users.username ORDER BY follows.followed_user_id DESC LIMIT 5;
SELECT follower.username AS follower_username,
       followed.username AS followed_username
FROM follows
JOIN users AS follower
  ON follower.id = follows.follower_user_id
JOIN users AS followed
  ON followed.id = follows.followed_user_id;