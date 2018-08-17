
/*
libname mydata "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\60864\SAS_Practice";
data mydata.stress2copy;
	set mydata.stress2;
	
run; 
*/

libname mydata1 "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\60864\Libraries_SAS_Practice";

data mydata1.stress2copy3;
	set mydata1.stress2;
run; 



data clinic;
set mydata1.stress2;
/*infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\stress2.sas7bdat";*/
TotalTime = (timemin*60)+timesec;
retain Sumsec 5400;
if TotalTime>800 then teslength="Long";
else put "Not Long" TotalTime;
run;
proc print data=clinic; run;




data conditional1;
length Gender $1 Quiz$ 2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\CONDITIONAL.TXT";
input Age Gender$ Midterm Quiz$ FinalExam;
if Age<20 then AgeGroup=1;
else if Age>20 and Age<40 then AgeGroup=2;
else if Age>40 and Age<60 then AgeGroup=3;
else if Age>60 then AgeGroup=4;
run;
proc print data=conditional1; run;


data conditional2;
length Gender $1 Quiz$ 2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\CONDITIONAL.TXT";
input Age Gender$ Midterm Quiz$ FinalExam;
if Age<20 and not missing(Age) then AgeGroup=1;
else if Age>20 and Age<40 and not missing(Age) then AgeGroup=2;
else if Age>40 and Age<60 and not missing(Age) then AgeGroup=3;
else if Age>60 and not missing(Age) then AgeGroup=4;
run;
proc print data=conditional2; run;


data conditional3;
length Gender $1 Quiz$ 2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\CONDITIONAL.TXT";
input Age Gender$ Midterm Quiz$ FinalExam;
if Age<20 and Age^="." then AgeGroup=1;
else if Age>20 and Age<40 and Age^="." then AgeGroup=2; /* ^= is same as ne()*/
else if Age>40 and Age<60 and Age^="." then AgeGroup=3;
else if Age>60 and Age^="." then AgeGroup=4;
run;
proc print data=conditional3; run;

	
data conditional4;
length Gender $1 Quiz$ 2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\CONDITIONAL.TXT";
input Age Gender$ Midterm Quiz$ FinalExam;
if missing(Age) then AgeGroup=.; 	/*AgeGroup="."*/
if Age<20 and Age^="." then AgeGroup=1;
else if Age>20 and Age<40 and Age^="." then AgeGroup=2; /* ^= is same as ne()*/
else if Age>40 and Age<60 and Age^="." then AgeGroup=3;
else if Age>60 and Age^="." then AgeGroup=4;
run;
proc print data=conditional4; run;



data school1;
input Age Quiz:$1. Midterm Final;
if Age=12 then Grade=6;
else if Age=13 then Grade=8;
datalines;
12 A 92 95
12 B 88 88
13 C 78 75
13 A 92 93
12 F 55 62
13 B 88 82
;
proc print data=school1; run;



data school2;
input Age Quiz:$1. Midterm Final;
if Age=12 then Grade=6;
else if Age=13 then Grade=8;
if Quiz="A" then Grade=95;
else if Quiz="B" then Grade=85;
else if Quiz="C" then Grade=75;
else if Quiz="D" then Grade=70;
else if Quiz="E" then Grade=65;
else if Quiz="F" then Grade=50;
CourseGr = 0.2*Grade + 0.3*Midterm + 0.5*Final;
datalines;
12 A 92 95
12 B 88 88
13 C 78 75
13 A 92 93
12 F 55 62
13 B 88 82
;
run;
proc print data=school2; run;



data females;
set work.conditional2;
if Gender = "F";
run;
proc print data=females; run;

data list_example;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\list.csv" dsd;
input Subj:$3. Name:$20. DOB:mmddyy10. Salary:dollar10.;
format DOB date9. Salary dollar8.
run;
proc print data=list_example; run;

















