
create table shell_example
(id INT ,
username VARCHAR(100),
password varchar(100));

insert into shell_example values (101,'udajhvd','jasd');
insert into shell_example values (103,'skjx','jasd'); 

update shell_example set id=102 where id=101;

delete from shell_example where id =102;