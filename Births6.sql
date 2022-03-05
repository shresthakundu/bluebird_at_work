--What is the distribution of the mother's race when atleast one maternal morbidity is checked?

select mother_race.Mothers_Single_Race, COUNT(mother_race.Mothers_Single_Race) AS mother_race
from `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race` as mother_race
left join `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity` as maternal_morbidity
ON mother_race.County_of_Residence=maternal_morbidity.County_of_Residence 
where maternal_morbidity.Maternal_Morbidity_Desc = "At least one checked"
GROUP BY 1
ORDER BY 2

--It can be inferred from the results that Asians, Mixed race, Black or African American and White women are more likely to have a maternal morbidity than American Indians or Native Hawaiians.
