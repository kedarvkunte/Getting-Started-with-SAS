data sales3;
input name$ Sales_1-Sales_4;
total=Sales_1+Sales_2+Sales_3+Sales_4;
datalines;
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
run;

proc sql;
select total from sales
where total>50;

proc print data=sales3(where=(total>50));
run;

proc print data=sales3;
where total>50;
run;

