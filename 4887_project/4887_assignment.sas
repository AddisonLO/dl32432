/*
proc import
  out= DATA.ASSIGNMENT4887
  datafile='/home/u62649154/LabFolder/Project_Housing.csv'
  dbms=csv
  replace;
  
run;
*/



/*show first 5-10 rows*/
proc SQL outobs=7;
   create table renting as 
   SELECT price FROM DATA.ASSIGNMENT4887;
   
select * from renting;
   

/*most number of the bathroom on average*/
proc SQL;
     create table bathaverage as 
     SELECT AVG(baths) as highAvg,types FROM DATA.ASSIGNMENT4887
     GROUP BY types
     ORDER BY highAvg DESC;
     
Select * from bathaverage;

run;

proc sgplot data=bathaverage;
  title "most number of the bathroom on average";
  vbar types / response=highAvg;
  
run;
title;



/*most common property*/
proc SQL;
   create table common as 
   SELECT types, count(*) as count FROM DATA.ASSIGNMENT4887
   GROUP BY types;
   
Select * from common;



proc sgplot data=common;
  title "most common property";
  vbar types / response=count;
  
run;
title;

/*value distribution of the number of Reception*/
proc SQL;
   create table distribution as
   SELECT types, (reception+receptions) as Reception FROM DATA.ASSIGNMENT4887;
   
Select * from distribution;





   
proc sgpie data=distribution;
  title "value distribution of the number of Reception";
  pie types / response=Reception;
  
  
run;
title;

/*second most turnover*/
proc SQL;
  create table relationship as 
     SELECT DISTINCT SUM(price) as total, types FROM DATA.ASSIGNMENT4887
     GROUP BY types;
     
Select * from relationship;


proc sgplot data=relationship;
  title "second most turnover";
  vbar types / response=total;
  
run;
title;


/*relationship between the number of bedrooms, bathrooms between average price*/
proc sql;
  create table bathBed_price as 
  SELECT DISTINCT types, (bed+beds) as Bed,(bath+bath) as Bath, AVG(price) as avg
  FROM DATA.ASSIGNMENT4887
  GROUP BY types;
 
select * from bathBed_price;

  
proc sgscatter data=bathBed_price;
   plot Bed*avg Bath*avg;
run;

  

     


