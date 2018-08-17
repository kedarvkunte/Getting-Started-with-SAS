data list_input_1;
input Name$ Sales_1-Sales_4;
/*total=Sales_1 + Sales_2 + Sales_3 + Sales_4;*/
DATALINES;
Gregoriyas 10 . 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
run;

/* Incorrect Data Entry due to missing value */
data list_input_2;
input Name$ Sales_1-Sales_4;
/*total=Sales_1 + Sales_2 + Sales_3 + Sales_4;*/
DATALINES;
Gregoriyas 10  40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
run;