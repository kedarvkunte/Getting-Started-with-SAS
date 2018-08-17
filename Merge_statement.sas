data houseprice4;
infile "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\houseprice.txt";
input type$ price tax;
run;

data newhomes1;
infile "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\newhomes (2).txt";
input type$ price tax;
run;

proc sort data=houseprice4 out=houseprice4_desc;
by descending price;
run;

proc sort data=newhomes1 out=newhomes1_desc;
by descending price;
run;

data newcollections_desc;
merge houseprice4_desc newhomes1_desc;
by descending price;
run;

proc sort data=houseprice4 out=houseprice4_asc;
by  price;
run;

proc sort data=newhomes1 out=newhomes1_asc;
by  price;
run;

data newcollections_asc;
merge houseprice4_asc newhomes1_asc;
by  price;
run;



