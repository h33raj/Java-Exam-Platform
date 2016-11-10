create table register(username varchar(100),password varchar(100),id varchar(100) primary key);
create table teachers(name varchar(100),facultyid varchar(100) primary key, subject varchar(100));
create table student(Name varchar(100),sid varchar(100) primary key,class varchar(10));
create table qa(questionid varchar(100) primary key,facultyid varchar(100),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),foreign key(facultyid) references teachers(facultyid));
create table solution(questionid varchar(100),sid varchar(100),response integer,foreign key(questionid) references qa,foreign key(sid) references student);
