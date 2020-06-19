drop table if exists posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text
);
drop table if exists comments;
create table comments (
  id int unsigned primary key auto_increment,
  post_id int not null,
  body text
);

insert into posts (title, body) value ('title 1', 'body 1');
insert into posts (title, body) value ('title 2', 'body 2');
insert into posts (title, body) value ('title 3', 'body 3');

insert into comments (post_id, body) value (1, 'first comment for post 1');
insert into comments (post_id, body) value (1, 'second comment for post 1');
insert into comments (post_id, body) value (3, 'first comment for post 3');
insert into comments (post_id, body) value (4, 'first comment for post 4');

-- select * from posts;
-- select * from comments;

-- select * from posts inner join comments on posts.id = comments.post_id;
-- select * from posts join comments on posts.id = comments.post_id;
-- select posts.id, title, posts.body, comments.body from posts join comments on posts.id = comments.post_id;

select * from posts left outer join comments on posts.id = comments.post_id;
select * from posts right outer join comments on posts.id = comments.post_id;