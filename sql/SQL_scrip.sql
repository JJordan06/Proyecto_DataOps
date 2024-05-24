use Kaggle
--en caso la tabla netflix no exista
if NOT EXISTS (SELECT*FROM SYS.TABLES where object_id = OBJECT_ID(N'dbo.netflix') and type = 'U' )

create table dbo.netflix (
	show_id varchar(max),
	type_show varchar (max),
	title varchar(max),
	director varchar (max),
	cast_show varchar(max),
	country varchar (max),
	date_added varchar (max),
	release_year varchar(max),
	rating varchar (max),
	duration varchar(max),
	listen_id varchar(max),
	description_show varchar(max)
	)

	truncate table dbo.netflix


	bulk insert dbo.netflix
	from 'C:\Users\HP\Documents\proyecto_devops\python\dataset\netflix_titles.csv'
	with
	(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0a'
	)
	go

	select*from netflix
	go