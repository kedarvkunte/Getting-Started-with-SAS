data sixvar;
infile "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\6var (2).txt";
input var_1-var_6;
run;

data recordarray;
set sixvar;
array recordarr(6) var_1-var_6;
do i=1 to 6;
if recordarr(i) < 40 then recordarr(i)=.;
end;
run;

proc print data=recordarray;
var var_1-var_6;
run;




