data police1;
infile "G:\KEDAR\University of Massachussets Amherst\My Courses\After Graduation\SAS\SAS Projects\londonoutcomes.csv" DSD MISSOVER FIRSTOBS=2;
length CrimeID$ 4 ReportedF$ 25 FallsW $25 Longitude 8 Latitude 8 Location$ 25 LSOAC$ 25 LSOAN$ 25 OutcomeT$ 25;
input CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$ OutcomeT$;
run;



