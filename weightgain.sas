data weightgain;
infile "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\weightgain (2).csv" dsd missover firstobs=2;
input id source$ type$ weightgain;
run;
