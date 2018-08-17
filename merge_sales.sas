data sales4_1;
input Name$ Sales_1-Sales_4;
DATALINES;
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
;
run;

data sales4_2;
input Names$ Sales_1-Sales_4;
DATALINES;
Erci 17 5 40 0
Lori 15 12 10 100
Bill 50 14 15 50
Mark 22 3 5 16
;
run;

data mergesales;
set sales4_1 sales4_2(rename=(Names=Name));
run;





