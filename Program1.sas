data public1;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\mydata1.txt";
input gender$ age height weight;
run;

title "Listing of Data Public1";

proc print data=public1;
run;

data scores;
infile "C:\Users\Admin\Documents\WPS Workspaces\Workspace1\60864\scores.txt";
input Gender:$1. English History Math Science;
Average= (English + History + Math + Science)/4;
run;
title "Listing of Data Scores";
proc print data=scores; run;

