DATA houseprice;
INFILE "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\houseprice (2).txt";
INPUT type$ price tax;
Actualamountoft = ROUND (price*tax);
RUN;

