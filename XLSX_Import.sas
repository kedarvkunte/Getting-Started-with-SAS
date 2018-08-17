proc import out=salesdata DATAFILE="G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\Sample-Sales-Data (3).xlsx" DBMS=XLSX;
run;
proc print data=salesdata;
run;