-----------------BEGIN: Script to be run at Publisher 'PFL8560P-27\MSSQLSVR'-----------------
use [WattsALoanPub]
exec sp_addmergesubscription @publication = N'WattsALoanPub', @subscriber = N'PFL8560P-27\MSSQLSVR', @subscriber_db = N'WattsALoanSub', @subscription_type = N'pull', @subscriber_type = N'local', @subscription_priority = 0, @sync_type = N'Automatic'
GO
-----------------END: Script to be run at Publisher 'PFL8560P-27\MSSQLSVR'-----------------

-----------------BEGIN: Script to be run at Subscriber 'PFL8560P-27\MSSQLSVR'-----------------
use [WattsALoanSub]
exec sp_addmergepullsubscription @publisher = N'PFL8560P-27\MSSQLSVR', @publication = N'WattsALoanPub', @publisher_db = N'WattsALoanPub', @subscriber_type = N'Local', @subscription_priority = 0, @description = N'', @sync_type = N'Automatic'
exec sp_addmergepullsubscription_agent @publisher = N'PFL8560P-27\MSSQLSVR', @publisher_db = N'WattsALoanPub', @publication = N'WattsALoanPub', @distributor = N'PFL8560P-27\MSSQLSVR', @distributor_security_mode = 1, @distributor_login = N'', @distributor_password = null, @enabled_for_syncmgr = N'False', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 0, @active_start_date = 0, @active_end_date = 19950101, @alt_snapshot_folder = N'', @working_directory = N'', @use_ftp = N'False', @job_login = N'PCSUPPORT\21301171', @job_password = null, @publisher_security_mode = 1, @publisher_login = null, @publisher_password = null, @use_interactive_resolver = N'False', @dynamic_snapshot_location = null, @use_web_sync = 1, @internet_url = N'https://PFL8560P-27.pcsupport.ac.nz/SQLReplication/replisapi.dll', @internet_login = N'PCSUPPORT\21301171', @internet_password = null, @internet_security_mode = 0, @internet_timeout = 300
GO
-----------------END: Script to be run at Subscriber 'PFL8560P-27\MSSQLSVR'-----------------

