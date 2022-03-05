--How many congenital abnormalities are checked within the age range of 23-30 years and 30-36 years?

SELECT (Congenital_Abnormality_Checked_Desc) AS CACD, COUNT(Congenital_Abnormality_Checked_Desc) AS Total_Congen_Abnormalities
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities` 
where Ave_Age_of_Mother between 23.73 and 30
group by 1
Order by 2 desc 

SELECT (Congenital_Abnormality_Checked_Desc) AS CACD, COUNT(Congenital_Abnormality_Checked_Desc) AS Total_Congen_Abnormalities
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities` 
where Ave_Age_of_Mother between 30.1 and 35.71
group by 1
Order by 2 desc 

--Mothers in the age range 23.73 to 30 years of age observe higher number of congenital abnormlities in the children than mothers in the age range 30.1 to 35.71 years of age.
