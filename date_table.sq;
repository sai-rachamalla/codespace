SELECT [DateKey],
       [FullDateAlternateKey] AS Date,
       [EnglishDayNameOfWeek] AS Day,
	   [WeekNumberOfYear] AS WeekNo,
       [EnglishMonthName] AS Month,
       [MonthNumberOfYear] AS MonthNo,
	   LEFT([EnglishMonthName], 3) AS MonthShort,
       [CalendarQuarter] AS Quarter,
       [CalendarYear] AS Year 

  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2012
