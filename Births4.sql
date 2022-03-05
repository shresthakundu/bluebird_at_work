select Source_of_Payment, count(Source_of_Payment) as Number_of_payments
from `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_payment`
group by Source_of_Payment

The distribution among payment options are almost similar. They are all within 22%-24% of the distribution.
