DATA dates;
INPUT name$ bday date11.;
CARDS;
Eric 04 Mar 1985
Doug 15 Feb 1976
Sean 14 Jun 1975
Lisa   05 Jan 1988
;
RUN;

PROC PRINT DATA=dates;
FORMAT bday date11.;
run;

