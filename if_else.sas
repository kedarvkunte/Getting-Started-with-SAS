data sales2;
input name$ Sales_1-Sales_4;
total=Sales_1+Sales_2+Sales_3+Sales_4;
/*Fired='';*/
Performance='';
if total<=10 then 
DO;
performance='l';
Fired_Chance=0.8;
end;
else if total<=50 then
DO;
performance='a';
Fired_Chance=0.4;
end;
else 
DO;
performance='h';
Fired_Chance=0.1;
end;
datalines;
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
run;

proc print data=sales;
run;





