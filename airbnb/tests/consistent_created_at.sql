SELECT
    *
FROM
    {{ ref('dim_listings_cleansed') }} L
  JOIN {{ ref('fct_reviews') }} R
  USING(LISTING_ID)
WHERE R.REVIEW_DATE < L.CREATED_AT
LIMIT 1