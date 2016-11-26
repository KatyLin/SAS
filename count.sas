**** The purpose is to sum up the unique value number of variable ****;
**** datain: the name of dataset which need to be initiated before input ****;
**** dataout: Naming the output dataset ****;
**** var: the variable which use to count ****;

%macro count(datain=, dataout=, var=);
    proc sql noprint;
        create table &dataout. as
        select distinct &var.
        from &datain.;
    quit;
%mend count;

%count(datain=test1, dataout=result1, var=USUBJID);
