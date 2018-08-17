DATA salary2;
INFILE "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\salary_with_dot.txt" DLM=',';
INPUT YEAR SALARY;
RUN;