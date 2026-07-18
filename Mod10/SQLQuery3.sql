USE master;
GO

SELECT SERVERPROPERTY('ServerName');


DECLARE @SERVERDUBAI sysname = CONVERT(sysname, 'Vivobook')


EXEC sp_addlinkedserver	
	@server = 'SRVDubai',
	@srvproduct = '',
	@provider = 'MSOLEDBSQL',
	@datasrc = @SERVERDUBAI,
	@provstr = 'encrypt=optional'
GO



    EXEC sp_dropserver @server = N'SRVDubai'


