

data sales1;
set mydata.sales;
run;
proc print data=sales1;
where (Region = "North" and Quantity<60 and not missing(quantity)) or Customer="Pet's are Us";
run;

data bicycles1;
set mydata.bicycles;
/*infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\bicycles.sas7bdat";*/
run;
proc print data=bicycles1;
where ((Model = "Road Bike" and UnitCost > 2500) or (Model = "Hybrid" and UnitCost > 660));
run;

data hosp1;
set mydata.hosp;
run;
proc print data=hosp1;
where Subject=5 or Subject=100 or Subject=150;
run;
data hosp2;
set mydata.hosp;
run;
proc print data=hosp2;
where Subject in (5, 100, 150);
id subject;
run;

data grade1;
length Gender$ 1 Quiz$ 2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\grades.txt";
input Age Gender$ Midterm Quiz$ FinalExam;
if missing(Age) then delete;
if Age <= 39 then do;
AgeGrp = "Older Group";
Grade=(Midterm+FinalExam)/2;
end;
run;
proc print data=grade1;
run;

data revenue1;
input Day: $3.
	  revenue: dollar6.;
total = total + revenue;
format revenue total dollar8.;
datalines;
MON $1000
TUE $1500
WED .
THU $2000
FRI $3000
;
run;

proc print data=revenue1;
run;

data revenue2;
retain total 0;
input Day: $3.
	  revenue: dollar6.;
total = total + revenue;
format revenue total dollar8.;
datalines;
MON $1000
TUE $1500
WED .
THU $2000
FRI $3000
;
run;

proc print data=revenue2;
run;

data revenue3;
retain total 0;
input Day: $3.
	  revenue: dollar6.;
if not missing(revenue) then total = total + revenue;
format revenue total dollar8.;
datalines;
MON $1000
TUE $1500
WED .
THU $2000
FRI $3000
;
run;

proc print data=revenue3;
run;


data revenue4;

input Day: $3.
	  revenue: dollar6.;
/*if not missing(revenue) then */
total + revenue;
format revenue total dollar8.;
datalines;
MON $1000
TUE $1500
WED .
THU $2000
FRI $3000
;
run;

proc print data=revenue4;
run;

data test1;
input x;
if not missing(x) then CounterMissing +1;
datalines;
.
2
.
7
.
;
run;
proc print data=test1;
run;










