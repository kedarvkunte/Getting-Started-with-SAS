data sixvar;
infile "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\6var (2).txt";
input var_1-var_6;
run;

data newvar;
set sixvar;
array ovar(6) var_1-var_6;
array newtax(6) tax_1-tax_6;
do i=1 to 6;
newtax(i) = ovar(i)*0.05;
end;
run;

proc print data=newvar;
var var_1-var_6 tax_1-tax_6;
run;
