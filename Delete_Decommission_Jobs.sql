
use msdb

declare @jobName varchar(255) 
declare @stepName varchar(255)
declare @stepId int;


SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_67_CRAResellerListReport'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	 print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_67_CRAResellerListReport already exists'
---------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_67_BrokerListReport'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin


exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_67_BrokerListReport already exists'
---------------------------------------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_51_GenerateErPartnerExtract "ADP COS"'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_51_GenerateErPartnerExtract "ADP COS" already exists'
----------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_51_GenerateErPartnerExtract "ADP Majors"'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_51_GenerateErPartnerExtract "ADP Majors" already exists'
---------------------------------------------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_51_GenerateErPartnerExtract "ADP NAS"'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin


exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

		print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_51_GenerateErPartnerExtract "ADP NAS" already exists'
---------------------
	
SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwDVRTx_63a_GenerateLoanLevelTrackingReport.dtsx(2124)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

		print 'The job has been deleted sucessfully'
   end else print 'Job Step dwDVRTx_63a_GenerateLoanLevelTrackingReport.dtsx(2124) already exists'
----------------------------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwDVRTx_63a_GenerateLoanLevelTrackingReport.dtsx(2301)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwDVRTx_63a_GenerateLoanLevelTrackingReport.dtsx(2301) already exists'
---------------------------


SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_56c_GenerateMATotalRevenueReport.dtsx'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin
exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56c_GenerateMATotalRevenueReport.dtsx already exists'
-----------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56d_GenerateMATWNTxRevenueReport.dtsx'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56d_GenerateMATWNTxRevenueReport.dtsx already exists'
---------------------------


SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56d_GenerateMATWNTxRevenueReport-Svc'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin
exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56d_GenerateMATWNTxRevenueReport-Svc already exists'
	------------------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_61a_MissYouCampaignExtract.dtsx for Ecommerce EMV users for the Miss You Campaign  (CM1)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_61a_MissYouCampaignExtract.dtsx for Ecommerce EMV users for the Miss You Campaign  (CM1) already exists'
------------------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_61a_MissYouCampaignExtract.dtsx for Ecommerce NonEMV users for the Miss You Campaign (CM)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_61a_MissYouCampaignExtract.dtsx for Ecommerce NonEMV users for the Miss You Campaign (CM) already exists'
------------------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_61a_MissYouCampaignExtract.dtsx for Social Services users for the Miss You Campaign (SS)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_61a_MissYouCampaignExtract.dtsx for Social Services users for the Miss You Campaign (SS) already exists'
--------------------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwDVRTx_63b_GenerateOrderDetailReport_Capital One aka ING(63))'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwDVRTx_63b_GenerateOrderDetailReport_Capital One aka ING(63)) already exists'
------------------------------------
SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwDVRTx_63b_GenerateOrderDetailReport_Cole Taylor(2039)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin
exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwDVRTx_63b_GenerateOrderDetailReport_Cole Taylor(2039) already exists'
-------------------------------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName  = 'dwDVRTx_63b_GenerateOrderDetailReport_Global Lending Services(2007)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId ;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwDVRTx_63b_GenerateOrderDetailReport_Global Lending Services(2007) already exists'
---------------------------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwDVRTx_63b_GenerateOrderDetailReport_United Auto(2046)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwDVRTx_63b_GenerateOrderDetailReport_United Auto(2046) already exists'
----------------------------
SET @jobName  = 'BIDW Daily Create Relational Extracts'
SET @stepName  = 'dwDVRTx_63b_GenerateOrderDetailReport_United Auto(85)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwDVRTx_63b_GenerateOrderDetailReport_United Auto(85) already exists'
----------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'If last month of Quarter run TransactionsByUniqueEE Report'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin
exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step If last month of Quarter run TransactionsByUniqueEE Report already exists'

----------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56b_GenerateTransactionsByUniqueEEReport'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName
IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56b_GenerateTransactionsByUniqueEEReport already exists'
----------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56b_GenerateTransactionsByUniqueEEReport.bat'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56b_GenerateTransactionsByUniqueEEReport.bat already exists'
----------------------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_71_I9TxnsDataExtract'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin
exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_71_I9TxnsDataExtract already exists'
----------------------------

SET @jobName = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_71_CopyI9TxnsDataExtract'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_71_CopyI9TxnsDataExtract already exists'
----------------------------

SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName  = 'dwTWNTx_66_GenerateDWInvoice(21797)'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
		print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_66_GenerateDWInvoice(21797) already exists'
--------------------------------

SET @jobName  = 'BIDW Daily Create Relational Extracts'
SET @stepName = 'dwTWNTx_66_GenerateDWInvoice.bat'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_66_GenerateDWInvoice.bat already exists'
----------------------------
SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56c_GenerateMATotalRevenueReport.dtsx'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName
IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56c_GenerateMATotalRevenueReport.dtsx already exists'
---------------------------------------

SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56d_GenerateMATWNTxRevenueReport.dtsx'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin
exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56d_GenerateMATWNTxRevenueReport.dtsx already exists'
----------------------------

SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56d_GenerateMATWNTxRevenueReport-Svc'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56d_GenerateMATWNTxRevenueReport-Svc already exists'
----------------------------

SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56c_GenerateMATotalRevenueReport.bat'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56c_GenerateMATotalRevenueReport.bat already exists'
----------------------------

SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'If last month of Quarter run TransactionsByUniqueEE Report'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step If last month of Quarter run TransactionsByUniqueEE Report already exists'
-----------------------------------
SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56b_GenerateTransactionsByUniqueEEReport'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56b_GenerateTransactionsByUniqueEEReport already exists'
----------------------------

SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_56b_GenerateTransactionsByUniqueEEReport.bat'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_56b_GenerateTransactionsByUniqueEEReport.bat already exists'
----------------------------

SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_58_GenerateACAPartnerReport-Worxtime'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_58_GenerateACAPartnerReport-Worxtime already exists'
---------------------------------------------
SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_58_GenerateACAPartnerReport-SyncStream'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin

exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_58_GenerateACAPartnerReport-SyncStream already exists'
---------------------------------------

SET @jobName  = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_58_GenerateACAPartnerReport-Accord'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin
exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;

	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_58_GenerateACAPartnerReport-Accord already exists'
---------------------------------------
SET @jobName = 'Monthly Revenue Tx Value Extract Loader-No Dims'
SET @stepName = 'dwTWNTx_58_GenerateACAPartnerReport.bat'
SET @stepId=-1

select @stepId = s.step_id 
from sysjobsteps s
inner join sysjobs j
	on s.job_id = j.job_id
where j.name = @jobName
and s.step_name = @stepName

IF EXISTS (SELECT * FROM msdb.dbo.sysjobsteps WHERE step_id=@stepId)
begin
exec dbo.sp_delete_jobstep  
    @job_name = @jobName,  
    @step_id = @stepId;
	print 'The job has been deleted sucessfully'
   end else print 'Job Step dwTWNTx_58_GenerateACAPartnerReport.bat already exists'
---------------------------------------