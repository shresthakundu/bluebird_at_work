--What categories of crime exhibited the greatest year-over-year increase between 2015 and 2016?

SELECT
  primary_type,
  description,
  COUNTIF(year = 2015) AS arrests_2015,
  COUNTIF(year = 2016) AS arrests_2016,
  FORMAT('%3.2f', (COUNTIF(year = 2016) - COUNTIF(year = 2015)) / COUNTIF(year = 2015)*100) AS pct_change_2015_to_2016
FROM
  `bigquery-public-data.chicago_crime.crime`
WHERE
  arrest = TRUE
  AND year IN (2015,
    2016)
GROUP BY
  primary_type,
  description
HAVING
  COUNTIF(year = 2015) > 100
ORDER BY
  (COUNTIF(year = 2016) - COUNTIF(year = 2015)) / COUNTIF(year = 2015) DESC

--Public Peace violation has observed the highest increment from the year 2015 to year 2016.
