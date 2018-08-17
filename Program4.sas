
data employee;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\employee.csv" dsd;
input ID:$3.
	  Name:$20.
	  Depart:$8.
	  dateHire:mmddyy10.
	  Salary:dollar8.;
	  
format DateHire date9.;
run;
proc print data=employee; run;

libname mydata "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864";
data emp(keep = Salary Group);
/*infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\payrollmaster.sas7bdat";*/
set mydata.payrollmaster;
length Group $20.;

select(JobCode);
when("FA1","FA2","FA3") Group="Flight Attendant";
when("ME1","ME2","ME3") Group="Mechanic";
when("NA1","NA2","NA3") Group="Navigator";
when("PT1","PT2","PT3") Group="Pilot";
when("TA1","TA2","TA3") Group="Ticket Agents";
otherwise Group="Others";
end;
run;
proc print data=emp;run;


/*Without keep*/
libname mydata "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864";
data emp;
/*infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\payrollmaster.sas7bdat";*/
set mydata.payrollmaster;
length Group $20.;

select(JobCode);
when("FA1","FA2","FA3") Group="Flight Attendant";
when("ME1","ME2","ME3") Group="Mechanic";
when("NA1","NA2","NA3") Group="Navigator";
when("PT1","PT2","PT3") Group="Pilot";
when("TA1","TA2","TA3") Group="Ticket Agents";
otherwise Group="Others";
end;
run;
proc print data=emp;run;



data conditional5;
length Gender $1 Quiz$ 2;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\CONDITIONAL.TXT";
input Age Gender$ Midterm Quiz$ FinalExam;
select;
when(missing(Age)) AgeGroup=.; 	/*AgeGroup="."*/
when(Age<20 and Age^=".") AgeGroup=1;
when(Age>20 and Age<40 and Age^=".") AgeGroup=2; /* ^= is same as ne()*/
when(Age>40 and Age<60 and Age^=".") AgeGroup=3;
when(Age>60 and Age^=".") AgeGroup=4;
otherwise;
end;
run;
proc print data=conditional5; run;



libname mydata "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864";
data blood1;
set mydata.blood;
length CholGroup $6.;
select;
when(missing(Chol)) CholGroup=".";	/*AgeGroup="."*/
when(Chol<=110) CholGroup="Low";
when(Chol>110 and Chol<=140) CholGroup="Medium";
when(Chol>140) CholGroup="High";
otherwise;
end;
run;

proc print data=blood1; run;

data females1;
set work.conditional5;
where Gender = "F";
run;
proc print data=females1; run;


libname mydata "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864";
data medical1;
set mydata.medical;
run;
proc print data=medical1;
where(Clinic="HMC" and (DX in ("7" "9") or weight>100));
id Patno;
var Clinic DX Weight VisitDate;
run;



 run;







