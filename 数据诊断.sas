proc contents data=loan;
run;
proc sort data=loan nodup out=n_loan;
by _all_;
run;
proc sort data=loan out=n_loan nodupkey;
by id;
run;

data test1;
	set loan;
	miss_id=(id=' ');
	run;
proc freq data=test1;
tables miss_id;
run;


data test2;
	set loan;
	miss_member_id=(member_id=' ');
	run;
proc freq data=test2;
tables miss_member_id;
run;


data test3;
	set loan;
	miss_funded_amnt_inv=(funded_amnt_inv=.);
	run;
proc freq data=test3;
tables miss_funded_amnt_inv;
run;

data test4;
	set loan;
	miss_term=(term=' ');
	run;
proc freq data=test4;
tables miss_term;
run;


data test5;
	set loan;
	miss_int_rate=(int_rate=.);
	run;
proc freq data=test5;
tables miss_int_rate;
run;


data test1;
	set loan;
	miss_grade=(grade='');
	run;
proc freq data=test1;
tables miss_grade;
run;


data test2;
	set loan;
	miss_sub_grade=(sub_grade='');
	run;
proc freq data=test2;
tables miss_sub_grade;
run;


data test3;
	set loan;
	miss_emp_length=(emp_length='');
	run;
proc freq data=test3;
tables miss_emp_length;
run;


data test4;
	set loan;
	miss_home_ownership=(home_ownership='');
	run;
proc freq data=test4;
tables miss_home_ownership;
run;


data test5;
	set loan;
	miss_annual_inc=(annual_inc=.);
	run;
proc freq data=test5;
tables miss_annual_inc;
run;


data test1;
	set loan;
	miss_verification_status=(verification_status='');
	run;
proc freq data=test1;
tables miss_verification_status;
run;

data test2;
	set loan;
	miss_issue_d=(issue_d=.);
	run;
proc freq data=test2;
tables miss_issue_d;
run;


data test3;
	set loan;
	miss_loan_status=(loan_status='');
	run;
proc freq data=test3;
tables miss_loan_status;
run;


data test4;
	set loan;
	miss_purpose=(purpose='');
	run;
proc freq data=test4;
tables miss_purpose;
run;


data test5;
	set loan;
	miss_dti=(dti=.);
	run;
proc freq data=test5;
tables miss_dti;
run;



data test1;
	set loan;
	miss_delinq_2yrs=(delinq_2yrs=.);
	run;
proc freq data=test1;
tables miss_delinq_2yrs;
run;


data test2;
	set loan;
	miss_inq_last_6mths=(inq_last_6mths=.);
	run;
proc freq data=test2;
tables miss_inq_last_6mths;
run;


data test3;
	set loan;
	miss_mths_since_last_delinq=(mths_since_last_delinq=.);
	run;
proc freq data=test3;
tables miss_mths_since_last_delinq;
run;


data test4;
	set loan;
	miss_open_acc=(open_acc=.);
	run;
proc freq data=test4;
tables miss_open_acc;
run;


data test5;
	set loan;
	miss_pub_rec=(pub_rec=.);
	run;
proc freq data=test5;
tables miss_pub_rec;
run;



data test1;
	set loan;
	miss_revol_util=(revol_util=.);
	run;
proc freq data=test1;
tables miss_revol_util;
run;


data test2;
	set loan;
	miss_total_acc=(total_acc=.);
	run;
proc freq data=test2;
tables miss_total_acc;
run;


data test3;
	set loan;
	miss_out_prncp=(out_prncp=.);
	run;
proc freq data=test3;
tables miss_out_prncp;
run;

data test4;
	set loan;
	miss_mths_since_last_major_derog=(mths_since_last_major_derog=.);
	run;
proc freq data=test4;
tables miss_mths_since_last_major_derog;
run;


data test5;
	set loan;
	miss_application_type=(application_type='');
	run;
proc freq data=test5;
tables miss_application_type;
run;


data test1;
	set loan;
	miss_annual_inc_joint=(annual_inc_joint=.);
	run;
proc freq data=test1;
tables miss_annual_inc_joint;
run;


data test2;
	set loan;
	miss_dti_joint=(dti_joint=.);
	run;
proc freq data=test2;
tables miss_dti_joint;
run;


data test3;
	set loan;
	miss_tot_coll_amt=(tot_coll_amt=.);
	run;
proc freq data=test3;
tables miss_tot_coll_amt;
run;

data test4;
	set loan;
	miss_tot_cur_bal=(tot_cur_bal=.);
	run;
proc freq data=test4;
tables miss_tot_cur_bal;
run;


data test5;
	set loan;
	miss_open_acc_6m=(open_acc_6m='');
	run;
proc freq data=test5;
tables miss_open_acc_6m;
run;



data test1;
	set loan;
	miss_total_bal_il=(total_bal_il=.);
	run;
proc freq data=test1;
tables miss_total_bal_il;
run;


data test2;
	set loan;
	miss_il_util=(il_util=.);
	run;
proc freq data=test2;
tables miss_il_util;
run;


data test3;
	set loan;
	miss_all_util=(all_util=.);
	run;
proc freq data=test3;
tables miss_all_util;
run;


data test4;
	set loan;
	miss_total_rev_hi_lim=(total_rev_hi_lim=.);
	run;
proc freq data=test4;
tables miss_total_rev_hi_lim;
run;

data test5;
	set loan;
	miss_loan_amnt=(loan_amnt=.);
	run;
proc freq data=test5;
tables miss_loan_amnt;
run;


data n_loan;
set loan(keep=id 	member_id 	funded_amnt 	term 	int_rate 	grade
sub_grade 		emp_length 		home_ownership 		annual_inc 		verification_status
issue_d 	loan_status 	loan_amnt 		purpose 	dti 	delinq_2yrs inq_last_6mths
open_acc 	pub_rec 	revol_util 		total_acc out_prncp
application_type 		tot_cur_bal 	tot_coll_amt
total_rev_hi_lim);
run;

proc export data=n_loan 
	outfile='D:\神州数码\Lending club loan data\new_loan'
	dbms=xlsx
	replace;
	run;

proc freq data=n_loan;
tables issue_d;
format issue_d yymmd6.;
run; 


proc univariate data=n_loan;
var funded_amnt;
run;


proc univariate data=n_loan;
var pub_rec;
run;

proc freq data=n_loan;
tables term;
run;

proc freq data=n_loan;
tables grade;
run;

proc freq data=n_loan;
tables sub_grade;
run;

proc freq data=n_loan;
tables loan_status;
run;

proc sql ;
select grade,count(member_id) as 用户数
from n_loan
group by grade
;
quit;

proc sql ;
select sub_grade,count(member_id) as 用户数
from n_loan
group by sub_grade
;
quit;


proc sql;
select term,count(member_id) as 用户数
from n_loan
group by term
;
quit;

data test;
set n_loan;
length funded_amnt_type $ 11.;
if funded_amnt LE 1000 then funded_amnt_type='1000以下';
else if funded_amnt LE 3000 then funded_amnt_type='1000-3000';
else if funded_amnt LE 5000 then funded_amnt_type='3000-5000';
else if funded_amnt LE 7000 then funded_amnt_type='5000-7000';
else if funded_amnt LE 10000 then funded_amnt_type='7000-10000';
else if funded_amnt LE 13000 then funded_amnt_type='10000-13000';
else if funded_amnt LE 15000 then funded_amnt_type='13000-15000';
else if funded_amnt LE 18000 then funded_amnt_type='15000-18000';
else if funded_amnt LE 21000 then funded_amnt_type='18000-21000';
else if funded_amnt LE 24000 then funded_amnt_type='21000-24000';
else if funded_amnt LE 270000 then funded_amnt_type='24000-27000';
else if funded_amnt LE 30000 then funded_amnt_type='27000-30000';
else if funded_amnt LE 33000 then funded_amnt_type='30000-33000';
else funded_amnt_type='33000-35000';
run;

proc sql;
select grade,avg(funded_amnt) as 平均金额
from n_loan
group by grade
;
quit;

proc sql;
select grade,avg(int_rate) as 平均利率
from n_loan
group by grade
;
quit;













 