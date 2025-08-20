-- tests/consistent_created_at.sql

SELECT fct.review_id,
       fct.listing_id,
       fct.review_date,
       dim.created_at
FROM {{ ref('fct_reviews') }} fct
JOIN {{ ref('dim_listings_cleansed') }} dim
ON fct.listing_id = dim.listing_id
WHERE fct.review_date < dim.created_at
