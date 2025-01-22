SELECT 
       P.[ProductKey],
       P.[ProductAlternateKey] AS ProductItemCode,
       P.[EnglishProductName] AS [Product Name],
	   PS.[EnglishProductSubcategoryName] AS [Subcategory],
	   PC.[EnglishProductCategoryName] AS [Category],
       P.[Color] AS [Product Color],
       P.[Size] AS [Product Size],
       P.[ProductLine] AS [Product Line],
       P.[ModelName] AS [Product Model Name],
       P.[EnglishDescription] AS [Product Description],
     ISNULL (P.Status, 'Outdated') AS [Product Status]
FROM [dbo].[DimProduct] as P
   LEFT JOIN dbo.DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
   LEFT JOIN dbo.DimProductCategory AS PC ON PS.ProductCategoryKey = PC.ProductCategoryKey
ORDER BY
   P.ProductKey ASC
