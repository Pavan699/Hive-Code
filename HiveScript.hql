
create database csvdata;

use csvdata;

create external table csvtbl(id int,address string,name string,road_no int,no1 float,no2 float,no3 float,place string,dept string,ratio float)
row format delimited
fields terminated by ','
location '/CSVFile';

select * from csvtbl;

