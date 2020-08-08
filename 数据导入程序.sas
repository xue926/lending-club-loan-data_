data loan;
	infile 'D:\神州数码\Lending club loan data\loan.csv' firstobs=2 dsd missover;
	informat    id	$ 8.
				member_id $ 8.
				loan_amnt 5.
				funded_amnt 5.
				funded_amnt_inv 16.
				term $ 10.
				int_rate 5.2
				installment 7.2
				grade $ 1.
				sub_grade $ 2.
				emp_title $ 78.
				emp_length $ 9. 
				home_ownership $ 8.
				annual_inc 12.
				verification_status $ 15.
				issue_d monyy5.
				loan_status $ 51.
				pymnt_plan $ 1.
				url	$ 69.
				desc $ 3988.
				purpose $ 18.
				title $ 80.
				zip_code $ 5. 
				addr_state $ 2.
				dti 7.
				delinq_2yrs 2.
				earliest_cr_line monyy5.
				inq_last_6mths 2.
				mths_since_last_delinq 3.
				mths_since_last_record 3.
				open_acc 2.
				pub_rec 2. 
				revol_bal 7.
				revol_util 5.2
				total_acc 3.
				initial_list_status $ 1.
				out_prncp 8.2
				out_prncp_inv 8.2
				total_pymnt 16.6
				total_pymnt_inv 8.2
				total_rec_prncp 8.
				total_rec_int 8.2
				total_rec_late_fee 13.9
				recoveries 13.6
				collection_recovery_fee 13.9
				last_pymnt_d monyy5.
				last_pymnt_amnt 13.2
				next_pymnt_d monyy5.
				last_credit_pull_d monyy5.
				collections_12_mths_ex_med 2.
				mths_since_last_major_derog 3.
				policy_code $ 1.
				application_type $ 10.
				annual_inc_joint 9.2
				dti_joint 5.2
				verification_status_joint $ 15.
				acc_now_delinq 2.
				tot_coll_amt 7.
				tot_cur_bal 7.
				open_acc_6m 2. 
				open_il_6m 2.
				open_il_12m 2.
				open_il_24m 2.
				mths_since_rcnt_il 3.
				total_bal_il 6.
				il_util 5.1
				open_rv_12m 2.
				open_rv_24m 2.
				max_bal_bc 6.
				all_util 5.1
				total_rev_hi_lim 7.
				inq_fi 2.
				total_cu_tl 2.
				inq_last_12m 2.;

	input       id	$
				member_id $
				loan_amnt
				funded_amnt
				funded_amnt_inv
				term $
				int_rate
				installment
				grade $
				sub_grade $
				emp_title $
				emp_length $
				home_ownership $
				annual_inc
				verification_status $
				issue_d
				loan_status $
				pymnt_plan $
				url	$
				desc $
				purpose $
				title $
				zip_code $
				addr_state $
				dti
				delinq_2yrs
				earliest_cr_line
				inq_last_6mths
				mths_since_last_delinq
				mths_since_last_record
				open_acc
				pub_rec
				revol_bal
				revol_util
				total_acc
				initial_list_status $
				out_prncp
				out_prncp_inv
				total_pymnt
				total_pymnt_inv
				total_rec_prncp
				total_rec_int
				total_rec_late_fee
				recoveries
				collection_recovery_fee
				last_pymnt_d
				last_pymnt_amnt
				next_pymnt_d
				last_credit_pull_d
				collections_12_mths_ex_med
				mths_since_last_major_derog
				policy_code $
				application_type $
				annual_inc_joint
				dti_joint
				verification_status_joint $
				acc_now_delinq
				tot_coll_amt
				tot_cur_bal
				open_acc_6m
				open_il_6m
				open_il_12m
				open_il_24m
				mths_since_rcnt_il
				total_bal_il
				il_util
				open_rv_12m
				open_rv_24m
				max_bal_bc
				all_util
				total_rev_hi_lim
				inq_fi
				total_cu_tl
				inq_last_12m;
	
	label	   member_id = "借款人代号"
			   loan_amnt ="借款人申请贷款金额"
		       funded_amnt = "在该时间点对该贷款的总承诺额"
		       funded_amnt_inv = "投资者在该时间点对该贷款的承诺总额"
			   term = "贷款还款月数（36或60）"
			   int_rate = "贷款利率"
			   installment = "借款人每月还款额"
			   grade = "贷款等级"
			   emp_title = "借款人职位"
		       emp_length = "借款人工作年限（0到10）"
			   home_ownership = "借款人提供的房屋所有权状态"
		       annual_inc = "借款人年收入"
			   verification_status = "收入是否核实"
			   issue_d = "贷款月份"
			   loan_status = "贷款状态"
			   pymnt_plan = "是否已为贷款制定了还款计划"
		       desc = "借款人的贷款描述"
			   purpose = "贷款目的"
		       title = "贷款主题"
			   zip_code = "借款人邮政编码前3位"
			   addr_state = "借款人所在州"
			   dti = "每月偿还贷款比例与每月收入的比"
		       delinq_2yrs = "过去2年中，逾期超过30天以上的逾期欠款的次数" 
			   earliest_cr_line = "借款人最早信用额度开发月份"
		       inq_last_6mths = "最近6个月的查询数量"
			   mths_since_last_delinq = "自借款人上次拖欠债务以来的月数"
			   mths_since_last_record = "自上次公开记录以来的月数"
			   open_acc = "未平仓交易数量"
			   pub_rec = "贬损公共记录数量"
			   revol_bal = "贷款周转总额"
			   revol_util = "循环线利用率"
			   total_acc = "借款人信用档案中当前信用额度的总数"
			   initial_list_status = "贷款的初始状态"
			   out_prncp = "剩余未偿还本金总额"
			   out_prncp_inv = "投资者出资总额中剩余的未偿还本金总额"
			   total_pymnt = "迄今已收到的已付款总额"
			   total_pymnt_inv = "投资总额中，迄今为止已付款总额"
			   total_rec_prncp = "迄今收到的本金" 
			   total_rec_int = "迄今收到的利息" 
			   total_rec_late_fee = "迄今到手的滞纳金"
			   recoveries = "过去总回收费用"
			   collection_recovery_fee = "过去收集费用"
			   last_pymnt_d = "上个月已收到付款日期"
			   last_pymnt_amnt = "最近收到的总付款金额"
			   next_pymnt_d = "下个月付款日期"
			   last_credit_pull_d = "最近一个月LC取消了这笔贷款的信贷日期"
			   collections_12_mths_ex_med = "12个月内的收集数量"
			   mths_since_last_major_derog = "最近90天或更差的评分以来的月份"
			   policy_code = "政策"
			   application_type = "是否为个人贷款"
			   annual_inc_joint = "与共同借款人的合并年收入"
			   dti_joint = "合并月负比"
			   verification_status_joint = "共同收入是否被核实"
			   acc_now_delinq = "借款人现在拖欠的账户数"
			   tot_coll_amt = "欠款总额"
			   tot_cur_bal = "所有帐户的当前总余额"
			   open_acc_6m = "最近6个月未平仓交易数量". 
			   open_il_6m = "当前活跃的分期交易数量"
			   open_il_12m = "过去12个月内开设的分期付款帐户数"
			   open_il_24m = "过去24个月内开设的分期付款帐户数"
			   mths_since_rcnt_il = "自最近的分期付款帐户开设以来的月数"
			   total_bal_il = "所有分期付款账户的总余额"
			   il_util = "所有帐户上的当前总余额与高信用/信用额度的比率"
			   open_rv_12m = "过去12个月内开立的循环交易数量"
			   open_rv_24m = "过去24个月内开立的循环交易数量"
			   max_bal_bc = "所有循环账户上的最大当前余额"
			   all_util = "信用额度减去所有交易的余额"
			   total_rev_hi_lim = "循环信用额度上限"
			   inq_fi = "个人理财咨询数量"
			   total_cu_tl = "金融交易数量"
			   inq_last_12m = "过去12个月的信用查询数量"
		       ;
	format		issue_d yymmd7.
				earliest_cr_line yymmd7.
				last_pymnt_d yymmd7.
				next_pymnt_d yymmd7.
				last_credit_pull_d yymmd7.;
	run;

