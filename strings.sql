create database STRINGS

--ASCII:
SELECT ASCII('A') AS A, 
       ASCII('B') AS B,   
       ASCII('a') AS a,
	   ASCII('b') AS b,  
       ASCII(1) AS [1], 
	   ASCII(2) AS [2];

SELECT ASCII('P') AS [ASCII], ASCII('æ') AS [Extended_ASCII];
SELECT NCHAR(80) AS [CHARACTER], NCHAR(195) AS [CHARACTER];
SELECT UNICODE('æ') AS [Extended_ASCII], NCHAR(230) AS [CHARACTER];



SET TEXTSIZE 0;  
-- Create variables for the character string and for the current   
-- position in the string.  
DECLARE @position INT, @string CHAR(8);  
-- Initialize the current position and the string variables.  
SET @position = 1;  
SET @string = 'New Moon';  
WHILE @position <= DATALENGTH(@string)  
   BEGIN  
   SELECT ASCII(SUBSTRING(@string, @position, 1)),   
      CHAR(ASCII(SUBSTRING(@string, @position, 1)))  
   SET @position = @position + 1  
   END;  
GO


SELECT CHAR(65) AS [65],
       CHAR(66) AS [66],   
       CHAR(97) AS [97],
	   CHAR(98) AS [98],   
       CHAR(49) AS [49], 
	   CHAR(50) AS [50];

SELECT RTRIM('Removes trailing spaces.   ');
SELECT RTRIM('Four spaces are after the period in this sentence.    ') + 'Next string';
SELECT LTRIM( '     test') AS Result;

SELECT REPLACE('2*[3+4]/{7-2}', '[]{}', '()()');




SELECT UPPER('Preethi')
select LOWER('PREETHI')
SELECT LTRIM( '    PREETHI' )
select ('Preethi'+ ' '+'reddy')
select Len('preethireddy')
select replace('preethireddy','preethi','viswa')





select GETDATE()
SELECT CAST(GETDATE() AS date)
SELECT CAST(GETDATE() AS time)




create table salesreport(salesid int,
                         name varchar(max),
						 solddate datetime)

insert into salesreport values(1,'Preethi','2022-01-12 8:10:12:022')
insert into salesreport values(2,'REDDY','2022-06-14 12:22:12:012')


select * from salesreport
 drop table salesreport



 select cast(solddate as datetime)from salesreport
 select cast(solddate as date )from salesreport
select cast(solddate as time)from salesreport
select cast(solddate as varchar(12) )from salesreport

select solddate ,cast(solddate as varchar(12)),convert(varchar(15),solddate,101)from salesreport
select solddate ,cast(solddate as varchar(12)),convert(varchar(15),solddate,102)from salesreport
select solddate ,cast(solddate as varchar(12)),convert(varchar(15),solddate,103)from salesreport
select solddate ,cast(solddate as varchar(12)),convert(varchar(15),solddate,104)from salesreport
select solddate ,cast(solddate as varchar(12)),convert(varchar(15),solddate,105)from salesreport
select solddate ,cast(solddate as varchar(12)),convert(varchar(15),solddate,106)from salesreport


select convert(varchar ,'1001-12-11 12:12:12:099',104)
select cast('preethi' as varchar)



















