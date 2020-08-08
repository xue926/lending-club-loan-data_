data loan;
	infile 'D:\��������\Lending club loan data\loan.csv' firstobs=2 dsd missover;
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
	
	label	   member_id = "����˴���"
			   loan_amnt ="��������������"
		       funded_amnt = "�ڸ�ʱ���Ըô�����ܳ�ŵ��"
		       funded_amnt_inv = "Ͷ�����ڸ�ʱ���Ըô���ĳ�ŵ�ܶ�"
			   term = "�����������36��60��"
			   int_rate = "��������"
			   installment = "�����ÿ�»����"
			   grade = "����ȼ�"
			   emp_title = "�����ְλ"
		       emp_length = "����˹������ޣ�0��10��"
			   home_ownership = "������ṩ�ķ�������Ȩ״̬"
		       annual_inc = "�����������"
			   verification_status = "�����Ƿ��ʵ"
			   issue_d = "�����·�"
			   loan_status = "����״̬"
			   pymnt_plan = "�Ƿ���Ϊ�����ƶ��˻���ƻ�"
		       desc = "����˵Ĵ�������"
			   purpose = "����Ŀ��"
		       title = "��������"
			   zip_code = "�������������ǰ3λ"
			   addr_state = "�����������"
			   dti = "ÿ�³������������ÿ������ı�"
		       delinq_2yrs = "��ȥ2���У����ڳ���30�����ϵ�����Ƿ��Ĵ���" 
			   earliest_cr_line = "������������ö�ȿ����·�"
		       inq_last_6mths = "���6���µĲ�ѯ����"
			   mths_since_last_delinq = "�Խ�����ϴ���Ƿծ������������"
			   mths_since_last_record = "���ϴι�����¼����������"
			   open_acc = "δƽ�ֽ�������"
			   pub_rec = "���𹫹���¼����"
			   revol_bal = "������ת�ܶ�"
			   revol_util = "ѭ����������"
			   total_acc = "��������õ����е�ǰ���ö�ȵ�����"
			   initial_list_status = "����ĳ�ʼ״̬"
			   out_prncp = "ʣ��δ���������ܶ�"
			   out_prncp_inv = "Ͷ���߳����ܶ���ʣ���δ���������ܶ�"
			   total_pymnt = "�������յ����Ѹ����ܶ�"
			   total_pymnt_inv = "Ͷ���ܶ��У�����Ϊֹ�Ѹ����ܶ�"
			   total_rec_prncp = "�����յ��ı���" 
			   total_rec_int = "�����յ�����Ϣ" 
			   total_rec_late_fee = "�����ֵ����ɽ�"
			   recoveries = "��ȥ�ܻ��շ���"
			   collection_recovery_fee = "��ȥ�ռ�����"
			   last_pymnt_d = "�ϸ������յ���������"
			   last_pymnt_amnt = "����յ����ܸ�����"
			   next_pymnt_d = "�¸��¸�������"
			   last_credit_pull_d = "���һ����LCȡ������ʴ�����Ŵ�����"
			   collections_12_mths_ex_med = "12�����ڵ��ռ�����"
			   mths_since_last_major_derog = "���90������������������·�"
			   policy_code = "����"
			   application_type = "�Ƿ�Ϊ���˴���"
			   annual_inc_joint = "�빲ͬ����˵ĺϲ�������"
			   dti_joint = "�ϲ��¸���"
			   verification_status_joint = "��ͬ�����Ƿ񱻺�ʵ"
			   acc_now_delinq = "�����������Ƿ���˻���"
			   tot_coll_amt = "Ƿ���ܶ�"
			   tot_cur_bal = "�����ʻ��ĵ�ǰ�����"
			   open_acc_6m = "���6����δƽ�ֽ�������". 
			   open_il_6m = "��ǰ��Ծ�ķ��ڽ�������"
			   open_il_12m = "��ȥ12�����ڿ���ķ��ڸ����ʻ���"
			   open_il_24m = "��ȥ24�����ڿ���ķ��ڸ����ʻ���"
			   mths_since_rcnt_il = "������ķ��ڸ����ʻ���������������"
			   total_bal_il = "���з��ڸ����˻��������"
			   il_util = "�����ʻ��ϵĵ�ǰ������������/���ö�ȵı���"
			   open_rv_12m = "��ȥ12�����ڿ�����ѭ����������"
			   open_rv_24m = "��ȥ24�����ڿ�����ѭ����������"
			   max_bal_bc = "����ѭ���˻��ϵ����ǰ���"
			   all_util = "���ö�ȼ�ȥ���н��׵����"
			   total_rev_hi_lim = "ѭ�����ö������"
			   inq_fi = "���������ѯ����"
			   total_cu_tl = "���ڽ�������"
			   inq_last_12m = "��ȥ12���µ����ò�ѯ����"
		       ;
	format		issue_d yymmd7.
				earliest_cr_line yymmd7.
				last_pymnt_d yymmd7.
				next_pymnt_d yymmd7.
				last_credit_pull_d yymmd7.;
	run;

