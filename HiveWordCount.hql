create database countword;

use countword;

create table input(text_line string);

load data local inpath '/home/pavan-linux/WordCount/HadoopInfo' into table input;

create table wordcount as select explode(split(text_line,' ')) as word from input;

select word, COUNT(*) from wordcount GROUP BY word;
