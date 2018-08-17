
data compound1;
Interest= 0.0375;
Total= 100;
Year +1;
Total +Interest*Total;
output;
Year +1;
Total +Interest*Total;
output;
Year +1;
Total +Interest*Total;
output;
Year +1;
Total +Interest*Total;
output;
format Total dollar10.2;
run;
proc print data=compound1;
run;

	
data compound2;
Interest= 0.0375;
Total= 100;
do Year=1 to 3;
Total +Interest*Total;
output;
end;
format Total dollar10.2;
run;
proc print data=compound2;
run;


data table1;
do n=1 to 10;
Sqaure=n*n;
Sqaureroot=sqrt(n);
output;
end;
run;
proc print data=table1;
run;


data earnings1;
Amount=1000;
Rate=0.075/12;
do month=1 to 12;
Earned +(Earned+Amount)*Rate;
output;
end;
run;
proc print data=earnings1;
run;

data earnings2;
Amount=1000;
Rate=0.075/12;
do month=1 to 12;
Earned +(Earned+Amount)*Rate;
output;
end;
run;
proc print data=earnings2;
run;



data drug1;
do group="Placebo","Active";
do Subj=1 to 5;
input score@;
output;
end;
end;
datalines;
250 222 230 210 199
166 183 123 129 234
;
proc print data=drug1;
run;


data drug2;
do group="Placebo","Active";
do Subj=1 to 5;
input score;
output;
end;
end;
datalines;
250 222 230 210 199
166 183 123 129 234
;
proc print data=drug2;
run;


data earnings3;
do year=1 to 20;
Capital +2000;
	do month=1 to 12 by 1;
		Interest=Capital*0.075/12;
		Capital +Interest;
	output;
end;
/* DO NOT USE THE 'OUTPUT' WORD BETWEEN TWO END WORDS AS THE USELESS INSTRUCTOR TOLD*/
end;
DROP year month;
run;
proc print data=earnings3;
run;

data double1;
Interest=0.0375;
Total=100;
do until (Total >= 200);
Year +1;
Total +Total*Interest;
output;
end;
format Total dollar10.2;
run;
proc print data=double1;
run;



data capital1;
do until (capital>=50000);
Capital +2000;
Capital +Capital*0.1;
Year +1;
output;
end;
run;
proc print data=capital1;
run;


data double2;
Interest=0.0375;
Total=300;
do until (Total > 200);
Year +1;
Total +Total*Interest;
output;
end;
format Total dollar10.2;
run;
proc print data=double2;
run;


data double3;
Interest=0.0375;
Total=100;
do while (Total < 100);
Year +1;
Total +Total*Interest;
output;
end;
format Total dollar10.2;
run;
proc print data=double3;
run;


data invest1;
do while (Capital>=50000);
Capital +2000;
Capital +Capital*0.10;
Year +1;
output;
end;
run;
proc print data=invest1;
run;


data leave1;
Interest=0.0375;
Total=100;
do year=1 to 100;
Total +Total*Interest;
if Total>= 200 then leave;
output;

end;
format Total dollar10.2;
run;
proc print data=leave1;
run;

data continue1;
Interest=0.0375;
Total=100;
do year=1 to 100 until (Total >= 200);
Total +Total*Interest;
if Total<= 150 then continue;
output;
end;
format Total dollar10.2;
run;
proc print data=continue1;
run;








