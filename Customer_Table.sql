SELECT C.CustomerKey AS CustomerKey,
       C.FirstName AS [First Name],
       C.LastName AS [Last Name],
	   C.FirstName + ' ' + LastName AS [Full Name],
	CASE C.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
       C.Phone AS PhoneNumber,
	   C.EmailAddress AS Email,
	   G.City AS [Customer City] -- Taken from geopgraphy table by joining
	FROM
	   dbo.DimCustomer AS C
	   JOIN dbo.DimGeography AS G ON G.GeographyKey = C.GeographyKey
	ORDER BY 
	   CustomerKey ASC
