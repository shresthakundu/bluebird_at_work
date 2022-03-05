--How many narcotics convicts were arrested?

SELECT date, primary_type, description, location_description, arrest
FROM `bigquery-public-data.chicago_crime.crime` as crime
where crime.primary_type = "NARCOTICS"

--99.4% of the narcotics culprits got arrested.
