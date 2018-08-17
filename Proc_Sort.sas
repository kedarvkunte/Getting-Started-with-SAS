DATA houseprice3;
input type$ price tax;
datalines;
Single 300000 0.20
Single 250000 0.25
Duplex 175000 0.15
;
run;

proc print data=houseprice3; run;

proc sort data=houseprice3 out=houseprice3_asc;
by tax;
run;

proc print data=houseprice3_asc; run;


proc sort data=houseprice3 out=houseprice3_desc;
by descending tax;
run;

proc print data=houseprice3_desc; run;


