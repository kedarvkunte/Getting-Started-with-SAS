data salaryemp(keep=salary rename=salary=salaryemp);
infile "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\salary (2).txt";
input year salary;
run;

proc print data=salaryemp(firstobs=2 obs=4);
run;
