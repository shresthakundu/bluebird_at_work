--What is the percentage of congenital abnormalities checked among the given population?
SELECT (Congenital_Abnormality_Checked_Desc) AS CACD, COUNT(Congenital_Abnormality_Checked_Desc) AS Total_Congen_Abnormalities
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities` 
group by 1
Order by 2 desc 
--Out of the entire population, 32.5% of the population has been checked with atleast one form of congenital abnormalities.
