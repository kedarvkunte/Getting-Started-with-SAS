data newhomes2;
INPUT type$ price tax;
datalines;
Duplex 150000 0.15
Duplex 160000 0.18
Duplex 180000 0.15
RUN;

data reducednewhomes1;
set work.newhomes2;
keep type price;
run;

data reducednewhomes2;
set newhomes2;
drop type price;
run;

data cleannewhomes;
set newhomes2;
RENAME type=x
	   price=y
	   tax=z;
	   run;
	   
	   data cleannewhomes2;
	   label x='Type of Home'
			 y='Price of Home'
			 z='Tax Percentage of Home';
			 RUN;
			 
			 proc freq data=cleannewhomes;
			 TABLE x y z;
			 run;
			 
			 
			 
	   
	   
	   
	   
	