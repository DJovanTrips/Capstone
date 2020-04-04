filename csv '/folders/myfolders/sasuser.v94/Motor_Vehicle_Collisions_-_Crashes.csv';

proc import datafile=csv
  out=MIS543.NYCCrash
  dbms=csv
  replace;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Driver Inattention/Distraction') DrivAtt=1;
		otherwise DrivAtt=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Alcohol Involvement') Alch=1;
		otherwise Alch=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Following Too Closely') Foll=1;
		otherwise Foll=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Passing Too Closely') Pass='1';
		otherwise Pass='0';
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Passenger Distraction') PassDis=1;
		otherwise PassDis=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Glare') Glare=1;
		otherwise Glare=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Illness') Ill=1;
		otherwise Ill=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Fatigued/Drowsy') Drow=1;
		otherwise Drow=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Unsafe Speed') Speed=1;
		otherwise Speed=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Lost Consciousness') Cons=1;
		otherwise Cons=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Backing Unsafely') Back=1;
		otherwise Back=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Passing or Lane Usage Improper') Lane=1;
		otherwise Lane=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Failure to Yield Right-of-Way') Yield=1;
		otherwise Yield=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Other Vehicular') OtherVeh=1;
		otherwise OtherVeh=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Prescription Medication') Meds=1;
		otherwise Meds=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Physical Disability') PhysDis=1;
		otherwise PhysDis=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Driver Inexperience') DrivInexp=1;
		otherwise DrivInexp=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Oversized Vehicle') OvVeh=1;
		otherwise OvVeh=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Outside Car Distraction') Outside=1;
		otherwise Outside=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Reaction to Uninvolved Vehicle') UniVeh=1;
		otherwise UniVeh=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Steering Failure') Steer=1;
		otherwise Steer=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Tire Failure/Inadequate') Tire=1;
		otherwise Tire=0;
	end;
run;
data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Turning Improperly') Turn=1;
		otherwise Turn=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	select (CONTRIBUTING_FACTOR_VEHICLE_1);
		when ('Unsafe Lane Changing') UnLane=1;
		otherwise UnLane=0;
	end;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	If CONTRIBUTING_FACTOR_VEHICLE_1='Unspecified' then Unspec=1;
		else if CONTRIBUTING_FACTOR_VEHICLE_1='1' then Unspec=1;
		else if CONTRIBUTING_FACTOR_VEHICLE_1='80' then Unspec=1;
		else if CONTRIBUTING_FACTOR_VEHICLE_1=' ' then Unspec=1;
		else Unspec=0;
run;


data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;
	
	CrashYr = YEAR(CRASH_DATE);
	CrashMth= MONTH(CRASH_DATE);
	CrashDay= DAY(CRASH_DATE);
	CrashWkDy= WEEKDAY(CRASH_DATE);
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;
	
	CrashHR = HOUR(CRASH_TIME);
run;


/* descriptive stats  */


proc means data=MIS543.NYCCRASH;
title 'Proc Means of NYC Crash';
run;

proc corr data=MIS543.NYCCRASH pearson nosimple noprob plots=none;
	var NUMBER_OF_PERSONS_KILLED;
	with CRASH_TIME LATITUDE LONGITUDE DrivAtt Alch Foll PassDis Glare Ill Drow 
		Speed Cons Back Baack Lane Yield OtherVeh Meds PhysDis OvVeh DrivInexp 
		Outside UniVeh Steer Tire Turn UnLane Unspec;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;

	If CrashHR=0 then ComTm=0;
		else if CrashHR=1 then ComTm=0;
		else if CrashHR=2 then ComTm=0;
		else if CrashHR=3 then ComTm=0;
		else if CrashHR=4 then ComTm=0;
		else if CrashHR=5 then ComTm=0;
		else if CrashHR=6 then ComTm=0;
		else if CrashHR=7 then ComTm=1;
		else if CrashHR=8 then ComTm=1;
		else if CrashHR=9 then ComTm=1;
		else if CrashHR=10 then ComTm=0;
		else if CrashHR=11 then ComTm=0;
		else if CrashHR=12 then ComTm=0;
		else if CrashHR=13 then ComTm=0;
		else if CrashHR=14 then ComTm=0;
		else if CrashHR=15 then ComTm=1;
		else if CrashHR=16 then ComTm=1;
		else if CrashHR=17 then ComTm=1;
		else if CrashHR=18 then ComTm=1;
		else if CrashHR=19 then ComTm=0;
		else if CrashHR=20 then ComTm=0;
		else if CrashHR=21 then ComTm=0;
		else if CrashHR=22 then ComTm=0;
		else if CrashHR=23 then ComTm=0;
		else ComTm=0;
run;

data MIS543.NYCCRASH;
	set MIS543.NYCCRASH;
	
	If ComTm=1 and CrashWkDy=1 then RushHr=0;
		else if ComTm=0 and CrashWkDy=1 then RushHr=0;
		else if ComTm=1 and CrashWkDy=2 then RushHr=1;
		else if ComTm=0 and CrashWkDy=2 then RushHr=0;
		else if ComTm=1 and CrashWkDy=3 then RushHr=1;
		else if ComTm=0 and CrashWkDy=3 then RushHr=0;
		else if ComTm=1 and CrashWkDy=4 then RushHr=1;
		else if ComTm=0 and CrashWkDy=4 then RushHr=0;
		else if ComTm=1 and CrashWkDy=5 then RushHr=1;
		else if ComTm=0 and CrashWkDy=5 then RushHr=0;
		else if ComTm=1 and CrashWkDy=6 then RushHr=1;
		else if ComTm=0 and CrashWkDy=6 then RushHr=0;
		else if ComTm=1 and CrashWkDy=7 then RushHr=0;
		else if ComTm=0 and CrashWkDy=7 then RushHr=0;
	else RushHr=0;
run;


/* analytical stats  */

Title;
ods noproctitle;
ods graphics / imagemap=on;

proc glm data=MIS543.NYCCRASH;
	class BOROUGH;
	model NUMBER_OF_PERSONS_KILLED=BOROUGH;
	means BOROUGH / hovtest=levene welch plots=none;
	lsmeans BOROUGH / adjust=tukey pdiff alpha=.05;
	run;
quit;

Title;
ods noproctitle;
ods graphics / imagemap=on;

proc glm data=MIS543.NYCCRASH;
	class CONTRIBUTING_FACTOR_VEHICLE_1;
	model NUMBER_OF_PERSONS_KILLED=CONTRIBUTING_FACTOR_VEHICLE_1;
	means CONTRIBUTING_FACTOR_VEHICLE_1 / hovtest=levene welch plots=none;
	lsmeans CONTRIBUTING_FACTOR_VEHICLE_1 / adjust=tukey pdiff alpha=.05;
	run;
quit;

Title;
ods noproctitle;
ods graphics / imagemap=on;

proc glm data=SASUSER.NYCCRASH;
	class CrashHR;
	model NUMBER_OF_PERSONS_KILLED=CrashHR;
	means CrashHR / hovtest=levene welch plots=none;
	lsmeans CrashHR / adjust=tukey pdiff alpha=.05;
	run;
quit;

proc reg data=SASUSER.NYCCRASH;
	model NUMBER_OF_PERSONS_KILLED=NUMBER_OF_MOTORIST_KILLED NUMBER_OF_CYCLIST_KILLED NUMBER_OF_PEDESTRIANS_KILLED DrivAtt CrashHR CrashWkDy CrashMth CrashYr / selection=forward;
run;
ods noproctitle;
ods graphics / imagemap=on;

proc reg data=SASUSER.NYCCRASH;
	model NUMBER_OF_PERSONS_KILLED=DrivAtt ZIP_CODE LATITUDE LONGITUDE CrashHR RushHr CrashWkDy CrashMth CrashYr / selection=forward;
run;
ods noproctitle;
ods graphics / imagemap=on;

ods noproctitle;
ods graphics / imagemap=on;

proc corr data=SASUSER.NYCCRASH pearson nosimple noprob plots=none;
	var NUMBER_OF_PEDESTRIANS_KILLED NUMBER_OF_CYCLIST_KILLED 
		NUMBER_OF_MOTORIST_KILLED;
run;

/* Addtional Graphs */
ods graphics / reset width=6.4in height=4.8in imagemap;

proc sgplot data=SASUSER.NYCCRASH;
	vbox DrivAtt / category=CrashYr;
	yaxis grid;
run;

ods graphics / reset;

proc means data=SASUSER.NYCCRASH noprint;
	class CrashYr / order=data;
	var DrivAtt NUMBER_OF_PERSONS_KILLED;
	output out=_BarLine_(where=(_type_ > 0)) sum(DrivAtt 
		NUMBER_OF_PERSONS_KILLED)=resp1 resp2;
run;

/* Compute response min and max values (include 0 in computations) */
data _null_;
	retain respmin 0 respmax 0;
	retain respmin1 0 respmax1 0 respmin2 0 respmax2 0;
	set _BarLine_ end=last;
	respmin1=min(respmin1, resp1);
	respmin2=min(respmin2, resp2);
	respmax1=max(respmax1, resp1);
	respmax2=max(respmax2, resp2);

	if last then
		do;
			call symputx ("respmin1", respmin1);
			call symputx ("respmax1", respmax1);
			call symputx ("respmin2", respmin2);
			call symputx ("respmax2", respmax2);
			call symputx ("respmin", min(respmin1, respmin2));
			call symputx ("respmax", max(respmax1, respmax2));
		end;
run;

/* Define a macro for offset */
%macro offset ();
	%if %sysevalf(&respmin eq 0) %then
		%do;
			offsetmin=0 %end;

	%if %sysevalf(&respmax eq 0) %then
		%do;
			offsetmax=0 %end;
%mend offset;

ods graphics / reset width=6.4in height=4.8in imagemap;

proc sgplot data=SASUSER.NYCCRASH nocycleattrs;
	vbar CrashYr / response=DrivAtt fillattrs=(color=CX1c22ca) stat=sum;
	vline CrashYr / response=NUMBER_OF_PERSONS_KILLED lineattrs=(color=CXf01219) 
		stat=sum y2axis;
	yaxis grid min=&respmin1 max=&respmax1 %offset();
	y2axis min=&respmin2 max=&respmax2 %offset();
	keylegend / location=outside;
run;

ods graphics / reset;

proc datasets library=WORK noprint;
	delete _BarLine_;
	run;
	
	ods graphics / reset;
proc sort data=SASUSER.NYCCRASH out=WORK.SORTDS equals;
	by CrashYr;
run;proc boxplot data=WORK.SORTDS;
plot NUMBER_OF_PERSONS_KILLED*CrashYr / cboxes=red;
run;

proc sort data=SASUSER.NYCCRASH out=_BarLineChartTaskData;
	by DrivAtt;
run;

/* Compute axis ranges */
proc means data=_BarLineChartTaskData noprint;
	by DrivAtt;
	class CrashYr / order=data;
	var NUMBER_OF_PERSONS_KILLED NUMBER_OF_PERSONS_INJURED;
	output out=_BarLine_(where=(_type_ > 0)) sum(NUMBER_OF_PERSONS_KILLED 
		NUMBER_OF_PERSONS_INJURED)=resp1 resp2;
run;

/* Compute response min and max values (include 0 in computations) */
data _null_;
	retain respmin 0 respmax 0;
	retain respmin1 0 respmax1 0 respmin2 0 respmax2 0;
	set _BarLine_ end=last;
	respmin1=min(respmin1, resp1);
	respmin2=min(respmin2, resp2);
	respmax1=max(respmax1, resp1);
	respmax2=max(respmax2, resp2);

	if last then
		do;
			call symputx ("respmin1", respmin1);
			call symputx ("respmax1", respmax1);
			call symputx ("respmin2", respmin2);
			call symputx ("respmax2", respmax2);
			call symputx ("respmin", min(respmin1, respmin2));
			call symputx ("respmax", max(respmax1, respmax2));
		end;
run;

/* Define a macro for offset */
%macro offset ();
	%if %sysevalf(&respmin eq 0) %then
		%do;
			offsetmin=0 %end;

	%if %sysevalf(&respmax eq 0) %then
		%do;
			offsetmax=0 %end;
%mend offset;

ods graphics / reset width=6.4in height=4.8in imagemap;

proc sgplot data=_BarLineChartTaskData nocycleattrs;
	by DrivAtt;
	title height=14pt "Number of Fatalities and Injuries By Driver Inattention";
	vbar CrashYr / response=NUMBER_OF_PERSONS_KILLED fillattrs=(color=CXe01c44) 
		stat=sum;
	vline CrashYr / response=NUMBER_OF_PERSONS_INJURED lineattrs=(thickness=4 
		color=CXe49329) stat=sum y2axis;
	yaxis grid min=&respmin1 max=&respmax1 %offset();
	y2axis min=&respmin2 max=&respmax2 %offset();
	keylegend / location=outside;
run;

ods graphics / reset;
title;
