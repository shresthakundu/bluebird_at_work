--What is the percentage of pure race children and mixed race children having congenital abnormalities?

select mother_race.County_of_Residence, mother_race.Births, mother_race.Mothers_Single_Race, father_race.Fathers_Single_Race, Congenital_abnormalities.Congenital_Abnormality_Checked_Desc
from `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race` as mother_race
LEFT JOIN `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities` AS Congenital_abnormalities
ON mother_race.County_of_Residence=Congenital_abnormalities.County_of_Residence  
left join `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_father_race` as father_race
on father_race.County_of_Residence = Congenital_abnormalities.County_of_Residence
where mother_race.Mothers_Single_Race = father_race.Fathers_Single_Race

select mother_race.County_of_Residence, mother_race.Births, mother_race.Mothers_Single_Race, father_race.Fathers_Single_Race, Congenital_abnormalities.Congenital_Abnormality_Checked_Desc
from `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race` as mother_race
LEFT JOIN `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities` AS Congenital_abnormalities
ON mother_race.County_of_Residence=Congenital_abnormalities.County_of_Residence  
left join `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_father_race` as father_race
on father_race.County_of_Residence = Congenital_abnormalities.County_of_Residence
Where not mother_race.Mothers_Single_Race = father_race.Fathers_Single_Race

--We can infer that both pure race children and mixed race children have similar chances of having a congenital abnormalities. In this population, we can say that the race of the child may not be related to the child having congenital abnormalities.
