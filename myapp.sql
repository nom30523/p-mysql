drop table if exists posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text,
  created datetime default current_timestamp,
  updated datetime default current_timestamp on update current_timestamp
);

drop table if exists logs;
create table logs (
  id int unsigned primary key auto_increment,
  msg varchar(255)
);

drop trigger if exists posts_update_trigger;
delimiter //
create trigger posts_update_trigger after update on posts for each row
  begin
    insert into logs (msg) values ('post updated!');
    insert into logs (msg) values (concat(old.title, ' -> ', new.title));
  end;
//
delimiter ;

insert into posts (title, body) value ('title 1', 'body 1');
insert into posts (title, body) value ('title 2', 'body 2');
insert into posts (title, body) value ('title 3', 'body 3');

update posts set created = '2016-12-31 10:00:00' where id = 2;

select * from posts where created > '2017-01-01';
select created, date_add(created, interval 14 day) from posts;
select created, date_add(created, interval 2 week) from posts;
select created, date_format(created, '%W %M %Y') from posts;
