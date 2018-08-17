DATA houseprice1;
INPUT type$ price tax;
Actualamountoft = ROUND (price*tax);
Datalines;
Single 300000 0.20
Single 250000 0.25
Duplex 175000 0.15

RUN;
