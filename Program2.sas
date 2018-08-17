data financial1;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\bank.txt";
input ID $1-3
	  DoB $4-13
	  Gender $14
	  Balance $15-21;
run;
title "Listing of Data Set financial1";

proc print data=financial1; run;


data financial2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\bank.txt";
input @1 ID $3.
	  @4 DoB mmddyy10.
	  @14 Gender $1.
	  @15 Balance 7.;
run;
title "Listing of Data Set financial2";

proc print data=financial2;
format DoB date11.;
run;



data bank1;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\bankdata.txt";

input Name $1-15
	  Acct $16-20
	  Balance 21-26
	  Rate 27-30;
Interest=Balance*Rate;
format Balance Interest dollar10.2;
run;
title "Listing of Data Set BANK1";
proc print data=bank1;
run;


data bank2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\bankdata.txt";

input @1 Name $15.
	  @16 Acct $5.
	  @21 Balance 6.
	  @27 Rate 4.;
Interest=Balance*Rate;
format Balance Interest dollar10.2;
run;
title "Listing of Data Set BANK2";
proc print data=bank2;
run;

data cache1;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\geocaching.txt";

input Geoname $1-20
	  LongDeg 21-22
	  LongMin 23-28
      LatDeg 29-30
      LatMin 31-36;
      
run;
      
title "Listing of Data Set";
proc print data=cache1;
run;


data cache2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\geocaching.txt";

input @1 Geoname $20.
	  @21 LongDeg 2.
	  @23 LongMin 6.
      @29 LatDeg 2.
      @31 LatMin 6.;
      
run;
      
title "Listing of Data Set";
proc print data=cache2;
run;

data stocks;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\stockprices.txt";

input @1 stock $4.
	  @5 purdate mmddyy10.
	  @15 purprice dollar6.
	  @21 number 4.
	  @25 selldate mmddyy10.
	  @35 sellprice dollar6.
;

totalpur = number*purprice;
totalsell = number*sellprice;
profit = totalsell - totalpur;

format purprice totalpur totalsell profit dollar10. purdate selldate mmddyy10.;
run;

proc print data=stocks; run;


data company;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\company.txt" dsd dlm="$";
input LastName$ EmpNo$ Salary;
format Salary dollar10.
run;

proc print data=company; run;


data list_example;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\list.csv" dsd;
input ID: $3.
	  Name: $20.
	  DOB: mmddyy10.
	  Salary: dollar10.;
	  
format DOB date9. Salary dollar10.;
run;

proc print data=list_example; run;







 
	  











	  
