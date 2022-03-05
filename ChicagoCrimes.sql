--Which year generally has the greatest number of assault crimes?

SELECT
  year,
  month,
  incidents
FROM (
  SELECT
    year,
    EXTRACT(MONTH
    FROM
      date) AS month,
    COUNT(1) AS incidents,
    RANK() OVER (PARTITION BY year ORDER BY COUNT(1) DESC) AS ranking
  FROM
    `bigquery-public-data.chicago_crime.crime`
  WHERE
    primary_type = 'ASSAULT'
    AND year <= 2016
  GROUP BY
    year,
    month )
WHERE
  ranking = 1
ORDER BY
  year DESC

--The assault crimes suddenly observes a huge increase in the year 2012.
