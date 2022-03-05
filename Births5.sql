select mother_race.County_of_Residence,mother_race.Births, mother_race.Mothers_Single_Race, father_race.Fathers_Single_Race 
from `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race` as mother_race
left join `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_father_race` as father_race
ON mother_race.County_of_Residence=father_race.County_of_Residence 
where not mother_race.Mothers_Single_Race = father_race.Fathers_Single_Race

--There are a total of 125527 mixed race children born.
